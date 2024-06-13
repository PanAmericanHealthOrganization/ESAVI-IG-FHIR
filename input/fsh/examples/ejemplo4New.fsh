Alias: $DirOrgNotiCS = https://paho.org/fhir/esavi/CodeSystem/DirOrgNotiCS
Alias: $ProfesionalNotificadorVS = https://paho.org/fhir/esavi/CodeSystem/ProfesionalNotificadorVS
Alias: $CodPaises = urn:iso:std:iso:3166
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $EnfermedadesPreviasCodificacionCS = http://paho.org/esavi/CodeSystem/EnfermedadesPreviasCodificacionCS
Alias: $RespuestaSiNoNosabeCS = https://paho.org/fhir/esavi/CodeSystem/RespuestaSiNoNosabeCS
Alias: $EsaviMedDRACS = https://paho.org/fhir/esavi/CodeSystem/EsaviMedDRACS
Alias: $EsaviOtroCS = http://paho.org/esavi/CodeSystem/EsaviOtroCS
Alias: $ClasificacionDesenlaceCS = https://paho.org/fhir/esavi/CodeSystem/ClasificacionDesenlaceCS

Instance: Ejemplo2DHIS2
InstanceOf: QuestionnaireResponse
Description: "Ejemplo de respuesta de cuestionario basado en un caso mapeado desde DHIS2 con paciente embarazada y complicaciones, antecedentes médicos previos y registro de SARS COV2"
Usage: #example
* status = #completed
* authored = "2022-03-10T10:20:00Z"
* questionnaire = "https://paho.org/fhir/esavi/Questionnaire/CuestionarioESAVI"
* identifier.value = "09420955-533a-4222-9ba0-4d865134b191"
* meta.profile = "https://paho.org/fhir/esavi/StructureDefinition/ESAVIQuestionnaireResponse"

* item[0].linkId = "datosNotificacionGeneral"
* item[=].text = "Datos Administrativos de la Notificación"
* item[=].item[0].linkId = "datosNotificacion"
* item[=].item[=].item[0].linkId = "paisOrigen-Reg"
* item[=].item[=].item[=].answer.valueCoding = https://paho.org/fhir/esavi/CodeSystem/codPaisesCS#GTM "Guatemala"
* item[=].item[=].item[+].linkId = "nombreOrganizacionNotificadora"
* item[=].item[=].item[=].answer.valueString = "Ministerio de Salud Pública y Asistencia Social"
* item[=].item[=].item[+].linkId = "codigoDireccionOrganizacion"
* item[=].item[=].item[=].answer.valueCoding = https://paho.org/fhir/esavi/CodeSystem/DirOrgNotiCS#GT_QZ_0912 "San Martín Sacatepéquez (Municipio), Quetzaltenango, Guatemala"
* item[=].item[=].item[+].linkId = "nombreDireccionOrganizacion"
* item[=].item[=].item[=].answer.valueString = "Guatemala (Municipio), Guatemala, Guatemala"
* item[=].item[=].item[+].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].answer.valueCoding = https://paho.org/fhir/esavi/CodeSystem/ProfesionalNotificadorCS#5 "Usuario u otro profesional no sanitario"
* item[=].item[+].linkId = "fechas"
* item[=].item[=].text = "Fechas Administrativas (al menos una fecha es necesaria)"
* item[=].item[=].item[0].linkId = "fechaConsulta"
* item[=].item[=].item[=].answer.valueDate = "2020-12-24"
* item[=].item[=].item[+].linkId = "fechaNotificacion"
* item[=].item[=].item[=].answer.valueDate = "2020-12-24"
* item[=].item[=].item[+].linkId = "fechaLlenadoFicha"
* item[=].item[=].item[=].answer.valueDate = "2020-12-24"
* item[=].item[=].item[+].linkId = "fechaRepoNacional"
* item[=].item[=].item[=].answer.valueDate = "2020-12-25"
* item[+].linkId = "datosIdVacunado"
* item[=].item[0].linkId = "datosPaciente"
* item[=].item[=].item[0].linkId = "numeroCaso"
* item[=].item[=].item[=].answer.valueString = "f9a9a518-7b6f-472a-bf28-9aad7a8eeb22"
* item[=].item[=].item[+].linkId = "idPaciente"
* item[=].item[=].item[=].answer.valueString = "5f9f5ae5-e821-412d-8b58-9834a7a439c0"
* item[=].item[=].item[+].linkId = "codigoResidenciaHabitual"
* item[=].item[=].item[=].answer.valueCoding = $DirOrgNotiCS#MX_CS_07005 "Amatán (Municipio), Chiapas, Mexico"
* item[=].item[=].item[+].linkId = "nombreResidenciaHabitual"
* item[=].item[=].item[=].answer.valueString = "Amatán (Municipio), Chiapas, Mexico"
* item[=].item[=].item[+].linkId = "sexoPaciente"
* item[=].item[=].item[=].answer.valueCoding = $administrative-gender#male "Male"
* item[=].item[=].item[+].linkId = "fechaNacimiento"
* item[=].item[=].item[=].answer.valueDate = "1985-02-02"
* item[=].item[=].item[+].linkId = "etnia"
* item[=].item[=].item[=].answer.valueString = "Indígena"
* item[+].linkId = "antecedentesMedicos"
* item[=].text = "Antecedentes médicos identificados por el paciente"
* item[=].item[0].linkId = "antecedentesEnfermedadesPrevias"
* item[=].item[=].item[0].linkId = "descripcionEnfPrevia"
* item[=].item[=].item[=].answer.valueString = "Alergia a Penicilina"
* item[=].item[=].item[+].linkId = "codigoMedDRAEnfPrevia"
* item[=].item[=].item[=].answer.valueCoding = https://paho.org/fhir/esavi/CodeSystem/MedDRACS#10000116 "Percepción auditiva anormal no especificada"
* item[=].item[=].item[+].linkId = "otrosCodigosEnfPrevia"
* item[=].item[=].item[=].answer.valueCoding = http://snomed.info/sct#1824008 "Allergic gastritis"
* item[=].item[+].linkId = "antecedentesEventosAdversos"
* item[=].item[=].item[0].linkId = "antecedentesAdvSimilar"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#1 "Si"
* item[=].item[=].item[+].linkId = "alergiaMedicamentos"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#1 "Si"
* item[=].item[=].item[+].linkId = "alergiaVacunas"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#1 "Si"
* item[=].item[+].linkId = "antecedentesSarsCov2"
* item[=].item[=].item.linkId = "diagnosticoprevioSarsCov2"
* item[=].item[=].item.answer.valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[+].linkId = "antecedentesFarmacosVacunas"
* item[=].item[0].linkId = "datosVacunas"
* item[=].item[=].text = "Datos de las vacunas administradas"
* item[=].item[=].item[0].linkId = "nombreVacuna"
* item[=].item[=].item[=].answer.valueString = "BioNTech"
* item[=].item[=].item[+].linkId = "identificadorVacuna"
* item[=].item[=].item[=].answer.valueInteger = 121
* item[=].item[=].item[+].linkId = "nombreFabricante"
* item[=].item[=].item[=].answer.valueString = "Pfizer BioNTech"
* item[=].item[=].item[+].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].text = "Numero ordinal de la dosis administrada"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[=].item[+].linkId = "numeroLote"
* item[=].item[=].item[=].text = "Número del Lote de la Vacuna administrada"
* item[=].item[=].item[=].answer.valueString = "EK42412"
* item[=].item[=].item[+].linkId = "fechaVencimientoVacuna"
* item[=].item[=].item[=].answer.valueDate = "2021-01-04"
* item[=].item[=].item[+].linkId = "numeroLoteDiluyente"
* item[=].item[=].item[=].answer.valueString = "R20J17"
* item[=].item[=].item[+].linkId = "fechaVencimientoDiluyente"
* item[=].item[=].item[=].answer.valueDate = "2022-06-01"
* item[=].item[=].item[+].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].answer.valueString = "Hospital General de México"
* item[=].item[=].item[+].linkId = "fechaVacunacion"
* item[=].item[=].item[=].answer.valueDate = "2020-12-24"
* item[=].item[=].item[+].linkId = "codigoDireccionVacunatorio"
* item[=].item[=].item[=].answer.valueCoding = $DirOrgNotiCS#MX_CS_07005 "Amatán (Municipio), Chiapas, Mexico"
* item[=].item[=].item[+].linkId = "nombreDireccionVacunatorio"
* item[=].item[=].item[=].answer.valueString = "Dr. Balmis 148, Doctores, Cuauhtémoc, 06720 Ciudad de México, CDMX, México"
* item[+].linkId = "registroESAVI"
* item[=].item[0].linkId = "datosESAVI"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].text = "Nombre del ESAVI"
* item[=].item[=].item[=].answer.valueString = "Anafilaxia"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding = https://paho.org/fhir/esavi/CodeSystem/MedDRACS#10000269 "Absceso"

* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2020-12-24"
* item[=].item[=].item[+].linkId = "horaESAVI"
* item[=].item[=].item[=].answer.valueTime = "08:40:00"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Anafilaxia post vacunación."
* item[=].item[+].linkId = "gravedadESAVI"
* item[=].item[=].item[0].linkId = "tipoGravedad"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravMuerte"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "gravRiesgoVida"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravDiscapacidad"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "gravHospitalizacion"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "gravAnomaliaCongenita"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "otrosEventosImportantes"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "desenlaceESAVI"
* item[=].item[=].item[0].linkId = "codDesenlaceESAVI"
* item[=].item[=].item[=].answer.valueCoding = $ClasificacionDesenlaceCS#1 "Recuperado Completamente"
* item[=].item[=].item[+].linkId = "fechaInicioInvestigacion"
* item[=].item[=].item[=].answer.valueDate = "2020-12-25"