Alias: $DirOrgNotiCS = https://paho.org/fhir/esavi/CodeSystem/DirOrgNotiCS
Alias: $ProfesionalNotificadorCS = https://paho.org/fhir/esavi/CodeSystem/ProfesionalNotificadorCS
Alias: $CodPaises = http://paho.org/esavi/CodeSystem/CodPaises
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $EnfermedadesPreviasCodificacionCS = http://paho.org/esavi/CodeSystem/EnfermedadesPreviasCodificacionCS
Alias: $RespuestaSiNoNosabeCS = https://paho.org/fhir/esavi/CodeSystem/RespuestaSiNoNosabeCS
Alias: $EsaviMedDRACS = https://paho.org/fhir/esavi/CodeSystem/EsaviMedDRACS
Alias: $EsaviOtroCS = http://paho.org/esavi/CodeSystem/EsaviOtroCS
Alias: $ClasificacionDesenlaceCS = https://paho.org/fhir/esavi/CodeSystem/ClasificacionDesenlaceCS
Alias: $SistemaCodif = https://paho.org/fhir/esavi/CodeSystem/SistemasDeCodificacionCS
Alias: $SistemaCodifNomVac = https://paho.org/fhir/esavi/CodeSystem/SistemasDeCodificacionCS
Alias: $CodFabVac = https://paho.org/fhir/esavi/CodeSystem/CodigoWhoFabricanteCS
Alias: $MetodoVerificacionVacPrevia = https://paho.org/fhir/esavi/CodeSystem/ModoVerificacionVacunaCS


Instance: ejemploJMansilla
InstanceOf: QuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-04-12T19:09:52.678Z"
* questionnaire = "https://paho.org/fhir/esavi/Questionnaire/CuestionarioESAVI"
* identifier.system = "http://ops.org/esavi/MX"
* identifier.value = "1550039300"
* meta.profile = "https://paho.org/fhir/esavi/StructureDefinition/ESAVIQuestionnaireResponse"

* item[0].linkId = "datosNotificacionGeneral"


* item[=].item[0].linkId = "datosNotificacion"

//datosNotificacionGeneral.datosNotificacion
* item[=].item[=].item[0].linkId = "paisOrigen-Reg"
* item[=].item[=].item[=].answer.valueCoding = urn:iso:std:iso:3166#CL "Chile"

* item[=].item[=].item[+].linkId = "nombreOrganizacionNotificadora"
* item[=].item[=].item[=].answer.valueString = "Instituto de Salud Publica, ISP, Ministerio de Salud, Chile"

* item[=].item[=].item[+].linkId = "codigoDireccionOrganizacion"
* item[=].item[=].item[=].answer.valueCoding = $DirOrgNotiCS#CL_VS_05802 "Limache (Comuna), Region de Valparaiso, Chile"

* item[=].item[=].item[+].linkId = "nombreDireccionOrganizacion"
* item[=].item[=].item[=].answer.valueString = "Limache (Comuna), Region de Valparaiso, Chile"

* item[=].item[=].item[+].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].answer.valueCoding = $ProfesionalNotificadorCS#3 "Otro Profesional de la Salud"

//datosNotificacionGeneral.fechas
* item[=].item[+].linkId = "fechas"
* item[=].item[=].text = "Fechas Administrativas (al menos una fecha es necesaria)"

* item[=].item[=].item[0].linkId = "fechaConsulta"
* item[=].item[=].item[=].answer.valueDate = "2022-04-12"

* item[=].item[=].item[+].linkId = "fechaNotificacion"
* item[=].item[=].item[=].answer.valueDate = "2022-04-20"

* item[=].item[=].item[+].linkId = "fechaLlenadoFicha"
* item[=].item[=].item[=].answer.valueDate = "2022-04-20"

* item[=].item[=].item[+].linkId = "fechaRepoNacional"
* item[=].item[=].item[=].answer.valueDate = "2022-04-20"

//datosNotificacionGeneral.datosIdVacunado.datosPaciente
* item[+].linkId = "datosIdVacunado"

* item[=].item.linkId = "datosPaciente"
* item[=].item.item[0].linkId = "numeroCaso"
* item[=].item.item[=].answer.valueString = "b51f3132-0e89-4747-9139-5c48baaa639f"

* item[=].item.item[+].linkId = "idPaciente"
* item[=].item.item[=].answer.valueString = "ce4b2038-1dc6-43d1-9276-0a571898b1ce"

//* item[=].item.item[+].linkId = "paisOrigen-Reg"
//* item[=].item.item[=].answer.valueCoding = $CodPaises#MX "Mexico"



* item[=].item.item[+].linkId = "codigoResidenciaHabitual"
* item[=].item.item[=].answer.valueCoding = $DirOrgNotiCS#CL_VS_05804 "Villa Alemana (Comuna), Region de Valparaiso, Chile"

* item[=].item.item[+].linkId = "nombreResidenciaHabitual"
* item[=].item.item[=].answer.valueString = "Villa Alemana (Comuna), Region de Valparaiso, Chile"

* item[=].item.item[+].linkId = "sexoPaciente"
* item[=].item.item[=].answer.valueCoding = $administrative-gender#male "Male"

* item[=].item.item[+].linkId = "fechaNacimiento"
* item[=].item.item[=].answer.valueDate = "1985-02-02"

* item[=].item.item[+].linkId = "etnia"
* item[=].item.item[=].answer.valueString = "Mapuche"


//antecedentesMedicos
* item[+].linkId = "antecedentesMedicos"
* item[=].text = "Antecedentes médicos identificados por el paciente"

//antecedentesMedicos.ensayoClinico.ensayoClinicoCovid19
* item[=].item[0].linkId = "ensayoClinico"
* item[=].item[=].item[0].linkId = "ensayoClinicoCovid19"
* item[=].item[=].item[=].answer.valueBoolean = false

//antecedentesMedicos.antecedentesEventosAdversos
* item[=].item[+].linkId = "antecedentesEventosAdversos"
* item[=].item[=].item[0].linkId = "antecedentesAdvSimilar"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[=].item[+].linkId = "alergiaMedicamentos"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"
* item[=].item[=].item[+].linkId = "alergiaVacunas"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#3 "No sabe"

//antecedentesMedicos.antecedentesSarsCov2
* item[=].item[+].linkId = "antecedentesSarsCov2"
* item[=].item[=].item.linkId = "diagnosticoprevioSarsCov2"
* item[=].item[=].item.answer.valueCoding = $RespuestaSiNoNosabeCS#2 "No"


//antecedentesMedicos.antecedentesFarmacosVacunas
* item[+].linkId = "antecedentesFarmacosVacunas"

* item[=].item[0].linkId = "datosVacunas"
* item[=].item[=].text = "Datos de las vacunas administradas"

* item[=].item[=].item[0].linkId = "nombreVacuna"
* item[=].item[=].item[=].answer.valueString = "Sputnik V"

* item[=].item[=].item[+].linkId = "sistemaDeCodificacionParaNombreNormalizadoVacuna"
* item[=].item[=].item[=].answer.valueCoding = $SistemaCodifNomVac#2 "WHODrug"

* item[=].item[=].item[+].linkId = "nombreNormalizadoVacuna"
* item[=].item[=].item[=].answer.valueString = "Sputnik V"

* item[=].item[=].item[+].linkId = "identificadorVacuna"
* item[=].item[=].item[=].answer.valueInteger = 1548

* item[=].item[=].item[+].linkId = "nombreFabricante"
* item[=].item[=].item[=].answer.valueString = "Gamaleya Research Institute"

* item[=].item[=].item[+].linkId = "codigoFabricanteWHODrug"
* item[=].item[=].item[=].answer.valueCoding = $CodFabVac#GRI "Gamaleya Research Institute"

* item[=].item[=].item[+].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].answer.valueInteger = 2

* item[=].item[=].item[+].linkId = "numeroLote"
* item[=].item[=].item[=].answer.valueString = "Ade4D@f"

* item[=].item[=].item[=].item[+].linkId = "fechaVencimientoVacuna"
* item[=].item[=].item[=].item[=].answer.valueDate = "2023-10-24"

* item[=].item[=].item[=].item[+].linkId = "nombreDiluyenteVacuna"
* item[=].item[=].item[=].item[=].answer.valueString = "cloruro de sodio al 0.9 % sin conservantes"

* item[=].item[=].item[=].item[+].linkId = "numeroLoteDiluyente"
* item[=].item[=].item[=].item[=].answer.valueString = "TRE854"

* item[=].item[=].item[=].item[+].linkId = "fechaVencimientoDiluyente"
* item[=].item[=].item[=].item[=].answer.valueDate = "2022-06-01"

* item[=].item[=].item[=].item[+].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].item[=].answer.valueString = "Gimnasio Juan Ignacio Carrera Pinto"

* item[=].item[=].item[=].item[+].linkId = "fechaVacunacion"
* item[=].item[=].item[=].item[=].answer.valueDate = "2023-10-10"

* item[=].item[=].item[=].item[+].linkId = "horaVacunacion"
* item[=].item[=].item[=].item[=].answer.valueTime = "16:23:00"

* item[=].item[=].item[+].linkId = "codigoDireccionVacunatorio"
* item[=].item[=].item[=].answer.valueCoding = $DirOrgNotiCS#CL_VS_05802 "Limache (Comuna), Region de Valparaiso, Chile"

* item[=].item[=].item[=].item[+].linkId = "nombreDireccionVacunatorio"
* item[=].item[=].item[=].item[=].answer.valueString = "Limache (Comuna), Region de Valparaiso, Chile"

* item[=].item[=].item[+].linkId = "codigoMecanismoVerificacion"
* item[=].item[=].item[=].answer.valueCoding = $MetodoVerificacionVacPrevia#2 "Carnet/Registro electrónico"

* item[=].item[=].item[=].item[+].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].item[=].answer.valueString = "Gimnasio Juan Ignacio Carrera Pinto"

* item[=].item[=].item[=].item[+].linkId = "fechaReconstitucionVacuna"
* item[=].item[=].item[=].item[=].answer.valueDate = "2023-10-10"





* item[+].linkId = "registroESAVI"

* item[=].item[0].linkId = "datosESAVI"

* item[=].item[=].item[0].linkId = "nombreESAVI"

* item[=].item[=].item[=].text = "Nombre del ESAVI"
* item[=].item[=].item[=].answer.valueString = "Desmayo"

* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 3

* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding = $EsaviMedDRACS#10016179 ""

* item[=].item[=].item[+].linkId = "codigoESAVIOtro"
* item[=].item[=].item[=].answer.valueCoding = $EsaviOtroCS#39579001 "Desmayo"

* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2023-10-10"

* item[=].item[=].item[+].linkId = "horaESAVI"
* item[=].item[=].item[=].answer.valueTime = "16:33:00"

* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Desmayo post vacunación."

* item[=].item[+].linkId = "gravedadESAVI"

* item[=].item[=].item[0].linkId = "tipoGravedad"
* item[=].item[=].item[=].answer.valueBoolean = true

* item[=].item[=].item[+].linkId = "gravMuerte"
* item[=].item[=].item[=].answer.valueBoolean = false

* item[=].item[=].item[+].linkId = "gravRiesgoVida"
* item[=].item[=].item[=].answer.valueBoolean = false

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

* item[=].item[=].item[+].linkId = "comentarios"
* item[=].item[=].item[=].answer.valueString = "Paciente recuperado sin problemas"


* item[=].item[=].item[+].linkId = "fechaInicioInvestigacion"
* item[=].item[=].item[=].answer.valueDate = "2020-12-25"
