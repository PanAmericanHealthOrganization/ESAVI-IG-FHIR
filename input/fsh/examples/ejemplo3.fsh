Alias: $codPaisesCS = https://paho.org/fhir/esavi/CodeSystem/codPaisesCS
Alias: $ProfesionalNotificadorCS = https://paho.org/fhir/esavi/CodeSystem/ProfesionalNotificadorCS
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $RespuestaSiNoNosabeCS = https://paho.org/fhir/esavi/CodeSystem/RespuestaSiNoNosabeCS
Alias: $apiportaldemo = https://paho.org/fhir/esavi/CodeSystem/WHODrugDCCS
Alias: $SistemasDeCodificacionCS = https://paho.org/fhir/esavi/CodeSystem/SistemasDeCodificacionCS
Alias: $ModoVerificacionVacunaCS = https://paho.org/fhir/esavi/CodeSystem/ModoVerificacionVacunaCS
Alias: $meddra = https://paho.org/fhir/esavi/CodeSystem/MedDRACS
Alias: $ClasificacionDesenlaceCS = https://paho.org/fhir/esavi/CodeSystem/ClasificacionDesenlaceCS

Instance: Ejemplo1DHIS2
InstanceOf: QuestionnaireResponse
Description: "Ejemplo de respuesta de cuestionario basado en un caso mapeado desde DHIS2 con antecedentes médicos previos y registro de SARS COV2"
Usage: #example
* meta.profile = "https://paho.org/fhir/esavi/StructureDefinition/ESAVIQuestionnaireResponse"
* identifier.system = "http://ops.org/esavi/PRY"
* identifier.value = "DEM_2024_02_28_000002"
* questionnaire = "https://paho.org/fhir/esavi/Questionnaire/CuestionarioESAVI"
* status = #completed
* authored = "2024-04-17T00:00:00+02:00"
* item[0].linkId = "datosNotificacionGeneral"
* item[=].item[0].linkId = "datosNotificacion"
* item[=].item[=].item[0].linkId = "paisOrigen-Reg"
* item[=].item[=].item[=].answer.valueCoding = $codPaisesCS#PRY "Paraguay"
* item[=].item[=].item[+].linkId = "nombreOrganizacionNotificadora"
* item[=].item[=].item[=].answer.valueString = "Demo"
* item[=].item[=].item[+].linkId = "nombreDireccionOrganizacion"
* item[=].item[=].item[=].answer.valueString = "Bogota, D.C. (Municipio), Santa Fe de Bogota DC, Colombia"
* item[=].item[=].item[+].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].answer.valueCoding = $ProfesionalNotificadorCS#1 "Médico"
* item[=].item[+].linkId = "fechas"
* item[=].item[=].item[0].linkId = "fechaConsulta"
* item[=].item[=].item[=].answer.valueDate = "2022-11-24"
* item[=].item[=].item[+].linkId = "fechaNotificacion"
* item[=].item[=].item[=].answer.valueDate = "2024-04-17"
* item[=].item[=].item[+].linkId = "fechaLlenadoFicha"
* item[=].item[=].item[=].answer.valueDate = "2024-04-17"
* item[=].item[=].item[+].linkId = "fechaRepoNacional"
* item[=].item[=].item[=].answer.valueDate = "2024-04-17"
* item[+].linkId = "datosIdVacunado"
* item[=].item.linkId = "datosPaciente"
* item[=].item.item[0].linkId = "numeroCaso"
* item[=].item.item[=].answer.valueString = "DEM_2024_02_28_000002"
* item[=].item.item[+].linkId = "idPaciente"
* item[=].item.item[=].answer.valueString = "0a57308b6b844616ab548e25bd3fdf0e"
* item[=].item.item[+].linkId = "nombreResidenciaHabitual"
* item[=].item.item[=].answer.valueString = "Cortés"
* item[=].item.item[+].linkId = "sexoPaciente"
* item[=].item.item[=].answer.valueCoding = $administrative-gender#female "Female"
* item[=].item.item[+].linkId = "fechaNacimiento"
* item[=].item.item[=].answer.valueDate = "2006-02-13"
* item[+].linkId = "antecedentesMedicos"
* item[=].item[0].linkId = "antecedentesEventosAdversos"
* item[=].item[=].item[0].linkId = "antecedentesAdvSimilar"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].item[+].linkId = "alergiaMedicamentos"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].item[+].linkId = "alergiaVacunas"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[+].linkId = "antecedentesSarsCov2"
* item[=].item[=].item.linkId = "diagnosticoprevioSarsCov2"
* item[=].item[=].item.answer.valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[+].linkId = "pacienteEmbarazada"
* item[=].item[=].item[0].linkId = "embarazadaMomentoVacuna"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#2 "No"
* item[=].item[=].item[+].linkId = "embarazadaMomentoESAVI"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#1 "Si"
* item[=].item[=].item[+].linkId = "fechaUltimaMenstruacion"
* item[=].item[=].item[=].answer.valueDate = "2022-09-17"
* item[=].item[=].item[+].linkId = "fechaProbableParto"
* item[=].item[=].item[=].answer.valueDate = "2023-06-24"
* item[+].linkId = "antecedentesFarmacosVacunas"
* item[=].item[0].linkId = "medicamento"
* item[=].item[=].item[0].linkId = "nombreMedicamento"
* item[=].item[=].item[=].answer.valueString = "Asmax (Montelukast)"
* item[=].item[=].item[+].linkId = "codigoMedicamento"
* item[=].item[=].item[=].answer.valueCoding = $apiportaldemo#01362601020 "Asmax (Montelukast)"
* item[=].item[=].item[+].linkId = "nombreFormaFarmaceutica"
* item[=].item[=].item[=].answer.valueString = "Tableta / Comprimido"
* item[=].item[=].item[+].linkId = "nombreViaAdministracion"
* item[=].item[=].item[=].answer.valueString = "Oral"
* item[=].item[+].linkId = "medicamento"
* item[=].item[=].item[0].linkId = "nombreMedicamento"
* item[=].item[=].item[=].answer.valueString = "Metildopa (Methyldopa)"
* item[=].item[=].item[+].linkId = "codigoMedicamento"
* item[=].item[=].item[=].answer.valueCoding = $apiportaldemo#00000101091 "Metildopa"
* item[=].item[=].item[+].linkId = "nombreFormaFarmaceutica"
* item[=].item[=].item[=].answer.valueString = "Tableta / Comprimido"
* item[=].item[=].item[+].linkId = "nombreViaAdministracion"
* item[=].item[=].item[=].answer.valueString = "Oral"
* item[=].item[+].linkId = "datosVacunas"
* item[=].item[=].item[0].linkId = "nombreVacuna"
* item[=].item[=].item[=].answer.valueString = "Pfizer"
* item[=].item[=].item[+].linkId = "sistemaDeCodificacionParaNombreNormalizadoVacuna"
* item[=].item[=].item[=].answer.valueCoding = $SistemasDeCodificacionCS#2 "WHODrug"
* item[=].item[=].item[+].linkId = "nombreNormalizadoVacuna"
* item[=].item[=].item[=].answer.valueString = "Pfizer"
* item[=].item[=].item[+].linkId = "identificadorVacuna"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[=].item[+].linkId = "codigoVacunaWHODrug"
* item[=].item[=].item[=].answer.valueCoding = $apiportaldemo#15268625001 "Tozinameran"
* item[=].item[=].item[+].linkId = "nombreFabricante"
* item[=].item[=].item[=].answer.valueString = "Biohtech"
* item[=].item[=].item[+].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[=].item[+].linkId = "numeroLote"
* item[=].item[=].item[=].answer.valueString = "FJ1618"
* item[=].item[=].item[+].linkId = "fechaVencimientoVacuna"
* item[=].item[=].item[=].answer.valueDate = "2023-12-20"
* item[=].item[=].item[+].linkId = "nombreDiluyenteVacuna"
* item[=].item[=].item[=].answer.valueString = "Cloruro de Sodio 0,9%"
* item[=].item[=].item[+].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].answer.valueString = "Hospital Público"
* item[=].item[=].item[+].linkId = "fechaVacunacion"
* item[=].item[=].item[=].answer.valueDate = "2022-11-18"
* item[=].item[=].item[+].linkId = "horaVacunacion"
* item[=].item[=].item[=].answer.valueTime = "08:00:00"
* item[=].item[=].item[+].linkId = "codigoMecanismoVerificacion"
* item[=].item[=].item[=].answer.valueCoding = $ModoVerificacionVacunaCS#1 "Carnet/Registro físico"
* item[+].linkId = "registroESAVI"
* item[=].item[0].linkId = "datosESAVI"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Síndrome de Guillain Barré"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding = $meddra#10018766 "Síndrome de Guillain Barré"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2024-04-17"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "41. Descripción del ESAVI (anote a continuación los síntomas tal como los describe el paciente o la paciente, y los signos clínicos del evento, e incluya también los resultados de las pruebas de laboratorio y de imagen realizadas que sean relevantes):\n\nCuadro clínico de un día de evolución de fiebre elevada, dolor muscular, malestar general, parálisis flácida de instalación el 24 de noviembre del 2022, con característica ascendente y marcha claudicante. Niega síntomas digestivos, urinarios o respiratorios en las últimas 3 semanas, niega pérdida de control de esfínteres por lo que se decide hospitalizar para monitoreo y presenta un aborto espontáneo y fallece el 28 de noviembre. Se programa realizar una autopsia de acuerdo a la normatividad del país el mismo 28 de noviembre"
* item[=].item[+].linkId = "gravedadESAVI"
* item[=].item[=].item[0].linkId = "tipoGravedad"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravMuerte"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravHospitalizacion"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravAborto"
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[+].linkId = "desenlaceESAVI"
* item[=].item[=].item[0].linkId = "codDesenlaceESAVI"
* item[=].item[=].item[=].answer.valueCoding = $ClasificacionDesenlaceCS#5 "Muerte"
* item[=].item[=].item[+].linkId = "autopsia"
* item[=].item[=].item[=].answer.valueCoding = $RespuestaSiNoNosabeCS#1 "Si"
* item[=].item[=].item[+].linkId = "fechaInicioInvestigacion"
* item[=].item[=].item[=].answer.valueDate = "2022-12-09"