Alias: $PreguntasCS = http://paho.org/esavi/CodeSystem/PreguntasCS
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control
Alias: $GrupoEtnicoCS = http://paho.org/esavi/CodeSystem/GrupoEtnicoCS
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $RespuestaSiNoNosabeCS = http://paho.org/esavi/CodeSystem/RespuestaSiNoNosabeCS
Alias: $ModoConfirmacionInfeccionCS = http://paho.org/esavi/CodeSystem/ModoConfirmacionInfeccionCS
Alias: $ModoVerificacionVacunaCS = http://paho.org/esavi/CodeSystem/ModoVerificacionVacunaCS
Alias: $EventoAdversoVacunaCS = http://paho.org/esavi/CodeSystem/EventoAdversoVacunaCS
Alias: $ClasificacionDesenlaceCS = http://paho.org/esavi/CodeSystem/ClasificacionDesenlaceCS
Alias: $InvestigacionTipoCS = http://paho.org/esavi/CodeSystem/InvestigacionTipoCS

Instance: EsaviCuestionarioCompleto
InstanceOf: Questionnaire
Title: "Cuestionario ESAVI"
Description: "Cuestionario ESAVI"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire|2.7"
* url = "http://paho.org/esavi/notification/v2"
* identifier.use = #official
* identifier.system = "http://paho.org/esavi/questionnaire"
* identifier.value = "ESAVI2"
* version = "1"
* name = "ESAVI_Notification_Form_V2"
* title = "Cuestionario de Notificación ESAVI"
* status = #draft
* experimental = false
* date = "2021-10-03T03:00:00.000Z"
* publisher = "PAHO"
* description = "Cuestionario de Notificación de Eventos Adversos SARS COV2"
* purpose = "Notificacion de Eventos Adversos"
* copyright = "Public Domain"
* approvalDate = "2021-10-03"
* effectivePeriod.start = "2021-10-03T03:00:00.000Z"
* effectivePeriod.end = "2022-04-01T03:00:00.000Z"
* item[0].linkId = "PERSAF"
* item[=].code = $PreguntasCS#PERSAF "Información de la Persona Afectada"
* item[=].text = "Información de la Persona Afectada"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "PERSAF.NUMERO_CASO"
* item[=].item[=].code = $PreguntasCS#PERSAF.NUMERO_CASO "Número de Caso"
* item[=].item[=].text = "Número de Caso"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "PERSAF.APELLIDOS"
* item[=].item[=].code = $PreguntasCS#PERSAF.APELLIDOS "Apellidos"
* item[=].item[=].text = "Apellidos"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "PERSAF.NOMBRES"
* item[=].item[=].code = $PreguntasCS#PERSAF.NOMBRES "Nombres"
* item[=].item[=].text = "Nombres"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "PERSAF.NUMEROIDNAC"
* item[=].item[=].code = $PreguntasCS#PERSAF.NUMEROIDNAC "Numero de Identificacion Nacional"
* item[=].item[=].text = "Numero de Identificacion Nacional"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "PERSAF.DIRECCION"
* item[=].item[=].code = $PreguntasCS#PERSAF.DIRECCION "DireccionCompleta"
* item[=].item[=].text = "DireccionCompleta"
* item[=].item[=].type = #text
* item[=].item[=].required = true
* item[=].item[+].linkId = "PERSAF.NIVELGEO"
* item[=].item[=].code = $PreguntasCS#PERSAF.NIVELGEO "Nivel Geografico Subnacional"
* item[=].item[=].text = "Nivel Geografico Subnacional"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "PERSAF.TELEFONO"
* item[=].item[=].code = $PreguntasCS#PERSAF.TELEFONO "Número de Teléfono"
* item[=].item[=].text = "Número de Teléfono"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSAF.EMAIL"
* item[=].item[=].code = $PreguntasCS#PERSAF.EMAIL "Dirección de Correo Electrónico"
* item[=].item[=].text = "Dirección de Correo Electrónico"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSAF.SEXO"
* item[=].item[=].code = $PreguntasCS#PERSAF.SEXO "Sexo"
* item[=].item[=].text = "Sexo"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].linkId = "PERSAF.FECHA_NACIMIENTO"
* item[=].item[=].code = $PreguntasCS#PERSAF.FECHA_NACIMIENTO "FechaNacimiento"
* item[=].item[=].text = "FechaNacimiento"
* item[=].item[=].type = #date
* item[=].item[=].required = true
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "PERSAF.GRUPO_ETNICO"
* item[=].item[=].code = $PreguntasCS#PERSAF.GRUPO_ETNICO "Grupo Etnico"
* item[=].item[=].text = "Grupo Etnico"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $GrupoEtnicoCS#1 "Mestizo"
* item[=].item[=].answerOption[+].valueCoding = $GrupoEtnicoCS#2 "Blanco"
* item[=].item[=].answerOption[+].valueCoding = $GrupoEtnicoCS#3 "Mulato"
* item[=].item[=].answerOption[+].valueCoding = $GrupoEtnicoCS#4 "Negro"
* item[=].item[=].answerOption[+].valueCoding = $GrupoEtnicoCS#6 "Amerindio"
* item[=].item[=].answerOption[+].valueCoding = $GrupoEtnicoCS#0 "Otro"
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 110
* item[=].item[=].linkId = "PERSAF.EDAD.CANTIDAD"
* item[=].item[=].text = "Edad al Inicio"
* item[=].item[=].type = #integer
* item[=].item[=].required = false
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
* item[=].item[=].extension.valueCodeableConcept.text = "Radio Button"
* item[=].item[=].linkId = "PERSAF.EDAD.TIPO"
* item[=].item[=].text = "Tipo de Edad"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $unitsofmeasure#m "Meses"
* item[=].item[=].answerOption[+].valueCoding = $unitsofmeasure#a "Años"
* item[=].item[=].answerOption[+].valueCoding = $unitsofmeasure#d "Días"
* item[+].linkId = "PERSNO"
* item[=].code = $PreguntasCS#PERSNO "Datos de la Persona Notificadora"
* item[=].text = "Datos de la Persona Notificadora"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "PERSNO.APELLIDOS"
* item[=].item[=].code = $PreguntasCS#PERSNO.APELLIDOS "Apellidos"
* item[=].item[=].text = "Apellidos"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSNO.NOMBRES"
* item[=].item[=].code = $PreguntasCS#PERSON.NOMBRES "Nombres"
* item[=].item[=].text = "Nombres"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSNO.PROFESION"
* item[=].item[=].code = $PreguntasCS#PERSNO.PROFESION "Profesión"
* item[=].item[=].text = "Profesión"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSNO.CARGO"
* item[=].item[=].code = $PreguntasCS#PERSNO.CARGO "Cargo"
* item[=].item[=].text = "Cargo"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSNO.INSTITUCION"
* item[=].item[=].code = $PreguntasCS#PERSNO.INSTITUCION "Institución"
* item[=].item[=].text = "Institución"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSNO.DIRECCION"
* item[=].item[=].code = $PreguntasCS#PERSNO.DIRECCION "Dirección Completa del Notificador"
* item[=].item[=].text = "Dirección Completa del Notificador"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSNO.TELEFONO"
* item[=].item[=].code = $PreguntasCS#PERSNO.TELEFONO "Teléfono del Notificador"
* item[=].item[=].text = "Teléfono del Notificador"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSNO.EMAIL"
* item[=].item[=].code = $PreguntasCS#PERSNO.EMAIL "Correo Electrónico del Notificador"
* item[=].item[=].text = "Correo Electrónico del Notificador"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSNO.FECHA_CONSULTA"
* item[=].item[=].code = $PreguntasCS#PERSNO.FECHA_CONSULTA "Fecha de Consulta"
* item[=].item[=].text = "Fecha de Consulta"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].linkId = "PERSNO.FECHA_LLENADO"
* item[=].item[=].code = $PreguntasCS#PERSNO.FECHA_LLENADO "Fecha de Llenado de la Ficha"
* item[=].item[=].text = "Fecha de Llenado de la Ficha"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[+].linkId = "ANTEPV"
* item[=].code = $PreguntasCS#ANTEPV "Antecedentes de la Persona Vacunada"
* item[=].text = "Antecedentes de la Persona Vacunada"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "ANTEPV.ANTECMED"
* item[=].item[=].code = $PreguntasCS#ANTEPV.ANTECMED "Antecedentes Médicos"
* item[=].item[=].text = "Antecedentes Médicos"
* item[=].item[=].type = #string
* item[=].item[=].required = true
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "ANTEPV.ANTPSIM"
* item[=].item[=].code = $PreguntasCS#ANTEPV.ANTPSIM "Antecedentes Previos Similares"
* item[=].item[=].text = "Antecedentes Previos Similares"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "ANTEPV.ANTPSIM-help"
* item[=].item[=].item.text = "¿Tiene antecedentes de eventos previos similares al actual?"
* item[=].item[=].item.type = #display
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "ANTEPV.ANTOTV"
* item[=].item[=].code = $PreguntasCS#ANTEPV.ANTOTV "Antecedentes Reacción Alérgica a Otras Vacunas"
* item[=].item[=].text = "Antecedentes Reacción Alérgica a Otras Vacunas"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "ANTEPV.ANTOTV-help"
* item[=].item[=].item.text = "¿Tiene antecedentes de reacciones alérgicas a otras vacunas?"
* item[=].item[=].item.type = #display
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "ANTEPV.ANTOME"
* item[=].item[=].code = $PreguntasCS#ANTEPV.ANTOME "Antecedente Reacción Alérgica a Otros Medicamentos"
* item[=].item[=].text = "Antecedente Reacción Alérgica a Otros Medicamentos"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "ANTEPV.ANTOME-help"
* item[=].item[=].item.text = "¿Tiene antecedentes de reacciones alérgicas a medicamentos?"
* item[=].item[=].item.type = #display
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "ANTEPV.ANTMIV"
* item[=].item[=].code = $PreguntasCS#ANTEPV.ANTMIV "Antecedentes Reacción Alérgica a Misma Vacuna"
* item[=].item[=].text = "Antecedentes Reacción Alérgica a Misma Vacuna"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "ANTEPV.ANTMIV-help"
* item[=].item[=].item.text = "¿Tiene antecedentes de reacciones alérgicas a dosis previas de la misma vacuna?"
* item[=].item[=].item.type = #display
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "ANTEPV.INFCOV"
* item[=].item[=].code = $PreguntasCS#ANTEPV.INFCOV "Antecedentes de Infección SARS COV2"
* item[=].item[=].text = "Antecedentes de Infección SARS COV2"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "ANTEPV.INFCOV-help"
* item[=].item[=].item.text = "¿Tiene antecedente de diagnóstico de infección por SARS-CoV-2 antes de la vacunación?"
* item[=].item[=].item.type = #display
* item[=].item[+].linkId = "ANTEPV.FESINT"
* item[=].item[=].code = $PreguntasCS#ANTEPV.FESINT "Fecha de Inicio de Sintomas"
* item[=].item[=].text = "Fecha de Inicio de Sintomas"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "ANTEPV.FESINT-help"
* item[=].item[=].item.text = "Fecha de inicio de síntomas"
* item[=].item[=].item.type = #display
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "ANTEPV.MODOCON"
* item[=].item[=].code = $PreguntasCS#ANTEPV.MODOCON "Modo de Confirmación de Infección"
* item[=].item[=].text = "Modo de Confirmación de Infección"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $ModoConfirmacionInfeccionCS#1 "Solo por las manifestaciones clínicas"
* item[=].item[=].answerOption[+].valueCoding = $ModoConfirmacionInfeccionCS#2 "Por inmunoensayos"
* item[=].item[=].answerOption[+].valueCoding = $ModoConfirmacionInfeccionCS#3 "Por pruebas moleculares"
* item[=].item[=].answerOption[+].valueCoding = $ModoConfirmacionInfeccionCS#0 "Otro"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "ANTEPV.MODOCON-help"
* item[=].item[=].item.text = "¿Cómo se confirmó el diagnóstico de la infección?"
* item[=].item[=].item.type = #display
* item[=].item[+].linkId = "ANTEPV.EXPLCO"
* item[=].item[=].code = $PreguntasCS#ANTEPV.EXPLCO "Explicación de Confirmación de Infección"
* item[=].item[=].text = "Explicación de Confirmación de Infección"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "ANTEPV.EXPLCO-help"
* item[=].item[=].item.text = "Explique la confirmación del diagnóstico, si seleccionó 'Otro' como modo de confirmación"
* item[=].item[=].item.type = #display
* item[=].item[+].linkId = "ANTEPV.FECTOC"
* item[=].item[=].code = $PreguntasCS#ANTEPV.FECTOC "Fecha de Toma de Muestra Confirmatoria"
* item[=].item[=].text = "Fecha de Toma de Muestra Confirmatoria"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "ANTEPV.FECTOC-help"
* item[=].item[=].item.text = "Fecha de toma de la muestra para la prueba confirmatoria"
* item[=].item[=].item.type = #display
* item[+].linkId = "ENSAYO"
* item[=].code = $PreguntasCS#ENSAYO "Participacion en Ensayo Clinico SARS COV2"
* item[=].text = "Participacion en Ensayo Clinico SARS COV2"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "ENSAYO.PARTICIPO"
* item[=].item[=].code = $PreguntasCS#ENSAYO.PARTICIPO "Participó de un Ensayo Clínico de Vacunas Contra SARS COV2"
* item[=].item[=].text = "Participó de un Ensayo Clínico de Vacunas Contra SARS COV2"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[+].linkId = "ENSAYO.MEDICAMENTO"
* item[=].item[=].code = $PreguntasCS#ENSAYO.MEDICAMENTO "Medicamento"
* item[=].item[=].text = "Medicamento"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "ENSAYO.PRESENTACION"
* item[=].item[=].code = $PreguntasCS#ENSAYO.PRESENTACION "Presentacion"
* item[=].item[=].text = "Presentacion"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "ENSAYO.DOSIS"
* item[=].item[=].code = $PreguntasCS#ENSAYO.DOSIS "Dosis"
* item[=].item[=].text = "Dosis"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "ENSAYO.VIA_ADMINISTRACION"
* item[=].item[=].code = $PreguntasCS#ENSAYO.VIA_ADMINISTRACION "Via de Administración"
* item[=].item[=].text = "Via de Administración"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "ENSAYO.FECHA_INICIO"
* item[=].item[=].code = $PreguntasCS#ENSAYO.FECHA_INICIO "Fecha de Inicio"
* item[=].item[=].text = "Fecha de Inicio"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[+].linkId = "EMBARAZO"
* item[=].code = $PreguntasCS#EMBARAZO "Detalles de Embarazo"
* item[=].text = "Detalles de Embarazo"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "EMBARAZO.ESTADO"
* item[=].item[=].code = $PreguntasCS#EMBARAZO.ESTADO "Estado de Embarazo"
* item[=].item[=].text = "Estado de Embarazo"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 1
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 42
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
* item[=].item[=].extension[=].valueCoding.display = "wk"
* item[=].item[=].linkId = "EMBARAZO.EDAD_GESTACIONAL"
* item[=].item[=].code = $PreguntasCS#EMBARAZO.EDAD_GESTACIONAL "Edad Gestacional En Semanas"
* item[=].item[=].text = "Edad Gestacional En Semanas"
* item[=].item[=].type = #integer
* item[=].item[=].required = false
* item[=].item[+].linkId = "EMBARAZO.FECHA_PROBABLE_PARTO"
* item[=].item[=].code = $PreguntasCS#EMBARAZO.FECHA_PROBABLE_PARTO "Fecha Probable de Parto"
* item[=].item[=].text = "Fecha Probable de Parto"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "EMBARAZO.COMPLICACIONES"
* item[=].item[=].code = $PreguntasCS#EMBARAZO.COMPLICACIONES "Complicaciones del Embarazo"
* item[=].item[=].text = "Complicaciones del Embarazo"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[+].linkId = "EMBARAZO.COMPLICACIONES_DIAG"
* item[=].item[=].code = $PreguntasCS#EMBARAZO.COMPLICACIONES_DIAG "Diagnóstico de la Complicación"
* item[=].item[=].text = "Diagnóstico de la Complicación"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[=].item[+].linkId = "EMBARAZO.COMPLICACIONES_DESC"
* item[=].item[=].code = $PreguntasCS#EMBARAZO.COMPLICACIONES_DESC "Descripción de la Complicación"
* item[=].item[=].text = "Descripción de la Complicación"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "EMBARAZO.MONITOREO"
* item[=].item[=].code = $PreguntasCS#EMBARAZO.MONITOREO "Monitoreo de la Vacunación"
* item[=].item[=].text = "Monitoreo de la Vacunación"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[+].linkId = "VACUNACION"
* item[=].code = $PreguntasCS#VACUNACION "Datos de la Administración de la Vacuna"
* item[=].text = "Datos de la Administración de la Vacuna"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "VACUNACION.INSTITUCION"
* item[=].item[=].code = $PreguntasCS#VACUNACION.INSTITUCION "Institución de Salud donde se Vacunó"
* item[=].item[=].text = "Institución de Salud donde se Vacunó"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "VACUNACION.INSTITUCION-help"
* item[=].item[=].item.text = "Institución de salud en donde se vacunó"
* item[=].item[=].item.type = #display
* item[=].item[+].linkId = "VACUNACION.DIRECCION"
* item[=].item[=].code = $PreguntasCS#VACUNACION.DIRECCION "Dirección del Lugar de Vacunación"
* item[=].item[=].text = "Dirección del Lugar de Vacunación"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.GENERICO"
* item[=].item[=].code = $PreguntasCS#VACUNACION.GENERICO "Nombre Genérico de la Vacuna"
* item[=].item[=].text = "Nombre Genérico de la Vacuna"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.COMERCIAL"
* item[=].item[=].code = $PreguntasCS#VACUNACION.COMERCIAL "Nombre Comercial de la Vacuna"
* item[=].item[=].text = "Nombre Comercial de la Vacuna"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.FABRICANTE"
* item[=].item[=].code = $PreguntasCS#VACUNACION.FABRICANTE "Fabricante de la Vacuna"
* item[=].item[=].text = "Fabricante de la Vacuna"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.FECHA"
* item[=].item[=].code = $PreguntasCS#VACUNACION.FECHA "Fecha de Vacunación"
* item[=].item[=].text = "Fecha de Vacunación"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.HORA"
* item[=].item[=].code = $PreguntasCS#VACUNACION.HORA "Hora de Vacunación"
* item[=].item[=].text = "Hora de Vacunación"
* item[=].item[=].type = #time
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.DOSIS"
* item[=].item[=].code = $PreguntasCS#VACUNACION.DOSIS "Dosis de Vacuna"
* item[=].item[=].text = "Dosis de Vacuna"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.NROLOTE"
* item[=].item[=].code = $PreguntasCS#VACUNACION.NROLOTE "Número de Lote"
* item[=].item[=].text = "Número de Lote"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.FECHAVTO"
* item[=].item[=].code = $PreguntasCS#VACUNACION.FECHAVTO "Fecha de Vencimiento"
* item[=].item[=].text = "Fecha de Vencimiento"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.DILUYENTE_NOMBRE"
* item[=].item[=].code = $PreguntasCS#VACUNACION.DILUYENTE_NOMBRE "Nombre del Diluyente"
* item[=].item[=].text = "Nombre del Diluyente"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.DILUYENTE_NROLOTE"
* item[=].item[=].code = $PreguntasCS#VACUNACION.DILUYENTE_NROLOTE "Número de Lote del Diluyente"
* item[=].item[=].text = "Número de Lote del Diluyente"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.DILUYENTE_FECHAVTO"
* item[=].item[=].code = $PreguntasCS#VACUNACION.DILUYENTE_FECHAVTO "Fecha de Vencimiento del Diluyente"
* item[=].item[=].text = "Fecha de Vencimiento del Diluyente"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.RECONST_FECHA"
* item[=].item[=].code = $PreguntasCS#VACUNACION.RECONST_FECHA "Fecha de Reconstitución"
* item[=].item[=].text = "Fecha de Reconstitución"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].linkId = "VACUNACION.RECONST_HORA"
* item[=].item[=].code = $PreguntasCS#VACUNACION.RECONST_HORA "Hora de Reconstitución"
* item[=].item[=].text = "Hora de Reconstitución"
* item[=].item[=].type = #time
* item[=].item[=].required = false
* item[+].linkId = "VACPREVIA"
* item[=].code = $PreguntasCS#VACPREVIA "VacunacionPrevia"
* item[=].text = "VacunacionPrevia"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "VACPREVIA.INDICADOR"
* item[=].item[=].code = $PreguntasCS#VACPREVIA.INDICADOR "Indicador Vacunación Previa"
* item[=].item[=].text = "Indicador Vacunación Previa"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item[=].item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item[=].item[=].item.linkId = "VACPREVIA.INDICADOR-help"
* item[=].item[=].item.text = "Otra vacuna administrada en los 30 días anteriores al inicio del ESAVI"
* item[=].item[=].item.type = #display
* item[=].item[+].linkId = "VACPREVIA.VACUNA"
* item[=].item[=].code = $PreguntasCS#VACPREVIA.VACUNA "Vacuna Administrada Previamente"
* item[=].item[=].text = "Vacuna Administrada Previamente"
* item[=].item[=].type = #string
* item[=].item[=].required = false
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "VACPREVIA.MODO_VERIFICACION"
* item[=].item[=].code = $PreguntasCS#VACPREVIA.MODO_VERIFICACION "Modo Verificación Vacuna Previa"
* item[=].item[=].text = "Modo Verificación Vacuna Previa"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $ModoVerificacionVacunaCS#1 "Carnet/Registro físico"
* item[=].item[=].answerOption[+].valueCoding = $ModoVerificacionVacunaCS#2 "Carnet/Registro electrónico"
* item[=].item[=].answerOption[+].valueCoding = $ModoVerificacionVacunaCS#3 "Declaración verbal"
* item[=].item[=].answerOption[+].valueCoding = $ModoVerificacionVacunaCS#4 "Historia clínica corroborada con carnet"
* item[=].item[=].answerOption[+].valueCoding = $ModoVerificacionVacunaCS#5 "No se sabe"
* item[=].item[=].answerOption[+].valueCoding = $ModoVerificacionVacunaCS#O "Otro"
* item[=].item[+].linkId = "VACPREVIA.VERIFICACION_EXPLICACION"
* item[=].item[=].code = $PreguntasCS#VACPREVIA.VERIFICACION_EXPLICACION "Explicación Verificación"
* item[=].item[=].text = "Explicación Verificación"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[+].linkId = "ESAVI"
* item[=].code = $PreguntasCS#ESAVI "Evento Adverso"
* item[=].text = "Evento Adverso"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "ESAVI.TIPO"
* item[=].item[=].code = $PreguntasCS#ESAVI.TIPO "Tipo de Evento Adverso"
* item[=].item[=].text = "Tipo de Evento Adverso"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $EventoAdversoVacunaCS#1 "Fiebre Mayor a 38°C"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#2 "Dolor en el sitio de la inyección"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#3 "Eritema en el sitio de la inyección"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#4 "Inflamación en el sitio de la inyección"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#5 "Cefalea"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#6 "Convulsiones Febriles"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#7 "Absceso"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#8 "Linfadenitis"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#9 "Encefalopatía"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#10 "Encefalitis"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#11 "Trombocitopenia"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#12 "Anafilaxis"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#13 "Síndrome de shock tóxico"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#14 "Sepsis"
* item[=].item[=].answerOption[+].valueCoding = $EventoAdversoVacunaCS#O "Otro"
* item[=].item[+].linkId = "ESAVI.FECHA"
* item[=].item[=].code = #ESAVI.FECHA "Fecha Evento Adverso"
* item[=].item[=].text = "Fecha Evento Adverso"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].linkId = "ESAVI.HORA"
* item[=].item[=].code = $PreguntasCS#ESAVI.HORA "Hora de Evento Adverso"
* item[=].item[=].text = "Hora de Evento Adverso"
* item[=].item[=].type = #time
* item[=].item[=].required = false
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "ESAVI.CODIGO"
* item[=].item[=].code = $PreguntasCS#ESAVI.CODIGO "Codigo de Evento Adverso"
* item[=].item[=].text = "Codigo de Evento Adverso"
* item[=].item[=].type = #open-choice
* item[=].item[=].required = false
* item[=].item[+].linkId = "ESAVI.DESCRIPCION"
* item[=].item[=].code = $PreguntasCS#ESAVI.DESCRIPCION "Descripción del Evento Adverso"
* item[=].item[=].text = "Descripción del Evento Adverso"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[+].linkId = "GRAVEDAD"
* item[=].code = #GRAVEDAD "Gravedad del Evento Adverso"
* item[=].text = "Gravedad del Evento Adverso"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].linkId = "GRAVEDAD.INDICADOR"
* item[=].item[=].code = $PreguntasCS#GRAVEDAD.INDICADOR "Evento Adverso Grave"
* item[=].item[=].text = "Evento Adverso Grave"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "GRAVEDAD.MUERTE"
* item[=].item[=].code = $PreguntasCS#GRAVEDAD.MUERTE "Gravedad del ESAVI: Muerte"
* item[=].item[=].text = "Gravedad del ESAVI: Muerte"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "GRAVEDAD.AMENAZA_VIDA"
* item[=].item[=].code = $PreguntasCS#GRAVEDAD.AMENAZA_VIDA "Gravedad del ESAVI: Amenaza la vida"
* item[=].item[=].text = "Gravedad del ESAVI: Amenaza la vida"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "GRAVEDAD.DISCAPACIDAD"
* item[=].item[=].code = $PreguntasCS#GRAVEDAD.DISCAPACIDAD "Gravedad del ESAVI: Discapacidad significativa o persistente"
* item[=].item[=].text = "Gravedad del ESAVI: Discapacidad significativa o persistente"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "GRAVEDAD.HOSPITALIZACION"
* item[=].item[=].code = $PreguntasCS#GRAVEDAD.HOSPITALIZACION "Gravedad del ESAVI: Hospitalización"
* item[=].item[=].text = "Gravedad del ESAVI: Hospitalización"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "GRAVEDAD.ANOMALIA"
* item[=].item[=].code = $PreguntasCS#GRAVEDAD.ANOMALIA "Gravedad del ESAVI: Anomalía congénita"
* item[=].item[=].text = "Gravedad del ESAVI: Anomalía congénita"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "GRAVEDAD.ABORTO"
* item[=].item[=].code = $PreguntasCS#GRAVEDAD.ABORTO "Gravedad del ESAVI: Aborto"
* item[=].item[=].text = "Gravedad del ESAVI: Aborto"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "GRAVEDAD.MUERTE_FETAL"
* item[=].item[=].code = $PreguntasCS#GRAVEDAD.MUERTE_FETAL "Gravedad del ESAVI: Muerte fetal"
* item[=].item[=].text = "Gravedad del ESAVI: Muerte fetal"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].linkId = "GRAVEDAD.OTRO"
* item[=].item[=].code = $PreguntasCS#GRAVEDAD.OTRO "Gravedad del ESAVI: Otro"
* item[=].item[=].text = "Gravedad del ESAVI: Otro"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[+].linkId = "DESENLACE"
* item[=].code = $PreguntasCS#DESENLACE "Desenlace"
* item[=].text = "Desenlace"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "DESENLACE.TIPO"
* item[=].item[=].code = $PreguntasCS#DESENLACE.TIPO "Desenlace del Evento Adverso"
* item[=].item[=].text = "Desenlace del Evento Adverso"
* item[=].item[=].type = #choice
* item[=].item[=].required = true
* item[=].item[=].answerOption[0].valueCoding = $ClasificacionDesenlaceCS#1 "Recuperado"
* item[=].item[=].answerOption[+].valueCoding = $ClasificacionDesenlaceCS#2 "En remisión/recuperación"
* item[=].item[=].answerOption[+].valueCoding = $ClasificacionDesenlaceCS#3 "No Recuperado"
* item[=].item[=].answerOption[+].valueCoding = $ClasificacionDesenlaceCS#4 "Recuperado con Secuelas"
* item[=].item[=].answerOption[+].valueCoding = $ClasificacionDesenlaceCS#5 "Muerte"
* item[=].item[=].answerOption[+].valueCoding = $ClasificacionDesenlaceCS#0 "Desconocido"
* item[=].item[+].linkId = "DESENLACE.FECHA_MUERTE"
* item[=].item[=].code = $PreguntasCS#DESENLACE.FECHA_MUERTE "Fecha de Muerte"
* item[=].item[=].text = "Fecha de Muerte"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "DESENLACE.AUTOPSIA"
* item[=].item[=].code = $PreguntasCS#DESENLACE.AUTOPSIA "Se Realizó Autopsia"
* item[=].item[=].text = "Se Realizó Autopsia"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $RespuestaSiNoNosabeCS#1 "Sí"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].answerOption[+].valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[+].linkId = "DESENLACE_INVESTIGACION"
* item[=].item[=].code = $PreguntasCS#DESENLACE_INVESTIGACION "Se requiere investigación"
* item[=].item[=].text = "Se requiere investigación"
* item[=].item[=].type = #boolean
* item[=].item[=].required = true
* item[=].item[+].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
* item[=].item[=].linkId = "DESENLACE_INVESTIGACION_TIPO"
* item[=].item[=].code = $PreguntasCS#DESENLACE_INVESTIGACION_TIPO "Tipo de Investigación"
* item[=].item[=].text = "Tipo de Investigación"
* item[=].item[=].type = #choice
* item[=].item[=].required = false
* item[=].item[=].answerOption[0].valueCoding = $InvestigacionTipoCS#1 "Concisa"
* item[=].item[=].answerOption[+].valueCoding = $InvestigacionTipoCS#2 "Completa"
* item[=].item[+].linkId = "DESENLACE_INVESTIGACION_FECHA"
* item[=].item[=].code = $PreguntasCS#DESENLACE_INVESTIGACION_FECHA "Fecha Planeada de Investigación"
* item[=].item[=].text = "Fecha Planeada de Investigación"
* item[=].item[=].type = #date
* item[=].item[=].required = false
* item[+].text = "Conclusiones"
* item[=].linkId = "CONCLUSIONES"
* item[=].type = #group
* item[=].required = false
* item[=].item[0].text = "Comentarios Finales"
* item[=].item[=].linkId = "CONCLUSIONES.COMENTARIOS"
* item[=].item[=].type = #text
* item[=].item[=].required = false
* item[=].item[+].text = "Fecha Recepción Nivel Nacional"
* item[=].item[=].type = #date
* item[=].item[=].linkId = "CONCLUSIONES.FECHA_RECEPCION"
* item[=].item[=].required = true