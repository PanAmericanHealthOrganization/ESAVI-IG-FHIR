Profile:        ESAVIQuestionnaireResponseProf
Parent:         QuestionnaireResponse
Id:             esaviResponse
Title:          "ESAVI Respuesta Cuestionario"
Description:    "Perfil con los elementos mínimos a considerar para generar la respuesta al cuestinario de ESAVI de la OPS"


* identifier 0..1 
* identifier ^short = "Identificador único para este set de respuestas"
* identifier ^definition = "Identificador único que será asignado a este set de respuestas, basado en un UUID"
* identifier.system ^short = "Namespace del valor de identificación "
* identifier.system ^definition = "Identifica la URL sobre la cual se describe el set de valores que es único"
* identifier.value ^short = "Valor del identificador único "
* identifier.value ^definition = "Valor único de identificación basado en un UUID"

* questionnaire 1..1 MS
* questionnaire ^short = "Recurso Cuestionario al cual las respuestas hacen referencia"
* questionnaire ^definition = "El cuestionario ESAVI se define como ejemplo en esta guía. Debe ser referenciado"
* questionnaire ^comment = "Deb contener la URL Canónica del Questionario "
 
* status MS
* status ^short = "Estado en el cual se encuentra la respuesta"
* status ^definition = "El estado para los formularios ESAVI deben estar siempre en respuesta completed"
* status from  http://hl7.org/fhir/ValueSet/questionnaire-answers-status
* status = #completed

* authored ^short = "Fecha en la cual se concluyo el formulario"
* authored ^definition = "Fecha/hora en la cual las respuestas fueron llenadas como definitivas"

* author 1..1 MS
* author ^short = "Organización que recibió y registro las respuestas"
* author ^definition = "Organización responsable de recibir las respuestas, registrarlas y agregarlas al sistema"
* author.reference ^short = "Referencia al recurso del autorOrganizacion  del formulario de respuestas"
* author.reference ^definition = "Referencia a la ubicación del  recurso del autorOrganizacion del formulario de respuestas"
* author.display ^short = "Texto alternativo al recurso"
* author.display ^definition = "Texto plano narrativo que identifica el recurso adicional a la referencia de este"

* source 1..1 MS
* source ^short = "Profesional que recabó la información del formulario"
* source ^definition = "Profesional responsable de recibir las respuestas, para volcarlas en el formulario"
* source.reference ^short = "Referencia al recurso del soucePractitioner  del formulario de respuestas"
* source.reference ^definition = "Referencia a la ubicación del  recurso del sourcePractitoner del formulario de respuestas"
* source.display ^short = "Texto alternativo al recurso"
* source.display ^definition = "Texto plano narrativo que identifica el recurso adicional a la referencia de este"








