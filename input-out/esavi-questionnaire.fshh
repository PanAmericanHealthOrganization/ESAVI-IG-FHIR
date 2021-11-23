Profile: ESAVIQuestionario
Parent: Questionnaire
Id: ESAVIQuestionario
Description: "Estructura del cuestionario de notificaciones ESAVI_OPS"
* ^url = "https://ops.org/ESAVIQuestionario"
* ^status = #draft
* title MS
* title ^short = "Questionario de notificaciones ESAVI"
* title ^definition = "Questionario de notificaciones ESAVI"
* status = #active (exactly)
* status MS
* status ^short = "Valor fijo por defecto \"active\""
* status ^definition = "Valor fijo por defecto \"active\""
* item MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
    datosNotificacion 1..1 MS and
    datosPacienteCaso 1..1 MS //and
    //antecedentesMedicos 1..1 MS and
    //antecedentesFarmaVacunas 1..1 MS and
    //registroESAVI 1..1 MS and
    //registroVacunaCovidOtras 1..1 MS
* item[datosNotificacion].linkId = "Datos Notificacion" (exactly)
* item[datosNotificacion].linkId MS
* item[datosNotificacion].text 1..1 MS
* item[datosNotificacion].text ^short = "Datos de quién y donde se realiza la notificación"
* item[datosNotificacion].type = #group (exactly)
* item[datosNotificacion].type MS
* item[datosNotificacion].type ^short = "Valor Fijo \"group\""
* item[datosNotificacion].item MS
* item[datosNotificacion].item ^slicing.discriminator.type = #value
* item[datosNotificacion].item ^slicing.discriminator.path = "linkId"
* item[datosNotificacion].item ^slicing.rules = #open
* item[datosNotificacion].item contains
    orgNot 1..1 MS and
    direccionOrgNot 1..1 MS and
    profesionQuienNotifica 1..1 MS
* item[datosNotificacion].item[orgNot].linkId = "Organizacion Notificadora" (exactly)
* item[datosNotificacion].item[orgNot].linkId MS
* item[datosNotificacion].item[orgNot].text 1.. MS
* item[datosNotificacion].item[orgNot].text = "Nombre Organización que Notifica" (exactly)
* item[datosNotificacion].item[orgNot].text ^short = "Nombre Organización que Notifica"
* item[datosNotificacion].item[orgNot].type = #string (exactly)
* item[datosNotificacion].item[orgNot].type MS
* item[datosNotificacion].item[orgNot].type ^short = "Valor fijo \"string\""

* item[datosNotificacion].item[direccionOrgNot].linkId = "Dirección Organizacion Notificadora" (exactly)
* item[datosNotificacion].item[direccionOrgNot].linkId MS
* item[datosNotificacion].item[direccionOrgNot].text 1.. MS
* item[datosNotificacion].item[direccionOrgNot].text = "Dirección en formato de OPS de Organización que Notifica ESAVI" (exactly)
* item[datosNotificacion].item[direccionOrgNot].text ^short = "Dirección en formato de OPS de Organización que Notifica ESAVI"
* item[datosNotificacion].item[direccionOrgNot].type = #string (exactly)
* item[datosNotificacion].item[direccionOrgNot].type MS
* item[datosNotificacion].item[direccionOrgNot].type ^short = "Valor fijo \"string\""

* item[datosNotificacion].item[profesionQuienNotifica].linkId = "Profesion Notificador" (exactly)
* item[datosNotificacion].item[profesionQuienNotifica].linkId MS
* item[datosNotificacion].item[profesionQuienNotifica].text 1.. MS
* item[datosNotificacion].item[profesionQuienNotifica].text = "Profesión de quien notifica ESAVI" (exactly)
* item[datosNotificacion].item[profesionQuienNotifica].text ^short = "Profesión de quien notifica ESAVI"
* item[datosNotificacion].item[profesionQuienNotifica].type = #string (exactly)
* item[datosNotificacion].item[profesionQuienNotifica].type MS
* item[datosNotificacion].item[profesionQuienNotifica].type ^short = "Valor fijo \"string\""


/*
* item[Grupo_0].item[Pregunta_0-1].linkId = "1.2" (exactly)
* item[Grupo_0].item[Pregunta_0-1].linkId MS
* item[Grupo_0].item[Pregunta_0-1].text 1.. MS
* item[Grupo_0].item[Pregunta_0-1].text = "Consultas Portal WEB ¿Tiene alguna consulta sobre el portal web del paciente o la página web? [VERIFICACIÓN SUMATIVA]" (exactly)
* item[Grupo_0].item[Pregunta_0-1].text ^short = "Consultas Portal WEB ¿Tiene alguna consulta sobre el portal web del paciente o la página web? [VERIFICACIÓN SUMATIVA]"
* item[Grupo_0].item[Pregunta_0-1].type = #string (exactly)
* item[Grupo_0].item[Pregunta_0-1].type MS
* item[Grupo_0].item[Pregunta_0-1].type ^short = "Valor fijo \"string\""
* item[Grupo_0].item[Pregunta_0-2].linkId = "1.3" (exactly)
* item[Grupo_0].item[Pregunta_0-2].linkId MS
* item[Grupo_0].item[Pregunta_0-2].text 1.. MS
* item[Grupo_0].item[Pregunta_0-2].text = "Consultas Sesión Previa  ¿Tiene alguna consulta sobre la sesión anterior? [VERIFICACIÓN SUMATIVA]" (exactly)
* item[Grupo_0].item[Pregunta_0-2].text ^short = "Consultas Sesión Previa  ¿Tiene alguna consulta sobre la sesión anterior? [VERIFICACIÓN SUMATIVA]"
* item[Grupo_0].item[Pregunta_0-2].type = #string (exactly)
* item[Grupo_0].item[Pregunta_0-2].type MS
* item[Grupo_0].item[Pregunta_0-2].type ^short = "Valor fijo \"string\""
* item[Grupo_0].item[Pregunta_0-3].linkId = "1.4" (exactly)
* item[Grupo_0].item[Pregunta_0-3].linkId MS
* item[Grupo_0].item[Pregunta_0-3].text 1.. MS
* item[Grupo_0].item[Pregunta_0-3].text = "Comentarios ¿Tiene algún comentario sobre el proceso hasta ahora? ¿Le pareció amigable? ¿Alguna sugerencia? [VERIFICACIÓN SUMATIVA]" (exactly)
* item[Grupo_0].item[Pregunta_0-3].text ^short = "Comentarios ¿Tiene algún comentario sobre el proceso hasta ahora? ¿Le pareció amigable? ¿Alguna sugerencia? [VERIFICACIÓN SUMATIVA]"
* item[Grupo_0].item[Pregunta_0-3].type = #string (exactly)
* item[Grupo_0].item[Pregunta_0-3].type MS
* item[Grupo_0].item[Pregunta_0-3].type ^short = "Valor fijo \"string\""
* item[Grupo_0].item[Pregunta_0-4].linkId = "1.5" (exactly)
* item[Grupo_0].item[Pregunta_0-4].linkId MS
* item[Grupo_0].item[Pregunta_0-4].text 1.. MS
* item[Grupo_0].item[Pregunta_0-4].text = "RESUMEN ¿Logró recopilar alguno de los datos solicitados en el correo anterior?" (exactly)
* item[Grupo_0].item[Pregunta_0-4].text ^short = "RESUMEN ¿Logró recopilar alguno de los datos solicitados en el correo anterior?"
* item[Grupo_0].item[Pregunta_0-4].type = #string (exactly)
* item[Grupo_0].item[Pregunta_0-4].type MS
* item[Grupo_0].item[Pregunta_0-4].type ^short = "Valor fijo \"string\""


*/
