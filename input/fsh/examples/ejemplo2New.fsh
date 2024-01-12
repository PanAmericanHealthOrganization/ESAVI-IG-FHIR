// Alias: $DirOrgNotiCS = https://paho.org/fhir/esavi/CodeSystem/DirOrgNotiCS
// Alias: $ProfesionalNotificadorVS = https://paho.org/fhir/esavi/CodeSystem/ProfesionalNotificadorVS
// Alias: $CodPaises = https://paho.org/esavi/CodeSystem/CodPaisesCS
// Alias: $administrative-gender = https://hl7.org/fhir/administrative-gender
// Alias: $EnfermedadesPreviasCodificacionCS = https://paho.org/esavi/CodeSystem/EnfermedadesPreviasCodificacionCS
// Alias: $RespuestaSiNoNosabeCS = https://paho.org/fhir/esavi/CodeSystem/RespuestaSiNoNosabeCS
// Alias: $EsaviMedDRACS = https://paho.org/fhir/esavi/CodeSystem/EsaviMedDRACS
// Alias: $EsaviOtroCS = https://paho.org/esavi/CodeSystem/EsaviOtroCS
// Alias: $ClasificacionDesenlaceCS = https://paho.org/fhir/esavi/CodeSystem/ClasificacionDesenlaceCS

Instance: ejDosNuevo
Description: "Ejemplo de cuestionario Respondido 2"
InstanceOf: ESAVIQuestionnaireResponse
Usage: #example
* status = #completed
* authored = "2023-04-12T19:09:52.678Z"
* questionnaire = "https://paho.org/fhir/esavi/Questionnaire/CuestionarioESAVI"
* identifier.system = "http://ops.org/esavi/BR"
* identifier.value = "15500393456"
* meta.profile = "https://paho.org/fhir/esavi/StructureDefinition/ESAVIQuestionnaireResponse"
* item[0].linkId = "datosNotificacionGeneral"
* item[=].item[0].linkId = "datosNotificacion"
* item[=].item[=].item[0].linkId = "paisOrigen-Reg"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(codPaisesCS)
* item[=].item[=].item[=].answer.valueCoding.code = #BRA "Brasil"
//* item[=].item[=].item[=].answer.valueCoding = $CodPaises
* item[=].item[=].item[+].linkId = "nombreOrganizacionNotificadora"
* item[=].item[=].item[=].answer.valueString = "Ministerio da Saude"
* item[=].item[=].item[+].linkId = "codigoDireccionOrganizacion"
* item[=].item[=].item[=].answer.valueCoding = $DirOrgNotiCS#BR_AL_27_05705 "Olho d'Água das Flores (Municipio), Alagoas, Brazil"
* item[=].item[=].item[+].linkId = "nombreDireccionOrganizacion"
* item[=].item[=].item[=].answer.valueString = "Florianópolis"
* item[=].item[=].item[+].linkId = "codigoProfesionNotificador"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(ProfesionalNotificadorCS) 
* item[=].item[=].item[=].answer.valueCoding.code = #3 "Otro Profesional de la Salud"
//* item[=].item[=].item[=].answer.valueCoding = http://paho.org/esavi/CodeSystem/ProfesionalNotificadorCS#3 "Otro Profesional de la Salud"
* item[=].item[+].linkId = "fechas"
* item[=].item[=].item[0].linkId = "fechaConsulta"
* item[=].item[=].item[=].answer.valueDate = "2021-07-01"
* item[=].item[=].item[+].linkId = "fechaLlenadoFicha"
* item[=].item[=].item[=].answer.valueDate = "2021-09-21"
* item[+].linkId = "datosIdVacunado"
* item[=].item.linkId = "datosPaciente"
* item[=].item.item[0].linkId = "numeroCaso"
* item[=].item.item[=].answer.valueString = "1422100147620"
* item[=].item.item[+].linkId = "idPaciente"
* item[=].item.item[=].answer.valueString = "f309923b7f5b8512eb70fa8361decfb1"
* item[=].item.item[+].linkId = "codigoResidenciaHabitual"
* item[=].item.item[=].answer.valueCoding = $DirOrgNotiCS#BR_AL_27_05705 "Olho d'Água das Flores (Municipio), Alagoas, Brazil"
* item[=].item.item[+].linkId = "nombreResidenciaHabitual"
* item[=].item.item[=].answer.valueString = "Florianópolis"
* item[=].item.item[+].linkId = "sexoPaciente"
* item[=].item.item[=].answer.valueCoding = http://hl7.org/fhir/administrative-gender#male "Male"
* item[=].item.item[+].linkId = "fechaNacimiento"
* item[=].item.item[=].answer.valueDate = "1988-09-08"
* item[=].item.item[+].linkId = "etnia"
* item[=].item.item[=].answer.valueString = "Branca"
* item[+].linkId = "antecedentesFarmacosVacunas"
* item[=].item[0].linkId = "datosVacunas"
* item[=].item[=].item[0].linkId = "nombreVacuna"
* item[=].item[=].item[=].answer.valueString = "Covishield"
* item[=].item[=].item[+].linkId = "nombreNormalizadoVacuna"
* item[=].item[=].item[=].answer.valueString = "Vacina Covid-19 - Covishield"
* item[=].item[=].item[+].linkId = "identificadorVacuna"
* item[=].item[=].item[=].answer.valueInteger = 123456
* item[=].item[=].item[+].linkId = "nombreFabricante"
* item[=].item[=].item[=].answer.valueString = "OXFORD-ASTRAZENECA"
* item[=].item[=].item[+].linkId = "numeroDosisVacuna"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[=].item[+].linkId = "nombreVacunatorio"
* item[=].item[=].item[=].answer.valueString = "vacunatorio genérico"
* item[=].item[=].item[+].linkId = "fechaVacunacion"
* item[=].item[=].item[=].answer.valueDate = "2021-06-25"
* item[=].item[=].item[+].linkId = "codigoDireccionVacunatorio"
* item[=].item[=].item[=].answer.valueCoding = $DirOrgNotiCS#BR_AL_27_05705 "Olho d'Água das Flores (Municipio), Alagoas, Brazil"
* item[=].item[=].item[+].linkId = "nombreDireccionVacunatorio"
* item[=].item[=].item[=].answer.valueString = "direccion genérica"
* item[+].linkId = "registroESAVI"
* item[=].item[0].linkId = "datosESAVI"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Plaquetas baixas"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 1
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10024922 "trastorno de las plaquetas"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-07-21"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Paciente com plaquetopenia severa 15 dias após aplicação de vacina. Hemograma do dia 21/07/2021 (7 mil Plaquetas). Ficou hospitalizado 4 dias apresentou petequias, equimoses e hematúria. Paciente de 33 anos, apresentou quadro de plaquetopenia importante após vacinação ASTRAZENICA há 30 dias; Estava em acompanhamento com Dr Alan Furlan hematologista particular. Lab (21/07/21): contagem plaquetas 7000. Lab (30/07/21): Hb 15,60/ Ht 47,60/ VCM 86,70/ RDW 14,90%/ Leuco 8280/ Plaquetas 3450/ Plaquetas em citrato 5470 Teste Rápido HbsAg não reagente/ HCV não reagente/ HIV não reagente/ Sífilis não reagente. Lab (06/08/21): Hb 14,30/ Ht 43, 40/ VCM 88, 0/ Leuco 9220/ Plaquetas 71.000/ Tempo Tromboplastina Parcial 27,0/ Protrombina 18,10/ INR 1,37/ PCR 0,38/ Bilirrubina total 0,77/ BD 0,10/ BI 0,67/ Gama Gt 25,0/ AST 14,0/ ALT 24,0/ VHS 3/ FR <8 Lab (11/08/21): Plaquetas 41.000 Lab (18/08/21): Plaquetas 31.800."
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Hematuria"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 2
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10005604 "Hematuria"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-07-21"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Ficou hospitalizado 4 dias apresentou hematúria."
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Equimoses"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 3
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10014080 "Equimosis"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-07-21"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "Ficou hospitalizado 4 dias apresentou equimoses"
* item[=].item[+].linkId = "datosESAVI"
* item[=].item[=].item[0].linkId = "nombreESAVI"
* item[=].item[=].item[=].answer.valueString = "Sangramento gengival"
* item[=].item[=].item[+].linkId = "IdentificadorESAVI"
* item[=].item[=].item[=].answer.valueInteger = 4
* item[=].item[=].item[+].linkId = "codigoESAVIMedDRA"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(MedDRA)
* item[=].item[=].item[=].answer.valueCoding.code = #10018292 "gingivitis"
* item[=].item[=].item[+].linkId = "fechaESAVI"
* item[=].item[=].item[=].answer.valueDate = "2021-07-20"
* item[=].item[=].item[+].linkId = "descripcionESAVI"
* item[=].item[=].item[=].answer.valueString = "paciente presenta sangrado gingival"
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
* item[=].item[=].item[=].answer.valueBoolean = true
* item[=].item[=].item[+].linkId = "gravAnomaliaCongenita"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[=].item[+].linkId = "otrosEventosImportantes"
* item[=].item[=].item[=].answer.valueBoolean = false
* item[=].item[+].linkId = "desenlaceESAVI"
* item[=].item[=].item[0].linkId = "codDesenlaceESAVI"
* item[=].item[=].item[=].answer.valueCoding.system = Canonical(ClasificacionDesenlaceCS)
* item[=].item[=].item[=].answer.valueCoding.code = #2 "En recuperación"
* item[=].item[=].item[+].linkId = "comentarios"
* item[=].item[=].item[=].answer.valueString = "Paciente relata alergia a chocolate e ingeriu. Diz que 2 colegas do trabalho apresentaram os mesmos sintomas petéquias hj 20/07"
* item[=].item[=].item[+].linkId = "fechaInicioInvestigacion"
* item[=].item[=].item[=].answer.valueDate = "2021-09-20"