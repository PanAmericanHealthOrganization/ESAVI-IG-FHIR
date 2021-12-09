Instance: sdc-modular-name
InstanceOf: Questionnaire
Usage: #example
* extension[0].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-is-modular"
* extension[=].valueBoolean = true

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
* extension[=].valueString = "linkIdPrefix"

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
* extension[=].valueString = "person"

//constraint
* extension[+].extension[0].url = "key"
* extension[=].extension[=].valueString = "qcontact-1"
* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #error
* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Must have either first or last name"
* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString = "item.where(linkId=%linkIdPrefix+'1').exists() or item.where(linkId=%linkIdPrefix+'2').exists()"
* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='1').answer.value"
* extension[=].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint"

//
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* extension[=].valueExpression.name = "name"
* extension[=].valueExpression.language = #text/fhirpath
* extension[=].valueExpression.expression = "iif(%person.name.where(use='official').exists(),%person.name.where(use='official')[0],%person.name[0])"
//

* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-name"
* version = "2.8.0"
* name = "QuestionnaireSDCModularName"
* title = "Example sub-module Questionnaire for name"
* status = #draft
* experimental = true
* date = "2021-11-29T23:10:41+00:00"
* publisher = "HL7 International - FHIR Infrastructure Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/fiwg"
* description = "Example questionnaire module - Used to represent a patient or other human name as an example of a Questionnaire that can be referenced by other Questionnaires.  It is itself modular in that it relies on external element definitions"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* item[0].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "%name.prefix.where($this in ('Mr.'|'Miss'|'Mrs'|'Ms.'))[0]"

* item[=].linkId = "1"
* item[=].text = "Title"
* item[=].type = #string
* item[=].required = true
* item[=].answerOption[0].valueString = "Mr."
* item[=].answerOption[+].valueString = "Miss"
* item[=].answerOption[+].valueString = "Mrs."
* item[=].answerOption[+].valueString = "Ms."

* item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "%name.given[0]"
* item[=].linkId = "2"
* item[=].definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-question-library#Demographics.name.first"
* item[=].type = #string
* item[=].required = true

* item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
* item[=].extension.valueExpression.language = #text/fhirpath
* item[=].extension.valueExpression.expression = "%name.given[0]"
* item[=].linkId = "3"
* item[=].definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-question-library#Demographics.name.last"
* item[=].type = #string
* item[=].required = true