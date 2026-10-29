import groovy.json.JsonOutput

def models = ['Sandbox.QLBasic', 'Sandbox.QLInvalid']
def results = project.read {
  models.collect { modelName ->
    def model = mops.lookup.requireModel(modelName)
    def questions = []
    def conditionals = []
    def visitItems
    visitItems = { nodes ->
      nodes.each { node ->
        if (node.concept.qualifiedName == 'QuestionnaireLanguage.structure.Question') {
          questions << node
        } else if (node.concept.qualifiedName == 'QuestionnaireLanguage.structure.Conditional') {
          conditionals << node
          visitItems(node.children['items'])
        } else if (node.concept.qualifiedName == 'QuestionnaireLanguage.structure.Questionnaire') {
          visitItems(node.children['items'])
        }
      }
    }
    model.rootNodes.each { root ->
      if (root.concept.qualifiedName == 'QuestionnaireLanguage.structure.Questionnaire') visitItems([root])
    }

    def diagnostics = []
    def reported = new HashSet()
    def report = { String code, String id, String message ->
      def key = [code, id, message].join('|')
      if (reported.add(key)) diagnostics << [code: code, id: id, message: message]
    }
    def firstById = new LinkedHashMap()
    questions.each { question ->
      def id = question.properties['id']?.toString()
      if (firstById.containsKey(id)) report('duplicate', id, "Duplicate question identifier: ${id}")
      else firstById[id] = question
      def type = question.properties['type']?.toString()
      if (!(type in ['boolean', 'string', 'integer', 'decimal', 'money', 'date'])) {
        report('type', id, "Unknown question type: ${type}")
      }
    }

    def infer
    infer = { expression ->
      if (expression == null) return [type: 'invalid', refs: []]
      def concept = expression.concept.qualifiedName
      if (concept == 'QuestionnaireLanguage.structure.QuestionReference') {
        def target = expression.references['question']?.targetNode
        if (target == null) {
          report('unresolved', null, 'Unresolved native QuestionReference')
          return [type: 'invalid', refs: []]
        }
        return [type: target.properties['type']?.toString() ?: 'invalid', refs: [target.properties['id']?.toString()]]
      }
      if (concept.endsWith('.NumberLiteral')) {
        def value = expression.properties['value']?.toString() ?: '0'
        return [type: value ==~ /-?\d+/ ? 'integer' : 'decimal', refs: []]
      }
      if (concept.endsWith('.StringLiteral')) {
        def value = expression.properties['value']?.toString() ?: ''
        return [type: value ==~ /\d{4}-\d{2}-\d{2}/ ? 'date' : 'string', refs: []]
      }
      if (concept.endsWith('.TrueLiteral') || concept.endsWith('.FalseLiteral')) return [type: 'boolean', refs: []]
      if (concept.endsWith('.DateLiteral')) return [type: 'date', refs: []]

      def suffixes = [
        PlusExpression: '+', MinusExpression: '-', MulExpression: '*', DivExpression: '/',
        GreaterExpression: '>', GreaterEqualsExpression: '>=', LessExpression: '<', LessEqualsExpression: '<=',
        EqualsExpression: '==', NotEqualsExpression: '!=', LogicalAndExpression: '&&',
        LogicalOrExpression: '||', LogicalNotExpression: '!'
      ]
      def operator = suffixes.find { suffix, symbol -> concept.endsWith('.' + suffix) }
      if (operator == null) {
        report('type', null, "Unsupported native expression: ${concept}")
        return [type: 'invalid', refs: []]
      }
      def symbol = operator.value
      def operands = concept.endsWith('.LogicalNotExpression')
        ? [expression.child['expr']]
        : [expression.child['left'], expression.child['right']]
      def inferred = operands.collect { infer(it) }
      def types = inferred.collect { it.type }
      def refs = inferred.collectMany { it.refs }
      def type = 'invalid'
      def numeric = ['integer', 'decimal', 'money']
      def compatible = types.size() == 2 && (types[0] == types[1] || types.every { it in numeric })
      if (symbol == '!' && types == ['boolean']) type = 'boolean'
      else if (symbol in ['&&', '||'] && types == ['boolean', 'boolean']) type = 'boolean'
      else if (symbol in ['==', '!=', '<', '<=', '>', '>='] && compatible) type = 'boolean'
      else if (symbol in ['+', '-', '*', '/'] && types.size() == 2 && types.every { it in numeric }) {
        type = symbol == '/' ? 'decimal' : types.contains('money') ? 'money' : types.contains('decimal') ? 'decimal' : 'integer'
      }
      if (type == 'invalid') report('type', null, "Invalid native operands for ${symbol}: ${types.join(', ')}")
      [type: type, refs: refs]
    }

    conditionals.each { conditional ->
      def result = infer(conditional.child['condition'])
      if (result.type != 'boolean') report('type', null, 'Conditional expression must be boolean')
    }
    questions.each { question ->
      def expressions = question.children['computed']
      if (expressions.size() > 1) report('type', question.properties['id']?.toString(), 'A computed question has more than one expression')
      if (!expressions.isEmpty()) {
        def result = infer(expressions[0])
        def expected = question.properties['type']?.toString()
        if (!(result.type == expected || expected == 'decimal' && result.type == 'integer')) {
          report('type', question.properties['id']?.toString(), "Computed result is ${result.type}, expected ${expected}")
        }
      }
    }

    def computed = questions.findAll { !it.children['computed'].isEmpty() }.collectEntries {
      [(it.properties['id']?.toString()): it]
    }
    def state = [:]
    def cycles = new HashSet()
    def dependencies
    dependencies = { expression ->
      if (expression == null) return []
      if (expression.concept.qualifiedName == 'QuestionnaireLanguage.structure.QuestionReference') {
        def target = expression.references['question']?.targetNode
        return target == null ? [] : [target.properties['id']?.toString()]
      }
      expression.children.collectMany { child -> dependencies(child) }
    }
    def visitCycle
    visitCycle = { String id, List trail ->
      if (state[id] == 2) return
      if (state[id] == 1) {
        def start = trail.indexOf(id)
        def cycle = (start < 0 ? trail : trail.subList(start, trail.size())) + [id]
        def key = cycle.unique().sort().join('|')
        if (cycles.add(key)) report('cycle', id, "Computed dependency cycle: ${cycle.join(' -> ')}")
        return
      }
      state[id] = 1
      def expression = computed[id]?.children['computed']?.find()
      dependencies(expression).findAll { computed.containsKey(it) }.each { visitCycle(it, trail + [id]) }
      state[id] = 2
    }
    computed.keySet().each { visitCycle(it, []) }
    [model: modelName, diagnostics: diagnostics, questionCount: questions.size(), conditionalCount: conditionals.size()]
  }
}

def destination = new File('C:\\Sources\\mps-lwc25-ql-mops\\benchmark\\evidence\\native-check.json')
destination.setText(JsonOutput.prettyPrint(JsonOutput.toJson(results)) + '\n', 'UTF-8')
return [models: results, report: destination.absolutePath]
