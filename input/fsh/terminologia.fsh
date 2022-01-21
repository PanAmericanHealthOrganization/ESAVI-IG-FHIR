Alias: $v2-0136 = http://terminology.hl7.org/ValueSet/v2-0136

ValueSet: ViaAdminMedicamentoVS
Id: ViaAdminMedicamentoVS
Title: "Códigos para identificar vías de administración de medicamentos"
Description: "Describe y lista las vías de administración de medicamentos para registro en ESAVI segun SNOMED CT"
* ^url = "http://paho.org/esavi/ValueSet/ViaAdminMedicamentoVS"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2021-12-30T23:19:35-03:00"
* ^publisher = "PAHO"
* include codes from system SNOMED_CT where concept is-a #736479009 "sitio de administración previsto de forma farmacéutica (sitio de administración previsto)"






ValueSet: ComplicacionEmbarazoMedDRAVS
Id: ComplicacionEmbarazoMedDRAVS
Title: "EsaviComplicacionEmbarzoMedDRA"
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo"
* include codes from system http://terminology.hl7.org/CodeSystem/mdr

ValueSet: ComplicacionEmbarazoOtroVS
Id: ComplicacionEmbarazoOtroVS
Title: "EsaviComplicacionEmbarazoOtroVS "
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo"
* include codes from system http://hl7.org/fhir/sid/icd-10
* include codes from system SCT

ValueSet: EsaviMedDRAVS
Id: EsaviMedDRAVS
Title: "EsaviMedDRA"
Description: "Codificacion Estandarizada de Evento Adverso en MedDRA"
* include codes from system http://terminology.hl7.org/CodeSystem/mdr


ValueSet: EsaviOtroVS
Id: EsaviOtroVS
Title: "EsaviOtrosVS"
Description: "Codificacion Estandarizada de Evento Adverso en otro sistema que no sea MedDRA"
* include codes from system SCT
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: SustanciaActivaVS
Id: SustanciaActivaVS
Title: "EsaviSustanciaActivaVS"
Description: "Codificación Estandarizda de Sustancia Activa de Medicamento"
* include codes from system SCT
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: MedicamentoGenericoVS
Id: MedicamentoGenericoVS
Title: "EsaviMedicamentoGenericoVS"
Description: "Codificación Estandarizda del Nombre Genéricode Medicamento"
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: MedicamentoOtroVS
Id: MedicamentoOtroVS
Title: "EsaviMedicamentoOtroVS"
Description: "Codificación Estandarizda del Nombre Genéricode Medicamento"
* include codes from system SCT


ValueSet: NombreComercialMEdicamentoVS
Id: NombreComercialMedicamentoVS
Title: "EsaviNombreComercialMedicamentoVS"
Description: "Codificación Estandarizda del Nombre Comercial de Medicamento"
* include codes from system ATC

ValueSet: CodigoWhoVacunaVS
Id: CodigoWhoVacunaVS
Title: "EsaviCodigoWhoVacunaVS"
Description: "Codificación Estandarizda de Nomnbre Genérico de las Vacunas"
* include codes from system http://who-umc.org. 


ValueSet: CodigoOtroVacunaVS
Id: CodigoOtroVacunaVS
Title: "EsaviCodigoWhoVacunaVS"
Description: "Codificación Estandarizda de Nomnbre Genérico de las Vacunas"
* include codes from system SCT
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: NombreComercialVacunaVS
Id: NombreComercialVacunaVS
Title: "EsaviNombreComercialVacunaVS"
Description: "Codificación Estandarizda del Nombre Comercial Vacuna"
* include codes from system ATC



ValueSet: FormaFarmaceuticaVS
Id: FormaFarmaceuticaVS
Title: "Códigos apra identificar formas farmacéuticas"
Description: "Describe y lista las formas farmaceuticas de medicamentos para registro en ESAVI segun SNOMED CT"
* ^url = "http://paho.org/esavi/ValueSet/FormaFarmaceuticaVS"
* ^version = "0.1.0"
* ^status = #active
* ^date = "2021-12-30T23:19:35-03:00"
* ^publisher = "ESAVI -"
* include codes from system SNOMED_CT where concept is-a #736478001 "forma farmacéutica básica (forma farmacéutica básica)"

ValueSet: EnfermedadesPreviasCodificacionVS
Id: EnfermedadesPreviasCodificacionVS
Title: "EsaviEnfermedadesPreviasCodificacionVS"
Description: "Codificación Estandarizada de Diagnósticos"
* include codes from system http://snomed.info/sct

ValueSet: SistemasDeCodificacionVS
Id: SistemasDeCodificacionVS
Title: "Sistemas De Codificacion VS"
Description: "Sistemas De Codificacion"
* include codes from system SistemasDeCodificacionCS

CodeSystem: SistemasDeCodificacionCS
Id: SistemasDeCodificacionCS
Title: "Sistemas De Codificacion"
Description: "Sistemas De Codificacion"
* #1 "SNOMED-CT"
* #2 "WHODrug"
* #3 "ATC"
//* #4 "CIE-10"
* #4 "CIE-11"
//* #6 "MedDRA"

ValueSet: RespuestaSiNoNosabeVS
Id: RespuestaSiNoNosabeVS
Title: "EsaviRespuestaSiNoNosabeVS"
Description: "Para capturar respuestas simples si/no/no sabe"
* include codes from system RespuestaSiNoNosabeCS

CodeSystem: RespuestaSiNoNosabeCS
Id: RespuestaSiNoNosabeCS
Title: "EsaviRespuestasSiNoNoSabe"
Description:  "Respuestas Si/No/No Sabe"
* #1 "Si"
* #2 "No"
* #3 "No sabe"

ValueSet: RespuestaVerdaderoFalsoVS
Id: RespuestaVerdaderoFalsoVS
Title: "EsaviRespuestaVerdaderoFalsoVS"
Description: "Para capturar respuestas simples Verdadero/Falso"
* include codes from system RespuestaVerdaderoFalsoCS

CodeSystem: RespuestaVerdaderoFalsoCS
Id: RespuestaVerdaderoFalsoCS
Title: "Respuestas Verdadero/Falso"
Description:  "Respuestas Verdadero/Falso"
* #1 "Verdadero"
* #2 "Falso"

ValueSet: GrupoEtnicoVS
Id: GrupoEtnicoVS
Title: "Códigos de Grupo Etnico"
Description:  "Códigos de Grupo Etnico"
* include codes from system GrupoEtnicoCS


CodeSystem: GrupoEtnicoCS
Id: GrupoEtnicoCS
Title: "Códigos de Grupo Etnico"
Description:  "Códigos de Grupo Etnico"
* #1 "Mestizo"
* #2 "Blanco"
* #3 "Mulato"
* #4 "Negro"
* #5 "Amerindio"
* #6 "Zambo"
* #0 "Otro"

ValueSet: ModoVerificacionVacunaVS
Id: ModoVerificacionVacunaVS
Title: "EsaviModoVerificacionVacunaVS"
Description:  "Modos de Verificacion de Vacuna"
* include codes from system ModoVerificacionVacunaCS

CodeSystem: ModoVerificacionVacunaCS
Id: ModoVerificacionVacunaCS
Title: "Modo de Verificación de Vacunación Previa"
Description:  "Modo de Verificación de Vacunación Previa"
* #1 "Carnet/Registro físico" 
* #2 "Carnet/Registro electrónico"
* #3 "Declaración verbal" 
* #4 "Historia clínica corroborada con carnet" 
* #5 "No se sabe" 
* #O "Otro"

ValueSet: ModoConfirmacionInfeccionVS
Id: ModoConfirmacionInfeccionVS
Title: "EsaviModoConfirmacionInfeccionVS"
Description: "Modos de Confirmacion de Infeccion"
* include codes from system ModoConfirmacionInfeccionCS

CodeSystem: ModoConfirmacionInfeccionCS
Id: ModoConfirmacionInfeccionCS
Title: "Modo de Confirmación de la Infección"
Description:  "Modo de Confirmación de la Infección"
* #1 "Por criterio clínico epidemiológico" 
* #2 "por inmunoensayo"
* #3 "Por pruebas moleculares"
* #4 "Por aislamiento viral" 
* #5 "Otra"


ValueSet: EventoAdversoVacunaVS
Id: EventoAdversoVacunaVS
Title: "EsaviEventoAdversoVacunaVS"
Description:  "Evento Adverso de Vacuna"
* include codes from system EventoAdversoVacunaCS

CodeSystem: EventoAdversoVacunaCS
Id: EventoAdversoVacunaCS
Title: "Eventos Adversos"
Description:  "Eventos Adversos"
* #1 "Fiebre mayor a 38°C"	
* #2 "Dolor en el sitio de la inyección"
* #3 "Eritema en el sitio de la inyección"
* #4 "Inflamación en el sitio de la inyección"	
* #5 "Cefalea"
* #6 "Convulsiones febriles"
* #7 "Absceso"
* #8 "Linfadenitis"
* #9 "Encefalopatía"
* #10 "Encefalitis"
* #11 "Trombocitopenia"
* #12 "Anafilaxis"	
* #13 "Síndrome de shock tóxico"
* #14 "Sepsis"
* #0 "Otro" 



ValueSet: ClasificacionDesenlaceVS
Id: ClasificacionDesenlaceVS
Title: "EsaviClasificacionDesenlaceVS"
Description:  "Clasificación de Desenlace"
* include codes from system ClasificacionDesenlaceCS

CodeSystem: ClasificacionDesenlaceCS
Id: ClasificacionDesenlaceCS
Title: "Clasificacion de Desenlace"
Description:  "Clasificacion de Desenlace"
* #1 "Muy probable o cierta"
* #2 "Probable"
* #3 "Posible"
* #4 "Improbable"
* #5 "No relacionada"
* #6 "No clasificable"

/*
* #1 "Recuperado"
* #2 "En remisión / recuperación"
* #3 "No recuperado"
* #4 "Recuperado con secuelas"
* #5 "Muerte"
* #0 "Desconocido"
*/

ValueSet: InvestigacionTipoVS
Id: InvestigacionTipoVS
Title: "EsaviInvestigacionTipoVS"
Description:  "Tipo de Investigación"
* include codes from system InvestigacionTipoCS

CodeSystem: InvestigacionTipoCS
Id: InvestigacionTipoCS
Title: "Tipo de Investigación"
Description:  "Tipo de Investigación"
* #1 "Concisa"
* #2 "Completa"

ValueSet: SeccionesNotificacionVS
Id: SeccionesNotificacionVS
Title: "EsaviSeccionesNotificacionVS"
Description: "Conjunto de Valores para las Secciones de la Notificación"
* codes from system SeccionesNotificacionCS

CodeSystem: SeccionesNotificacionCS
Id: SeccionesNotificacionCS
Title: "Códigos de Sección para la Notificación"
Description: "Códigos de Sección para la Notificación"
* #s_IdentificacionPersonaAfectada
* #s_PersonaNotificadora
* #s_AntecedentesPersonaVacunada
* #s_ParticipacionEnsayoClinico
* #s_DetallesEmbarazo
* #s_AdministracionVacuna
* #s_VacunacionPrevia
* #s_EventoAdverso
* #s_GravedadEventoAdverso
* #s_Desenlace
* #s_Conclusiones

ValueSet: ComplicacionEmbarazoVS
Title: "EsaviComplicacionEmbarazoVS"
Description: "Conjunto de Valores para la Sección de Complicaciones Embarazo ESAVI"
* codes from system ComplicacionEmbarazoCS

CodeSystem: ComplicacionEmbarazoCS
Title: "Códigos para Complicaciones de Embarazo"
Description: "Códigos para las Complicaciones de Embarazo"
* #01 "Del Embarazo"
* #02 "Del Parto"
* #03 "Puerperio fetal"
* #04 "Neonatal"
* #05 "Anomalía Congénita"


ValueSet: ProfesionalNotificadorVS
Title: "EsaviProfesionalNotificadorVS"
Description: "Conjunto de Valores para las Secciones de la Notificación"
* codes from system ProfesionalNotificadorCS

CodeSystem: ProfesionalNotificadorCS
Title: "Códigos para Profesional Notificador"
Description: "Códigos para Discriminar la Profesión del Notificador"
* #1 "Physician"
* #2 "Pharmacist"
* #3 "Other Health Professional"
* #4 "Lawyer"
* #5 "Consumer or other non health professional"


ValueSet: DirOrgNotiVS
Title: "EsaviDirOrgNotiVS"
Description: "Conjunto de Valores para dirección según OPS"
* codes from system DirOrgNotiCS

CodeSystem: DirOrgNotiCS
Title: "Códigos para Direcciones"
Description: "Códigos para Direcciones según OPS"
* #1 "Comuna 1"
* #2 "Comuna 2"
* #3 "Comuna 3"
* #4 "Comuna 4"
* #5 "Comuna 5"

ValueSet: CodigoMedDRAEnfPreviaVS
Title: "CodigoMedDRAEnfPreviaVS"
Description: "Conjunto de Valores para enfermedades previas (MedDRA)"
* include codes from system http://terminology.hl7.org/CodeSystem/mdr


ValueSet: DosisVacunaVS
Id: DosisVacunaVS
Title: "Dosis vacuna"
Description:  "Indicador de que dosis se esta administrando"
* include codes from system DosisVacunaCS

CodeSystem: DosisVacunaCS
Id: DosisVacunaCS
Title: "Dosis Vacuna"
Description:  "Indicador de que dosis se esta administrando"
* #1 "Primera Dosis"	
* #2 "Segunda Dosis"
* #3 "Refuerzo"
* #4 "Primer Refuerzo"
* #5 "Segundo Refuerzo"


ValueSet: SistemaClasfCausalidadVS
Id: SistemaClasfCausalidadVS
Title: "Método de clasificación de causalidad"
Description:  "Método de clasificación de causalidad"
* include codes from system SistemaClasfCausalidadCS

CodeSystem: SistemaClasfCausalidadCS
Id: SistemaClasfCausalidadCS
Title: "Método de clasificación de causalidad"
Description:  "Método de clasificación de causalidad"
* #WHO-UMC "WHO-UMC"	
* #WHO-AEFI "WHO-AEFI"
* #Naranjo "Naranjo"
* #otro "Otro siste de clasificacion de causalidad"


ValueSet: ClasificacionDesenlaceWHOAEFIVS
Id: ClasificacionDesenlaceWHOAEFIVS
Title: "Método de clasificación de causalidad WHO-AEFI"
Description:  "Método de clasificación de causalidad WHO-AEFI"
* include codes from system ClasificacionDesenlaceWHOAEFICS

CodeSystem: ClasificacionDesenlaceWHOAEFICS
Id: ClasificacionDesenlaceWHOAEFICS
Title: "Método de clasificación de causalidad WHO-AEFI"
Description:  "Método de clasificación de causalidad WHO-AEFI"
* #A1 "Evento relacionado con la vacuna o cualquiera de sus componentes"	
* #A2 "Evento relacionado con una desviacion de calidad del producto biologico o la vacuna"
* #A3 "Evento relacionado con un error programatico"
* #A4 "Evento por estres que tuvo lugar inmediatemente antes, durante o inmediatamente despues del proceso de vacunacion"
* #B1 "La relacion temporal es congruente, pero no hay evidencia definitiva suficiente sobre una relacion causal con la vacuna (puede ser un evento recientemente asociadoa  la vacuna [señal])"
* #B2 "Factores determinantes para la clasificación muestran tendencias conflictivas a favor y en contra de una asociacion causal con la vacunació"
* #C "Causa Coincidente"
* #NC "No clasificable"


ValueSet: ClasificacionDesenlaceWHOUMCVS
Id: ClasificacionDesenlaceWHOUMCVS
Title: "Método de clasificación de causalidad WHO-UMC"
Description:  "Método de clasificación de causalidad WHO-UMC"
* include codes from system ClasificacionDesenlaceWHOUMCCS

CodeSystem: ClasificacionDesenlaceWHOUMCCS
Id: ClasificacionDesenlaceWHOUMCCS
Title: "Método de clasificación de causalidad WHO-UMC"
Description:  "Método de clasificación de causalidad WHO-UMC"

ValueSet: ClasificacionDesenlaceWHONaranjoVS
Id: ClasificacionDesenlaceWHONaranjoVS
Title: "Método de clasificación de causalidad WHO-Naranjo"
Description:  "Método de clasificación de causalidad WHO-Naranjo"
* include codes from system ClasificacionDesenlaceWHONaranjoCS

CodeSystem: ClasificacionDesenlaceWHONaranjoCS
Id: ClasificacionDesenlaceWHONaranjoCS
Title: "Método de clasificación de causalidad WHO-Naranjo"
Description:  "Método de clasificación de causalidad WHO-Naranjo"
