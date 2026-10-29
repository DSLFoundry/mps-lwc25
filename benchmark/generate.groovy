import groovy.json.JsonOutput

def form = project.read {
  def roots = mops.lookup.requireModel('Sandbox.QLBasic').rootNodes
  def questionnaire = roots.find { it.concept.qualifiedName == 'QuestionnaireLanguage.structure.Questionnaire' }
  if (questionnaire == null) throw new IllegalStateException('No Questionnaire root in Sandbox.QLBasic')

  def expression
  expression = { node ->
    if (node == null) return null
    def concept = node.concept.qualifiedName
    if (concept == 'QuestionnaireLanguage.structure.QuestionReference') {
      return [ref: node.references['question']?.targetNode?.properties['id']]
    }
    if (concept.endsWith('.NumberLiteral')) {
      def raw = node.properties['value']
      return [literal: raw == null ? null : new BigDecimal(raw.toString())]
    }
    if (concept.endsWith('.StringLiteral')) return [literal: node.properties['value']]
    if (concept.endsWith('.TrueLiteral')) return [literal: true]
    if (concept.endsWith('.FalseLiteral')) return [literal: false]
    if (concept.endsWith('.DateLiteral')) {
      def year = node.properties['yyyy'].toString().padLeft(4, '0')
      def month = node.properties['mm'].toString().padLeft(2, '0')
      def day = node.properties['dd'].toString().padLeft(2, '0')
      return [literal: "${year}-${month}-${day}"]
    }
    def operators = [
      PlusExpression: '+', MinusExpression: '-', MulExpression: '*', DivExpression: '/',
      GreaterExpression: '>', GreaterEqualsExpression: '>=', LessExpression: '<', LessEqualsExpression: '<=',
      EqualsExpression: '==', NotEqualsExpression: '!=', LogicalAndExpression: '&&',
      LogicalOrExpression: '||', LogicalNotExpression: '!'
    ]
    def op = operators.find { suffix, value -> concept.endsWith('.' + suffix) }
    if (op != null) {
      def args = concept.endsWith('.LogicalNotExpression')
        ? [expression(node.child['expr'])]
        : [expression(node.child['left']), expression(node.child['right'])]
      return [op: op.value, args: args]
    }
    throw new IllegalArgumentException("Unsupported native QL expression: ${concept}")
  }

  def items
  items = { nodes ->
    nodes.collect { node ->
      if (node.concept.qualifiedName == 'QuestionnaireLanguage.structure.Conditional') {
        return [condition: expression(node.child['condition']), items: items(node.children['items'])]
      }
      if (node.concept.qualifiedName == 'QuestionnaireLanguage.structure.Question') {
        def result = [id: node.properties['id'], label: node.properties['label'], type: node.properties['type']]
        def exprs = node.children['computed']
        if (!exprs.isEmpty()) result.computed = expression(exprs[0])
        return result
      }
      throw new IllegalArgumentException("Unsupported native QL item: ${node.concept.qualifiedName}")
    }
  }
  [name: questionnaire.properties['name'], items: items(questionnaire.children['items'])]
}

def destination = new File('C:\\Sources\\mps-lwc25-ql-mops\\benchmark\\generated-form.json')
destination.parentFile.mkdirs()
destination.setText(JsonOutput.prettyPrint(JsonOutput.toJson(form)) + '\n', 'UTF-8')
return [generated: destination.absolutePath, rootCount: 1, itemCount: form.items.size()]
