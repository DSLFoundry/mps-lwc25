import groovy.json.JsonOutput
import groovy.json.JsonSlurper

def generatedJson = project.read {
  def generated = mops.runtime.requireClass('Sandbox', 'Sandbox.QLBasic.GeneratedQuestionnaire')
  generated.getMethod('questionnaireJson').invoke(null).toString()
}

def form = new JsonSlurper().parseText(generatedJson)
if (!(form.name instanceof String) || !(form.items instanceof List) || form.items.isEmpty()) {
  throw new IllegalStateException('Native MPS generator returned an invalid questionnaire form')
}

def destination = new File('C:\\Sources\\mps-lwc25-ql-mops\\benchmark\\generated-form.json')
destination.parentFile.mkdirs()
destination.setText(JsonOutput.prettyPrint(JsonOutput.toJson(form)) + '\n', 'UTF-8')
return [generated: destination.absolutePath, provider: 'MPS native generator output', name: form.name, itemCount: form.items.size()]
