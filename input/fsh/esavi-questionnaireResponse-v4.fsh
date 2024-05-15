Profile:        ESAVIQuestionnaireResponse
Parent:         QuestionnaireResponse
Id:             ESAVIQuestionnaireResponse
Title:          "Respuesta de Cuestionario ESAVI"
Description:    "Perfil con los elementos mínimos a considerar para generar la respuesta al cuestinario de ESAVI de la OPS"

* identifier 1..1 MS 
* identifier.value 1..1 MS
* identifier ^short = "Identificador único para este set de respuestas"
* identifier ^definition = "Identificador único que será asignado a este set de respuestas, basado en un UUID"
* identifier.system ^short = "Namespace del valor de identificación. http://ops.org/esavi/CodIsoPaís o  http://ops.org/esavi-CodPais/CodOrg o http://ops.org/esavi-CodPais/CodPais-CodOrg"
* identifier.system ^definition = "Identifica la URL sobre la cual se describe el set de valores que es único. Sistem único para cada país en donde se genera la repesta"
* identifier.value ^short = "Valor del identificador único. Número de Caso en UUID"
* identifier.value ^definition = "Valor del identificador único. Número de Caso en UUID"

* questionnaire 1..1 MS
* questionnaire ^short = "Recurso Cuestionario al cual las respuestas hacen referencia"
* questionnaire ^definition = "El cuestionario ESAVI se define como ejemplo en esta guía. Debe ser referenciado"
* questionnaire ^comment = "Deb contener la URL Canónica del Questionario "
* questionnaire = "https://paho.org/fhir/esavi/Questionnaire/CuestionarioESAVI"
 
* status MS
* status ^short = "Estado en el cual se encuentra la respuesta."
* status ^definition = "El estado para los formularios ESAVI deben estar siempre en respuesta completed"
* status from  http://hl7.org/fhir/ValueSet/questionnaire-answers-status
* status ^binding.description = "Se usará In-progress | completed"
//* status = #completed

* authored 1..1 MS
* authored ^short = "Fecha llenado Ficha o Fecha Notificación o Fecha Repositorio Nacional"
* authored ^definition = "Fecha/hora en la cual las respuestas fueron llenadas como definitivas. En orden de preferecia: Fecha Llenado Ficha --> FEcha Notificación --> Fecha Repositorio Nacional "
* authored ^comment = " En Orden de Preferencia usar el  linkid fechaLlenadoFicha si no fechaNotificacion y de no contar con ninguno de los ateriores fechaRepoNacional "

* item 1..* MS
* item ^short = "Grupos, subgrupos y preguntas a responder basadas en el Questionario"
* item ^definition = "Grupos y preguntas. Las respuestas estan basadas en el cuestionario deben seguir linkId y tipo de datos"
* item ^comment = "Las respuestas deben contar con el mismo linkId y tipo de datos del Questionnaire, al igual como deben respetar las restricciones generadas tanto para habilitar la respuesta, validar la respuesta o terminologías usadas"

