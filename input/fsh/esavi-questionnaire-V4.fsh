Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control


///////////////////////Información instancia//////////////////////////
Instance: EjemploQuestionnaireEsavi 
Title: "Ejemplo Cuestionario 4"
Description: "Ejemplo de cuestionario para responder"
InstanceOf: Questionnaire
Usage: #example

///////////////////////*****************************//////////////////////////


* status = #draft
///////////////////////*****************************//////////////////////////
//// extension para respuesta condicionada de fecha para fechaConsulta   /////
///////////////////////*****************************//////////////////////////

/*
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaCon"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Fecha de Consulta no sea menor que la de nacimiento" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaConsulta').answer.where(value >= item.where(linkId='datosVacunadoCaso').item.where(linkId='datosPaciente').item.where(linkId='fechaNacimiento').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaConsulta').answer.value"
//  


/// extension para respuesta condicionada de fecha para fechaNotificacion ////

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaNot"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de Notificación no sea menor que la fecha de Consulta" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaConsulta').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaNotificacion').answer.value"
// 
///////////////////////****************************
///// extension para respuesta condicionada de fechaNotificacion 2 ///////////
///////////////////////****************************
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaNot2"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de notificción no sea menor que la de nacimiento" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer.where(value >= item.where(linkId='datosVacunadoCaso').item.where(linkId='datosPaciente').item.where(linkId='fechaNacimiento').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaNotificacion').answer.value"

///////////////////////****************************
/// extension para respuesta condicionada de fecha para fechaLlenadoFicha ////
///////////////////////***************************
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha no sea menor que la fecha de Consulta" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaConsulta').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"
 
///////////////////////****************************
// extension para respuesta condicionada de fecha para fechaLlenadoFicha 2  //
///////////////////////****************************
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha2"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha no sea menor que la fecha de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"


///////////////////////***************************
/////// extension para respuesta condicionada de fechaLlenadoFicha 3  ////////
///////////////////////***************************

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha3"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de Llenado de Ficha no sea menor que la de nacimiento" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='datosNotificacion').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosVacunadoCaso').item.where(linkId='datosPaciente').item.where(linkId='fechaNacimiento').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"

///////////////////////***************************
//extension para respuesta condicionada de fecha para fechaAlmacenaRepNacional (JORGE)// 
///////////////////////***********************

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaAlmacenaRepNacional"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha en Repositorio Nacional sea mayor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaRepoNacional').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaRepoNacional').answer.value"

// extension para respuesta condicionada de fecha para fechaLlenadoFicha OK ///

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaLlenadoFicha"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de Ficha sea mayor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer.where(value >= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaLlenadoFicha').answer.value"
 

// extension para respuesta condicionada de fecha para fechaSintomasCovid19 OK//

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaSitomasCovid19"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de sintomas de Covid 19 no sea menor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaSintomasCovid19').answer.where(value <= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaNotificacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaSintomasCovid19').answer.value"
 


// extension para respuesta condicionada de fecha para fechaTomaMuestraCovid19 OK
 

* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaTomaMuestraCovid19"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de llenado de toma de muestra de Covid 19 no sea menor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesSarsCov2').item.where(linkId='fechaTomaMuestraCovid19').answer.where(value <= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaLlenadoFicha').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaTomaMuestraCovid19').answer.value"
 
// extension para respuesta condicionada de fecha para fechaTomaMuestraCovid2 OK
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

/////// extension para respuesta condicionada de fecha para fechaPartoESAVI OK///////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaParto"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha departo no sea menor que la  fecha de ultima Regla" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='registroESAVI').item.where(linkId='antecedentesEmbarazoESAVI').item.where(linkId='fechaPartoESAVI').answer.where(value >= item.where(linkId='registroESAVI').item.where(linkId='antecedentesEmbarazoESAVI').item.where(linkId='fechaUltimaMenstruacionESAVI').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaPartoESAVI').answer.value"
 

/////// extension para respuesta condicionada de fecha para fechaParto OK ///////
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaParto2"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha departo no sea menor que la  fecha de ultima Regla" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesEmbarazo').item.where(linkId='fechaParto').answer.where(value >= item.where(linkId='antecedentesMedicos').item.where(linkId='antecedentesEmbarazo').item.where(linkId='fechaUltimaMenstruacion').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='fechaParto').answer.value"
*/

///////////////////////*****************************//////////////////////////
// extension para respuesta condicionada de fecha para fechaAlmacenaRepOPS 
///////////////////////*****************************//////////////////////////
/*
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint" 
* extension[=].extension[0].url = "key"
* extension[=].extension[=].valueId = "ExFechaHoraVacunacion"

* extension[=].extension[+].url = "severity"
* extension[=].extension[=].valueCode = #warning 

* extension[=].extension[+].url = "human"
* extension[=].extension[=].valueString = "Control de que la fecha de vacunacion no sea mayor que las otras fechas de Notificación" 

* extension[=].extension[+].url = "expression"
* extension[=].extension[=].valueString =  "item.where(linkId='registroVacunaCovidOtras').item.where(linkId='fechaHoraVacunacion').answer.where(value <= item.where(linkId='datosNotificacionGeneral').item.where(linkId='fechas').item.where(linkId='fechaAlmacenaRepOPS').answer).exists()"

* extension[=].extension[+].url = "location"
* extension[=].extension[=].valueString = "item.item.where(linkId='registroVacunaCovidOtras').answer.value"
*/
* version = "0.85"
* name = "OPSQuestionarioESAVI"
* title = "Questionario para ESAVI de OPS"
* status = #draft
* date = "2022-03-17"
* publisher = "Organización Panamericana de la Salud"


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

* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/CodPaises"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "paisOrigen-Reg"
* item[=].item[=].item[=].text = "País en donde se originó el Registro"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreOrganizacionNotificadora"
* item[=].item[=].item[=].text = "Nombre de la institución del nivel local que realiza la notificación primaria."

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
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].text = "Codigo de la profesión del notificador"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo fechas //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].linkId = "fechas"
* item[=].item[=].text = "Fechas Administrativas (al menos una fecha es necesaria)"

* item[=].item[=].item[0].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaConsulta"
* item[=].item[=].item[=].text = "Fecha de la primera consulta al servicio de salud por causa del ESAVI"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = "2019-12-01"



* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaNotificacion"
* item[=].item[=].item[=].text = "Fecha en la que el sistema de vigilancia oficialmente se entera de la ocurrencia del evento."
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = 2019-12-01

* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaLlenadoFicha"
* item[=].item[=].item[=].text = "Fecha en la que el notificador finaliza el llenado de la ficha de notificación (si la ficha es electrónica, es la misma que fechaNotificacion)"
* item[=].item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].item[=].extension[=].valueDate = 2019-12-01

* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaRepoNacional"
* item[=].item[=].item[=].text = "Fecha registrada de llegada de la notificación a la base de datos del nivel nacional (si la ficha es electrónica, es la misma que fechaNotificacion)"

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
* item[=].item.item[=].text = "Codigo Nivel Geográfico Subnacional de la Residencia Habitual de la Persona afectada por el ESAVI"

/////////////////////////////
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "nombreResidenciaHabitual"
* item[=].item.item[=].text = "Nombre Nivel Geográfico Subnacional de la Residencia Habitual de la Persona afectada por el ESAVI"

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
* item[=].text = "Antecedentes médicos identificados por el paciente"

//////////////////////////////////
* item[=].item[0].type = #boolean
* item[=].item[=].required = false
* item[=].item[=].linkId = "ensayoClinicoCovid19"
* item[=].item[=].text = "Consulta si participó en algún ensayo clínico para COVID-19"


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo antecedentesEnfermedadesPrevias //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesEnfermedadesPrevias"
* item[=].item[=].text = "Antecedentes médicos reportados" 

/////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionEnfPrevia"
* item[=].item[=].item[=].text = "Descripción de los problemas de salud previos en la persona afectada por el ESAVI con énfasis en comorbilidades o enfermedades concomitantes al evento adverso, eventos previos similares y eventos médicos relevantes para el evento de salud actual (si la enfermedad está codificada, es la descripción correspondiente al código)."

/////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/CodigoMedDRAEnfPreviaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMedDRAEnfPrevia"
* item[=].item[=].item[=].text = "Código MedDRA del antecedente médico"

/////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EnfermedadesPreviasCodificacionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otrosCodigosEnfPrevia"
* item[=].item[=].item[=].text = "Código CIE-10/CIE-11/Snomed del antecedente médico"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo antecedentesEventosAdversos //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
//* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesEventosAdversos"
* item[=].item[=].text = "Declaración de existencia de eventos adversos previos"

/////////////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "antecedentesAdvSimilar"
* item[=].item[=].item[=].text = "Antecedente de eventos adversos similares al actual"

////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "alergiaMedicamentos"
* item[=].item[=].item[=].text = "Antecedente de reacciones alérgicas a medicamentos"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "alergiaVacunas"
* item[=].item[=].item[=].text = "Antecedente de reacciones alérgicas a otras vacunas"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo antecedentesSarsCov2 //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesSarsCov2"
* item[=].item[=].text = "Antecedente de diagnóstico de infección por SARS-CoV-2"


//////////////////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "diagnosticoprevioSarsCov2"
* item[=].item[=].item[=].text = "Antecedente de diagnóstico de infección por SARS-CoV-2 (Si/No/No Sabe)"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "asintomaticoSars"
* item[=].item[=].item[=].text = "Diagnóstico de Covid-19 sin síntomas (Si/No/No Sabe)"

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
* item[=].item[=].item[=].text = "Tipo de confirmación de diagnóstico COVID-19"

//////////////////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaTomaMuestraCovid19"
* item[=].item[=].item[=].text = "Fecha en la cual se tomó la muestra para examen de COVID-19"






/////////////////////////////////////////////////////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "pacienteEmbarazada"
* item[=].item[=].text = "Estado de embarazo"

//////////////////////////////////
* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].text = "Estaba embarazada al momento de la vacuna?"

//////////////////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].text = "Estaba embarazada al momento del ESAVI?"



/////////////////////  Grupo antecedentesEmbarazo //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesEmbarazo"
* item[=].item[=].text = "Historia obstétrica o de embarazo"

///////////////////// Enable When
* item[=].item[=].enableWhen.question = "embarazadaMomentoVacuna"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true


/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaUltimaMenstruacion"
* item[=].item[=].item[=].text = "Fecha de la última menstruación de la Paciente"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaParto"
* item[=].item[=].item[=].text = "Fecha del parto, o fecha probable del parto (calculada)"





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
* item[=].item[=].text = "Antecedentes de medicamentos que el paciente consume al momento del ESAVI"


//////////////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreMedicamento"
* item[=].item[=].item[=].text = "Nombre del medicamento consumido de manera concomitante con la vacuna o relevante para el ESAVI, en texto libre (si está codificado, es la descripción del código)"

///////////////////// OK
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/SistemasDeCodificacionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "sistemaDeCodificacionParaNombreNormalizadoMedicamento"
* item[=].item[=].item[=].text = "Sistema de codificacion"

//////////////nombreFabricante OK
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreNormalizadoMedicamento"
* item[=].item[=].item[=].text = "Nombre del medicamento según lo reporta el notificador. Puede incluir nombre normalizado si el país no incluye un campo en el que se registre en texto libre el nombre del medicamento."



//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMedicamento"
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/CodigoMedicamentoVS"
* item[=].item[=].item[=].text = "Código WHODrug/SCT/CIE-11/ATC del medicamento consumido por el paciente"

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

/////////////////////Desea Nombre Normalizado
//* item[=].item[=].item[+].type = #boolean
//* item[=].item[=].item[=].required = false
//* item[=].item[=].item[=].linkId = "nombreNormalizado"
//* item[=].item[=].item[=].text = "¿Desea ingresar nombre normalizado?"


///////////////////// OK
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/SistemasDeCodificacionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "sistemaDeCodificacionParaNombreNormalizadoVacuna"
* item[=].item[=].item[=].text = "Sistema de codificacion"

//////////////nombreFabricante OK
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreNormalizadoVacuna"
* item[=].item[=].item[=].text = "Nombre de la vacuna según lo reporta el notificador. Puede incluir nombre normalizado si el país no incluye un campo en el que se registre en texto libre el nombre de la vacuna"


//////////////nombreVacuuna OK
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "identificadorVacuna"
* item[=].item[=].item[=].text = "Identificador correlativo de la vacuna"


///////////////////// OK
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/CodigoWhoVacunaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoVacunaWHODrug"
* item[=].item[=].item[=].text = "Código WHODrug de la vacuna"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo codigoVacunaOtro //////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/CodigoNoWhoVacunaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoVacunaOtro"
* item[=].item[=].item[=].text = "Código no WHODrug de la Vacuna"

//////////////nombreFabricante OK
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreFabricante"
* item[=].item[=].item[=].text = "Nombre del fabricante o titular del registro sanitario según como lo haya registrado el notificador"

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/CodigoWhoFabricanteVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoFabricanteWHODrug"
* item[=].item[=].item[=].text = "Nombre del fabricante o titular del registro sanitario registrado en algún estándar farmacéutico del país. Si hay más de uno se prefiere WHO Drug."

///////////////////// dosis de vacuna con valor maximo y mínimo

* item[=].item[=].item[+].type = #string
//* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/DosisVacunaVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].text = "Numero de la dosis"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "numeroLote"
* item[=].item[=].item[=].text = "Númer del Lote de la Vacuna administrada"

/////////////////////
* item[=].item[=].item[+].type = #date
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
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].text = "Nombre del vacunatorio"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaVacunacion"
* item[=].item[=].item[=].text = "Fecha de vacunación"

/////////////////////
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "horaVacunacion"
* item[=].item[=].item[=].text = "Hora de vacunación"


* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/DirOrgNotiVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoDireccionVacunatorio"
* item[=].item[=].item[=].text = "Código del nivel geográfico subnacional de la ubicación de la institución de salud en la que se administró la vacuna"

* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreDireccionVacunatorio"
* item[=].item[=].item[=].text = "Dirección completa de la institución en la que se administró la vacuna"

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
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaReconstitucionVacuna"
* item[=].item[=].item[=].text = "Fecha en la cual se reconstituyó la vacuna registrada"

/////////////////////
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "horaReconstitucionVacuna"
* item[=].item[=].item[=].text = "Hora en la cual se reconstituyó la vacuna registrada"


/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo registroESAVI //////////////////////////////////
* item[+].type = #group
* item[=].required = true
* item[=].linkId = "registroESAVI"
* item[=].text = "Registro de ESAVI desarrollado por el vacunado"

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo datosESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = true
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "datosESAVI"
* item[=].item[=].text = "Información del ESAVI y de su clasificación según gravedad"

//////////////////////////////////
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "nombreESAVI"
* item[=].item[=].item[=].text = "Nombre del ESAVI"

//////////////////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EsaviMedDRAVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].text = "Código MedDRA del Evento Adverso notificado"

/////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/EsaviOtroVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].text = "Código no MedDRA de la reacción adversa generada por la vacuna"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaESAVI"
* item[=].item[=].item[=].text = "Fecha de inicio del ESAVI referido por el paciente o identificado por el médico"

/////////////////////
* item[=].item[=].item[+].type = #time
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "horaESAVI"
* item[=].item[=].item[=].text = "Hora de inicio del ESAVI referido por el paciente o identificado por el médico"

/////////////////////
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "descripcionESAVI"
* item[=].item[=].item[=].text = "Descripción narrativa del ESAVI"

////*************nuevo grupo copiado de arriba pa no equivocarnos*/

/////////////////////  Grupo antecedentesEmbarazoESAVI //////////////////////////////////
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "antecedentesEmbarazoESAVI"
* item[=].item[=].text = "Datos relacionados con el estado de embarazo (al menos una fecha es necesaria)"

* item[=].item[=].enableWhen.question = "embarazadaMomentoVacuna"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].enableWhen.question = "embarazadaMomentoESAVI"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true


/////////////////////
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codigoEmbarazoDuranteESAVI"
* item[=].item[=].item[=].text = "Código consulta sobre la condición de embarazo al momento del ESAVI"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "fechaUltimaMenstruacionESAVI"
* item[=].item[=].item[=].text = "Fecha de la última menstruación de la Paciente"

///////////////////// Enable When
* item[=].item[=].item[=].enableWhen.question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

////XXXXXXXXXXXXXXXarriba abajo cambie true
/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaPartoESAVI"
* item[=].item[=].item[=].text = "Fecha del parto, o fecha probable del parto (calculada)"

///////////////////// Enable When
* item[=].item[=].item[=].enableWhen.question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

/////////////////////
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "codigoMonitoreoPosteriorVacunaESAVI"
* item[=].item[=].item[=].text = "Código consulta sobre si se monitoreó paciente una vez vacunado"

///////////////////// Enable When
* item[=].item[=].item[=].enableWhen.question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = false

/////////////////////////////////////////////////////////////////////////////////
/////////////////////  Grupo complicacionesEmbarazo //////////////////////////////////
* item[=].item[=].item[+].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "complicacionesEmbarazoESAVI"
* item[=].item[=].item[=].text = "Complicación del embarazo que se sospecha estuvo relacionada con la administración de la vacuna"


//
* item[=].item[=].item[=].item[+].linkId = "codigoTipoComplicacionESAVI"
* item[=].item[=].item[=].item[=].text = "Código tipo complicacion del embarazo durante el ESAVI"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ComplicacionEmbarazoVS"
* item[=].item[=].item[=].item[=].required = true

/////////////////////
* item[=].item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].item[=].required = true
* item[=].item[=].item[=].item[=].linkId = "nombreComplicacionEmbarazoESAVI"
* item[=].item[=].item[=].item[=].text = "Descripción de la Complicación durante el ESAVI"

////////////////////////////
* item[=].item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ComplicacionEmbarazoMedDRAVS"
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].linkId = "codigoMedDRAComplicacionEmbarazoESAVI"
* item[=].item[=].item[=].item[=].text = "Código MedDRA de la complicación del embarazo durante el ESAVI"

////////////////////
* item[=].item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ComplicacionEmbarazoOtroVS"
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].linkId = "otrosCodigosComplicacionEmbarazoESAVI"
* item[=].item[=].item[=].item[=].text = "Código SNOMED-CT/CIE-10/CIE-11 de la complicación del embarazo"

///**********nuevo grupo copiado de arriba pa no equivocarnos********/


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

* item[=].item[=].item[=].enableWhen.question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].enableWhen.question = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true


/////////////////////
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravMuerteFetal"
* item[=].item[=].item[=].text = "Muerte fetal"

* item[=].item[=].item[=].enableWhen.question = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerBoolean = true

* item[=].item[=].item[=].enableWhen.question = "embarazadaMomentoESAVI"
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
* item[=].item[=].text = "Desenlace ESAVI"


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

* item[=].item[=].item[=].enableWhen.question = "gravMuerte"
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
* item[=].item[=].required = false
* item[=].item[=].repeats = true
* item[=].item[=].linkId = "causalidadESAVI"
* item[=].item[=].text = "Información sobre la clasificación de causalidad"

/////////////////////
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaCausalidadESAVI"
* item[=].item[=].item[=].text = "Fecha de clasificación final del caso"

/////////////////////  s
//* item[=].item[=].item[+].type = #choice
//* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet///EsaviClasificaciónCausalidad"
//* item[=].item[=].item[=].required = true
//* item[=].item[=].item[=].linkId = "sistemaclasfcausalidadESAVI"
//* item[=].item[=].item[=].text = "Método de clasificación de causalidad del ESAVI"

////////////////*******************************
///////////////////// 
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/SistemaClasfCausalidadVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "sistemaClasfcausalidad"
* item[=].item[=].item[=].text = "Método de clasificación de causalidad"





/////////////////////ddd
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otroSistemaclasfcausalidad"
* item[=].item[=].item[=].text = "Otro sistema de clasificación de causalidad"
///////////////////// Enable When
* item[=].item[=].item[=].enableWhen.question = "sistemaClasfcausalidad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.system = "http://paho.org/esavi/CodeSystem/SistemaClasfCausalidadCS"
* item[=].item[=].item[=].enableWhen.answerCoding.code = #otro


/////////////////////ddd
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "clasificacioncausaESAVI"
* item[=].item[=].item[=].text = "Descripción de la clasificación de causalidad del ESAVI"

/////////////////////Causalidad AEFI
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ClasificacionDesenlaceWHOAEFIVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "clasificacionDeCausalidadWHOAEFI"
* item[=].item[=].item[=].text = "Clasificación de causalidad según la metodología WHO AEFI"

* item[=].item[=].item[=].enableWhen.question = "sistemaClasfcausalidad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.system = "http://paho.org/esavi/ValueSet/SistemaClasfCausalidadCS"
* item[=].item[=].item[=].enableWhen.answerCoding.code = #WHO-AEFI

/////////////////////UMC
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ClasificacionDesenlaceWHOUMCVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "clasificacionDeCausalidadWHOUMC"
* item[=].item[=].item[=].text = "Clasificación de causalidad según la metodología WHO UMC"

* item[=].item[=].item[=].enableWhen.question = "sistemaClasfcausalidad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.system = "http://paho.org/esavi/ValueSet/SistemaClasfCausalidadCS"
* item[=].item[=].item[=].enableWhen.answerCoding.code = #WHO-UMC

/////////////////////UMC
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://paho.org/esavi/ValueSet/ClasificacionDesenlaceNaranjoVS"
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "clasificacionDeCausalidadNaranjo"
* item[=].item[=].item[=].text = "Clasificación de causalidad según la metodología Naranjo"

* item[=].item[=].item[=].enableWhen.question = "sistemaClasfcausalidad"
* item[=].item[=].item[=].enableWhen.operator = #=
* item[=].item[=].item[=].enableWhen.answerCoding.code = #Naranjo
* item[=].item[=].item[=].enableWhen.answerCoding.system = "http://paho.org/esavi/ValueSet/SistemaClasfCausalidadCS"

//////////////Identificador vacuna OK
* item[=].item[=].item[+].type = #integer
* item[=].item[=].item[=].required = true
* item[=].item[=].item[=].linkId = "referenciaIdentificadorVacuna"
* item[=].item[=].item[=].text = "Identificador correlativo de la vacuna"