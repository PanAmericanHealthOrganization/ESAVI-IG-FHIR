Instance: CapacidadESAVI
InstanceOf: CapabilityStatement
Usage: #definition
* name = "RepOPS"
* title = "Repositorio de la OPS"
* status = #active
* date = "2024-05-04"
* description = "This statement defines the expected capabilities of systems wishing to conform to the OPS repository role."
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json
* rest.mode = #server

* rest.resource[+].type = #QuestionnaireResponse
* rest.resource[=].interaction.code = #read