Alias: $v2-0136 = http://terminology.hl7.org/ValueSet/v2-0136

ValueSet: ViaAdminMedicamentoVS
Id: ViaAdminMedicamentoVS
Description: "Codificacion Estandarizada de vías por las Cuales se Ingresa un Medicamento"
* include codes from system SCT

ValueSet: ComplicacionEmbarazoMedraVS
Id: ComplicacionEmbarazoMedraVS
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo"
* include codes from system http://terminology.hl7.org/CodeSystem/mdr

ValueSet: ComplicacionEmbarazoOtroVS
Id: ComplicacionEmbarazoOtroVS
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo"
* include codes from system http://hl7.org/fhir/sid/icd-10
* include codes from system SCT

ValueSet: EsaviMedraVS
Id: EsaviMedraVS
Description: "Codificacion Estandarizada de Evento Adverso en Medra"
* include codes from system http://terminology.hl7.org/CodeSystem/mdr


ValueSet: EsaviOtroVS
Id: EsaviOtroVS
Description: "Codificacion Estandarizada de Evento Adverso en otro sistema que no sea Medra"
* include codes from system SCT
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: SustanciaActivaVS
Id: SustanciaActivaVS
Description: "Codificación Estandarizda de Sustancia Activa de Medicamento"
* include codes from system SCT
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: MedicamentoGenericoVS
Id: MedicamentoGenericoVS
Description: "Codificación Estandarizda del Nombre Genéricode Medicamento"
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: MedicamentoOtroVS
Id: MedicamentoOtroVS
Description: "Codificación Estandarizda del Nombre Genéricode Medicamento"
* include codes from system SCT


ValueSet: NombreComercialMEdicamentoVS
Id: NombreComercialMedicamentoVS
Description: "Codificación Estandarizda del Nombre Comercial de Medicamento"
* include codes from system ATC

ValueSet: CodigoWhoVacunaVS
Id: CodigoWhoVacunaVS
Description: "Codificación Estandarizda de Nomnbre Genérico de las Vacunas"
* include codes from system http://who-umc.org. 


ValueSet: CodigoOtroVacunaVS
Id: CodigoOtroVacunaVS
Description: "Codificación Estandarizda de Nomnbre Genérico de las Vacunas"
* include codes from system SCT
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: NombreComercialVacunaVS
Id: NombreComercialVacunaVS
Description: "Codificación Estandarizda del Nombre Comercial Vacuna"
* include codes from system ATC




ValueSet: FormaFarmaceuticaVS
Id: FormaFarmaceuticaVS
Description: "Codificación Estandarizda de la Forma Farmacéutica de Medicamento"
* include codes from system ATC


ValueSet: EnfermedadesPreviasCodificacionVS
Id: EnfermedadesPreviasCodificacionVS
Description: "Codificación Estandarizada de Diagnósticos"
* include codes from system http://snomed.info/sct



ValueSet: RespuestaSiNoNosabeVS
Id: RespuestaSiNoNosabeVS
Description: "Para capturar respuestas simples si/no/no sabe"
* include codes from system RespuestaSiNoNosabeCS

CodeSystem: RespuestaSiNoNosabeCS
Id: RespuestaSiNoNosabeCS
Title: "Respuestas Si/No/No Sabe"
Description:  "Respuestas Si/No/No Sabe"
* #1 "Si"
* #2 "No"
* #3 "No sabe"

ValueSet: RespuestaVerdaderoFalsoVS
Id: RespuestaVerdaderoFalsoVS
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
Title: "Modos de Verificacion de Vacuna"
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
Title: "Modos de Confirmacion de Infeccion"
Description: "Modos de Confirmacion de Infeccion"
* include codes from system ModoConfirmacionInfeccionCS

CodeSystem: ModoConfirmacionInfeccionCS
Id: ModoConfirmacionInfeccionCS
Title: "Modo de Confirmación de la Infección"
Description:  "Modo de Confirmación de la Infección"
* #1 "Solo por las manifestaciones clínicas" 
* #2 "Por inmunoensayos"
* #3 "Por pruebas moleculares" 
* #0 "Otro"


ValueSet: EventoAdversoVacunaVS
Id: EventoAdversoVacunaVS
Title: "Evento Adverso  de Vacuna"
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
Title: "Clasificación de Desenlace"
Description:  "Clasificación de Desenlace"
* include codes from system ClasificacionDesenlaceCS

CodeSystem: ClasificacionDesenlaceCS
Id: ClasificacionDesenlaceCS
Title: "Clasificacion de Desenlace"
Description:  "Clasificacion de Desenlace"
* #1 "Recuperado"
* #2 "En remisión / recuperación"
* #3 "No recuperado"
* #4 "Recuperado con secuelas"
* #5 "Muerte"
* #0 "Desconocido"

ValueSet: InvestigacionTipoVS
Id: InvestigacionTipoVS
Title: "Tipo de Investigación"
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
Title: "Conjunto de Valores para las Secciones de la Notificación"
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
Title: "Conjunto de Valores para la sección de Complicación de Embarazo"
Description: "Conjunto de Valores para la Sección de Complicaciones Embarazo ESAVI"
* codes from system ComplicacionEmbarazCS

CodeSystem: ComplicacionEmbarazCS
Title: "Códigos para Complicaciones de Embarazo"
Description: "Códigos para las Complicaciones de Embarazo"
* #01 "Del Embarazo"
* #02 "Del Parto"
* #03 "Puerperio fetal"
* #04 "Neonatal"
* #05 "Anomalía Congénita"


ValueSet: ProfesionalNotificadorVS
Title: "Conjunto de Valores para las Secciones de la Notificación"
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
Title: "Conjunto de valores de Dirección"
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

