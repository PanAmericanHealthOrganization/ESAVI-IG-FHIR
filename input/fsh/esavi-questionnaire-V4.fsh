Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control


///////////////////////Información instancia//////////////////////////
Instance: ejemploQuestionnaireEsavi4
Title: "Ejemplo Cuestionario 4"
Description: "Description con constraints"
InstanceOf: Questionnaire
Usage: #example
///////////////////////*****************************//////////////////////////


* status = #draft
///////////////////////*****************************//////////////////////////
//// extension para respuesta condicionada de fecha para fechaConsulta   /////
///////////////////////*****************************//////////////////////////

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaCon"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de Consulta no sea menor que la de nacimiento" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaConsulta').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosPacienteCaso').item.where(linkId='datosPaciente').item.where(linkId='fechaNacimiento').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaConsulta').answer.value"
//  

///////////////////////*****************************//////////////////////////
/// extension para respuesta condicionada de fecha para fechaNotificacion ////
///////////////////////*****************************//////////////////////////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaNot"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de Notificación no sea menor que la fecha de Consulta" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaConsulta').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaNotificacion').answer.value"
// 
///////////////////////*****************************//////////////////////////
///// extension para respuesta condicionada de fechaNotificacion 2 ///////////
///////////////////////*****************************//////////////////////////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaNot2"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de noticiación no sea menor que la de nacimiento" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosPacienteCaso').item.where(linkId='datosPaciente').item.where(linkId='fechaNacimiento').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaNotificacion').answer.value"

///////////////////////*****************************//////////////////////////
/// extension para respuesta condicionada de fecha para fechaLlenadoFicha ////
///////////////////////*****************************//////////////////////////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha no sea menor que la fecha de Consulta" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaConsulta').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"
 
///////////////////////*****************************//////////////////////////
// extension para respuesta condicionada de fecha para fechaLlenadoFicha 2  //
///////////////////////*****************************//////////////////////////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha2"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha no sea menor que la fecha de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"


///////////////////////*****************************//////////////////////////
/////// extension para respuesta condicionada de fechaLlenadoFicha 3  ////////
///////////////////////*****************************//////////////////////////

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha3"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de Llenado de Ficha no sea menor que la de nacimiento" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosPacienteCaso').item.where(linkId='datosPaciente').item.where(linkId='fechaNacimiento').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"

///////////////////////*****************************/////////////////////////////
//extension para respuesta condicionada de fecha para fechaAlmacenaRepNacional //
///////////////////////*****************************/////////////////////////////

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaAlmacenaRepNacional"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha en Repositorio Nacional no sea menor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaAlmacenaRepNacional').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='FechaLlenadoFicha').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaAlmacenaRepNacional').answer.value"

///////////////////////*****************************//////////////////////////
// extension para respuesta condicionada de fecha para fechaAlmacenaRepOPS ///
///////////////////////*****************************//////////////////////////

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaAlmacenaRepOPS"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha en Repositorio OPS no sea menor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaAlmacenaRepNacional').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='FechaAlmacenaRepNacional').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaAlmacenaRepOPS').answer.value"
 

///////////////////////*****************************//////////////////////////
// extension para respuesta condicionada de fecha para fechaSintomasCovid19 //
///////////////////////*****************************//////////////////////////

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaSitomasCovid19"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de sintomas de Covid 19 no sea menor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaSintomasCovid19').answer.where(value <= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='FechaAlmacenaRepOPS').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaSintomasCovid19').answer.value"
 

///////////////////////*****************************//////////////////////////
// extension para respuesta condicionada de fecha para fechaTomaMuestraCovid19
///////////////////////*****************************////////////////////////// 

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaTomaMuestraCovid19"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de toma de muestra de Covid 19 no sea menor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaTomaMuestraCovid19').answer.where(value <= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='FechaAlmacenaRepOPS').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaTomaMuestraCovid19').answer.value"
 
///////////////////////*****************************//////////////////////////
// extension para respuesta condicionada de fecha para fechaTomaMuestraCovid2 
///////////////////////*****************************//////////////////////////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaTomaMuestraCovid192"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de toma de muestra de Covid 19 no sea menor que la  fechas de Sintomas de COVID 19" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaTomaMuestraCovid19').answer.where(value <= item.where(item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaSintomasCovid19').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaTomaMuestraCovid19').answer.value"

///////////////////////*****************************//////////////////////////
/////// extension para respuesta condicionada de fecha para fechaParto ///////
///////////////////////*****************************//////////////////////////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaParto"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha departo no sea menor que la  fecha de ultima Regla" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='registroESAVI').item.where(linkId='embarazoESAVI').item.where(linkId='fechaParto').answer.where(value >= item.where(linkId='registroESAVI').item.where(linkId='embarazoESAVI').item.where(linkId='fechaUltimaRegla').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaParto').answer.value"
 

///////////////////////*****************************//////////////////////////
// extension para respuesta condicionada de fecha para fechaAlmacenaRepOPS 
///////////////////////*****************************//////////////////////////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaHoraVacunacion"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de vacunacion   no sea mayor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='registroVacunaCovidOtras').item.where(linkId='fechaHoraVacunacion').answer.where(value <= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaAlmacenaRepOPS').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='registroVacunaCovidOtras').answer.value"
 
/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosNotificacionGeneral  //////////////////////////
* item[0].type = #group
* item[=].linkId = "datosNotificacionGeneral"
* item[=].text = "Datos Administrativos de la Notificación"
* item[=].required = true

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosNotificacion //////////////////////////////////
* item[=].item[0].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "datosNotificacion"
* item[=].item[=].text = "Datos de quién y donde se realiza la notificación"


* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreOrganizacionNotificadora"
* item[=].item[=].item[=].text = "Nombre Institución que Notifica"

* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/DirOrgNotiVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoDireccionOrganizacion"
* item[=].item[=].item[=].text = "Código del Nivel Geográfico Subnacional de la Ubicación de la Institución que Notifica"


* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreDireccionOrganizacion"
* item[=].item[=].item[=].text = "Nombre del Nivel Geográfico Subnacional de la Ubicación de la Institución que Notifica"


* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ProfesionalNotificadorVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].text = "Codigo de la profesión del notificador"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo fechas //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "fechas"
* item[=].item[=].text = "Fechas Administrativas"

* item[=].item[=].item[0].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaConsulta"
* item[=].item[=].item[=].text = "Fecha de la primera consulta al servicio de salud por causa del ESAVI"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2019-12-01"



* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaNotificacion"
* item[=].item[=].item[=].text = "Fecha en la que el sistema de vigilancia oficialmente se entera de la ocurrencia del evento."
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = 2019-12-01

* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaLlenadoFicha"
* item[=].item[=].item[=].text = "Fecha en la que el notificador finaliza el llenado de la ficha de notificación."
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = 2019-12-01

* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaRepoNacional"
* item[=].item[=].item[=].text = "Fecha registrada de llegada de la notificación a la base de datos del nivel regional."

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosVacunadoCaso //////////////////////////////////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "datosVacunadoCaso"
* item[=].text = "Datos Demográficos de Vacunado que ha generado ESAVI"


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosPaciente //////////////////////////////////
* item[=].item.type = #group
* item[=].item.required = true
* item[=].item.linkId = "datosPaciente"
* item[=].item.text = "Datos del Vacunado"

* item[=].item.item[0].type = #string
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "numeroCaso"
* item[=].item.item[=].text = "UUID que identifica el caso o notificación. Una persona puede tener más de una notificación."

* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "http://paho.org/esavi/ValueSet/Iso3166-1-N"
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "paisOrigen-Reg"
* item[=].item.item[=].text = "País en donde se originó el Registro"

////////////////////////////
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "idPaciente"
* item[=].item.item[=].text = "UUID de identificación"

/////////////////////////////
* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "http://paho.org/esavi/ValueSet/DirOrgNotiVS"
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "codigoResidenciaHabitual"
* item[=].item.item[=].text = "Codigo Nivel Goegráfico Subnacional de la Residencia Habitual de la Persona afectada por el ESAVI"

/////////////////////////////
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "nombreResidenciaHabitual"
* item[=].item.item[=].text = "Nombre Nivel Goegráfico Subnacional de la Residencia Habitual de la Persona afectada por el ESAVI"

////////////////////////////////
* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "sexoPaciente"
* item[=].item.item[=].text = "Sexo del vacunado."

////////////////
* item[=].item.item[+].type = #date
* item[=].item.item[=].required = true
* item[=].item.item[=].linkId = "fechaNacimiento"
* item[=].item.item[=].text = "Fecha de nacimiento del vacunado"
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueDate = 1900-01-01

//////////////
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "etnia"
* item[=].item.item[=].text = "Nombre de la etnia con la que se identifica el vacunado"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo antecedentesMedicos //////////////////////////////////
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "antecedentesMedicos"
* item[=].text = "Antecedentes médicos previos identificados por el paciente"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo antecedentesEnfermedadesPrevias //////////////////////////////////
* item[=].item[0].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesEnfermedadesPrevias"
* item[=].item[=].text = "Antecedentes médicos reportados" 

/////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionEnfPrevia"
* item[=].item[=].item[=].text = " Descripción de problemas de salud previos en la persona afectada por el ESAVI con énfasis en comorbilidades o enfermedades concomitantes al evento adverso, eventos previos similares y eventos médicos relevantes para el evento de salud actual."

/////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/CodigoMedraEnfPrevia"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMedraEnfPrevia"
* item[=].item[=].item[=].text = "Código MedDRA del antecedente médico"

/////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EnfermedadesPreviasCodificacionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otrosCodigosEnfPrevia"
* item[=].item[=].item[=].text = "Otro Código de los antecedentes de enfermedad notificada"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo antecedentesEventosAdversos //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesEventosAdversos"
* item[=].item[=].text = "Declaración de existencia de eventos adversos previos"

/////////////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "antecedentesAdvSimilar"
* item[=].item[=].item[=].text = "Antecedente de eventos adversos similares al actual"

////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "alergiaMedicamentos"
* item[=].item[=].item[=].text = "Antecedente de reacciones alérgicas a medicamentos"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "alergiaVacunas"
* item[=].item[=].item[=].text = "Antecedente de reacciones alérgicas a otras vacunas"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo antecedentesSarsCov2 //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesSarsCov2"
* item[=].item[=].text = "Antecedente de diagnóstico de infección por SARS-CoV-2"


//////////////////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "diagnosticoprevioSarsCov2"
* item[=].item[=].item[=].text = "Antecedente de diagnóstico de infección por SARS-CoV-2"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "asintomaticoSars"
* item[=].item[=].item[=].text = "Covid-19 asintomatico?"

//////////////////////////////////
* item[=].item[=].item[+].type = #dateTime
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaSintomasCovid19"
* item[=].item[=].item[=].text = "Fecha en que comenzó el primer signo y/o síntoma de COVID-19."

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ModoConfirmacionInfeccionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "tipoConfirmacionCovid19"
* item[=].item[=].item[=].text = "Tipo de confirmación de diagnóstico COVID.19"

//////////////////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaTomaMuestraCovid19"
* item[=].item[=].item[=].text = "Fecha en la cual se tomó la muestra para examen de COVID-19"

//////////////////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "ensayoClinicoCovid19"
* item[=].item[=].item[=].text = "Consulta si participó en algún ensayo clínico para COVID-19"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo embarazoESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "embarazoESAVI"
* item[=].item[=].text = "Datos relacionados con el estado de embarazo"

/////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codigoEmbarazoDuranteVacuna"
* item[=].item[=].item[=].text = "Código consulta sobre la condición de embarazo al vacunarse"

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codigoEmbarazoAlDesarrolloESAVI"
* item[=].item[=].item[=].text = "Código consulta sobre la condición de embarazo al desarrollar ESAVI"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaUltimaMenstruacion"
* item[=].item[=].item[=].text = "Fecha de la última menstruación de la Paciente"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaParto"
* item[=].item[=].item[=].text = "Fecha probable del parto"

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codigoMonitoreoPosteriorVacuna"
* item[=].item[=].item[=].text = "Código consulta sobre si se monitoreó paciente una vez vacunado"


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo antecedentesFarmacosVacunas //////////////////////////////////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "antecedentesFarmacosVacunas"
* item[=].text = "Antecedentes Farmacológicos"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo medicamento //////////////////////////////////
* item[=].item[0].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "medicamento"
* item[=].item[=].text = "Antecedentes de medicamentos que el paciente consume al momento de generar ESAVI"


//////////////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "NombreMedicamento"
* item[=].item[=].item[=].text = "Nombre del medicamento consumido de manera concomitante con la vacuna o relevante para el ESAVI, en texto libre"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/MedicamentoGenericoVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMedicamento"
* item[=].item[=].item[=].text = "Código WHODrug/SCT/ICD-11/ATC del medicamento consumido por el paciente"

//////////////////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreFormaFarmaceutica"
* item[=].item[=].item[=].text = "Nombre de la forma farmaceutica del medicamento"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/FormaFarmaceuticaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoFormaFarmaceutica"
* item[=].item[=].item[=].text = "Código de la forma farmaceutica del medicamento"

//////////////////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreViaAdministracion"
* item[=].item[=].item[=].text = "Nombre via de administración del medicamento"


//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ViaAdminMedicamentoVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoViaAdministracion"
* item[=].item[=].item[=].text = "Código Via administración del medicamento"



/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosVacunas //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "datosVacunas"
* item[=].item[=].text = "Datos de las vacunas administradas"

//////////////nombreVacuuna OK
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreVacuna"
* item[=].item[=].item[=].text = "Nombre de la vacuna administrada"

//////////////nombreVacuuna OK
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "identificadorVacuna"
* item[=].item[=].item[=].text = "Identificador correlativo de la vacuna"


///////////////////// OK
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EsaviCodigoWhoVacunaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoVacunaWHODrug"
* item[=].item[=].item[=].text = "Código WHODrug de la vacuna"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo codigoVacunaOtro //////////////////////////////////
* item[=].item[=].item[+].type = #group
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EsaviCodigoNoWhoVacunaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoVacunaOtro"
* item[=].item[=].item[=].text = "Código no WHODrug de la Vacuna"

//////////////nombreFabricante OK
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreFabricante"
* item[=].item[=].item[=].text = "Nombre del fabricante o titular del registro sanitario"

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EsaviCodigoWhoFabricanteVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoFabricanteWHODrug"
* item[=].item[=].item[=].text = "Código del fabricante o titular del registro sanitario"

///////////////////// dosis de vacuna con valor maximo y mínimo

* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/DosisVacunaVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codigoDosisVacuna"
* item[=].item[=].item[=].text = "Código de la dosis"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "numeroLote"
* item[=].item[=].item[=].text = "Númer del Lote de la Vacuna administrada"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaVencimientoVacuna"
* item[=].item[=].item[=].text = "Fecha de Vencimiento de vacuna"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreDiluyenteVacuna"
* item[=].item[=].item[=].text = "Nombre del Diluyente de la Vacuna"



/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "numeroLoteDiluyente"
* item[=].item[=].item[=].text = "Numero del lote del diluyente de la vacuna"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaVencimientoDiluyente"
* item[=].item[=].item[=].text = "Fecha de vencimiento del diluyente de la vacuna"


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosVacunacion //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "datosVacunacion"
* item[=].item[=].text = "Datos relacionados con el proceso de vacunación"

/////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/DirOrgNotiVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoDireccionVacunatorio"
* item[=].item[=].item[=].text = "Código Dirección del vacunatorio según código OPS"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreDireccionVacunatorio"
* item[=].item[=].item[=].text = "Nombre Dirección del vacunatorio según código OPS"

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ModoVerificacionVacunaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMecanismoVerificacion"
* item[=].item[=].item[=].text = "Código del mecanismo de verificación de vacuna colocada"


* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreOtroMecanismoVerificacion"
* item[=].item[=].item[=].text = "Descripción de otro mecanismo no considerado en los códigos"

/////////////////////
* item[=].item[=].item[+].type = #dateTime
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaHoraReconstitucionVacuna"
* item[=].item[=].item[=].text = "Fecha y hora en la cual se reconstituyó la vacuna registrada"


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo registroESAVI //////////////////////////////////
* item[+].type = #group
* item[=].required = true
* item[=].repeats = true
* item[=].linkId = "registroESAVI"
* item[=].text = "Registro de ESAVI desarrollado por el vacunado"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"

//////////////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreESAVI"
* item[=].item[=].item[=].text = "Nombre del ESAVI "

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EsaviMedraVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoEsaviMedDRA"
* item[=].item[=].item[=].text = "Código MedDRA del Evento Adverso notificado"

/////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EsaviOtroVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoEsaviOtro"
* item[=].item[=].item[=].text = "Código no Medra de la reacción adversa generada por la vacuna"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaHoraESAVI"
* item[=].item[=].item[=].text = "Fecha y hora de inicio del ESAVI referido por el paciente o identificado por el médico"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionESAVI"
* item[=].item[=].item[=].text = "Descripción narrativa del ESAVI"



/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo complicacionesEmbarazo //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "complicacionesEmbarazo"
* item[=].item[=].text = "Tipo de complicación del embarazo"

///////////////////// Enable When
* item[=].item[=].enableWhen.question = "embarazoDuranteVacuna"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerCoding.system = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].enableWhen.answerCoding.code = #1

//
* item[=].item[=].item[+].linkId = "codigoTipoComplicacion"
* item[=].item[=].item[=].text = "Código tipo complicacion del embarazo"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EsaviComplicacionEmbarazoVS"
* item[=].item[=].item[=].required = true

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionComplicacionEmbarazo"
* item[=].item[=].item[=].text = "Descripción de la Complicación"

////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ComplicacionEmbarazoMedraVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "complicacionEmbarazoMedra"
* item[=].item[=].item[=].text = "Código MedDRa de la complicación del embarazo"

////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ComplicacionEmbarazoOtroVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "complicacionEmbarazoOtro"
* item[=].item[=].item[=].text = "Código No MedDRa de la complicación del embarazo . Esto será discutido con equipo terminológico"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo gravedadESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "gravedadESAVI"
* item[=].item[=].text = "Determinación del estado de gravedad del ESAVI"

/////////////////////
* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "tipoGravedad"
* item[=].item[=].item[=].text = "¿ESAVI Grave?"



/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravMuerte"
* item[=].item[=].item[=].text = "Muerte"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravRiesgoVida"
* item[=].item[=].item[=].text = "Amenaza la vida al momento de la detección del ESAVI"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravDiscapacidad"
* item[=].item[=].item[=].text = "Genera discapacidad severa o permanente al momento de la detección"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravHospitalizacion"
* item[=].item[=].item[=].text = "Hospitalización o prolongación de la misma"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravAnomaliaCongenita"
* item[=].item[=].item[=].text = "Anomalía congénita"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravAborto"
* item[=].item[=].item[=].text = "Aborto"
* item[=].item[=].item[=].enableWhen.question = "embarazoDuranteVacuna"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.system = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].enableWhen.answerCoding.code = #1

//revisar****************************
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true


/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravMuerteFetal"
* item[=].item[=].item[=].text = "Muerte fetal"
* item[=].item[=].item[=].enableWhen.question = "embarazoDuranteVacuna"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.system = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].enableWhen.answerCoding.code = #1
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true



/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otrosEventosImportantes"
* item[=].item[=].item[=].text = "Otros Eventos considerados Médicamente Importantes"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].linkId = "otrosEventosImportantesTx"
* item[=].item[=].item[=].text = "Descripción de Otros Eventos medicamente importantes"
* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo desenlaceESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "desenlaceESAVI"
* item[=].item[=].text = "Desenlace Esavi"


/////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ClasificacionDesenlaceVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codDesenlaceESAVI"
* item[=].item[=].item[=].text = "Código Desenlace ESAVI"
 
/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaMuerte"
* item[=].item[=].item[=].text = "Fecha de muerte producida por posible ESAVI"
* item[=].item[=].item[=].enableWhen.question = "codDesenlaceESAVI"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #5

* item[=].item[=].item[=].enableWhen.question = "tipoGravedad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true


/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "autopsia"
* item[=].item[=].item[=].text = "Determinación si hubo o no Autopsia"
* item[=].item[=].item[=].enableWhen.question = "gravMuerte"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaNotificaMuerte"
* item[=].item[=].item[=].text = "Fecha en la cual se notifico la muerte del paciente al registro nacional"
* item[=].item[=].item[=].enableWhen.question = "gravMuerte"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaNotificaMuerteFetal"
* item[=].item[=].item[=].text = "Fecha en la cual se notifico la muerte del feto de paciente al registro nacional"
///////////////////// multiples condiciones
* item[=].item[=].item[=].enableWhen.question = "gravAborto"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].item[=].enableWhen.question = "gravMuerteFetal"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

///////////////////// multiples condiciones
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "autopsiaFetal"
* item[=].item[=].item[=].text = "Determinación si hubo o no Autopsia Fetal"
* item[=].item[=].item[=].enableWhen.question = "gravMuerteFetal"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "comentarios"
* item[=].item[=].item[=].text = "Comentarios adicionales en cuanto al cuadro ESAVI"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaInicioInvestigacion"
* item[=].item[=].item[=].text = "Fecha en la cual se inicia investigación"


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo causalidadESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "causalidadESAVI"
* item[=].item[=].text = "Información sobre la clasificación de causalidad"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaCausalidadESAVI"
* item[=].item[=].item[=].text = "Fecha de clasificación final del caso"

/////////////////////  s
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EsaviClasificaciónCausalidad"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "sistemaclasfcausalidadESAVI"
* item[=].item[=].item[=].text = "Método de clasificación de causalidad del ESAVI"

/////////////////////ddd
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "clasificacioncausaESAVI"
* item[=].item[=].item[=].text = "Método de clasificación de causalidad del ESAVI"

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ClasificacionDesenlaceVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "clasificacionDeCausalidad"
* item[=].item[=].item[=].text = "Clasificación de causalidad según la metodología WHO AEFI"

//////////////Identificador vacuna OK
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "referenciaIdentificadorVacuna"
* item[=].item[=].item[=].text = "Referencia al Identificador correlativo de la vacuna"