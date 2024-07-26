Instance: EjBundESAVI
Description: "Ejemplo de agrupador para datos de paciente y medicamentos"
InstanceOf: BundleESAVI
Usage: #example

* id = "BundESAVI"

* identifier.value = "BundESAVI1"
* type = #transaction
* timestamp = "2024-07-26T14:15:00-03:00"

* entry[0].fullUrl = "urn:uuid:d9c4b1ea-b9c9-4f52-acbe-e314fa8a825c"
* entry[=].resource = Ejemplo1DHIS2
* entry[=].request.url = "QuestionnaireResponse/"
* entry[=].request.method = #POST

* entry[+].fullUrl = "urn:uuid:8a7b4900-3861-4849-b36f-ad1ec3c46a2f"
* entry[=].resource = EjemploSimple1
* entry[=].request.url = "QuestionnaireResponse/"
* entry[=].request.method = #POST

