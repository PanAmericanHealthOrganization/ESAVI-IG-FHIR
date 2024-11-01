Profile:        BundleESAVI
Parent:         Bundle
Id:             BundleESAVI
Title:          "Bundle Transacción de gupos de notificaciones"
Description:    "Este Perfil describe como debe ser el recurso Bundle que permite transportar una serie de notificaciones en bloque"
// esperar que se defina el caso de uso opara daber que operacion
* identifier MS

* identifier 0..1
* identifier ^short = "Identificador para el Bundle"
* identifier ^definition = "Un identificador  para el paquete ESAVI."



* type MS
* type 1..1
* type from http://hl7.org/fhir/ValueSet/bundle-type
* type ^short = "Document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection, en nuestro caso se fuerza a collection"
* type ^definition = "Indica la finalidad de este paquete, es decir, cómo se va a utilizar."

* type = #transaction

* timestamp 1..1
* timestamp MS
* timestamp ^short = "Hora en la cual cual fue ensamblado el Bundle en formato YYYY-MM-DDThh:mm:ss.sss+zz:zz"
* timestamp ^definition = "La fecha/hora en que se ensambló el paquete, es decir, cuando se colocaron los recursos en el paquete"



* entry and entry.resource MS
* entry ^short = "Recursos Contenidos en el Bundle, que corresponden a Notificaciones ESAVI"
  * fullUrl 0..1 MS
    * ^short = "URI para el recurso (Absoluta o para UUID u OID)"
  * resource 1..1 MS
  * resource only ESAVIQuestionnaireResponse
  * request 1..1 MS
    * ^short = "Método para servidor"
    * method = #POST

