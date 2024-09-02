Instance: SexOptionSetToAdminGender
InstanceOf: ConceptMap
Usage: #definition
* status = #draft
* sourceCanonical = "http://paho-dhis2.org/"
* targetCanonical = "http://hl7.org/fhir/administrative-gender"
* group[0].element[0].code = #1
* group[=].element[=].target.code = #male
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #2
* group[=].element[=].target.code = #female
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #3
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #equivalent