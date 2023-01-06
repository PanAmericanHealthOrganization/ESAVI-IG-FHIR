Alias: $v2-0136 = http://terminology.hl7.org/ValueSet/v2-0136
Alias: $ProfesionalNotificadorCS = http://paho.org/esavi/CodeSystem/ProfesionalNotificadorCS
Alias: $MedDRA = http://terminology.hl7.org/CodeSystem/MDRSPA
Alias: $ICD11mms = http://id.who.int/icd11/mms
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: $ATC = https://www.whocc.no/atc_ddd_index
Alias: $SCTSpa = http://snomed.info/sct/449081005

ValueSet: ViaAdminMedicamentoVS
Id: ViaAdminMedicamentoVS
Title: "Vías de Administración de Medicamentos"
Description: "Describe y lista las vías de administración de medicamentos para registro en ESAVI segun SNOMED CT"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system SNOMED_CT where concept is-a #736479009 "sitio de administración previsto de forma farmacéutica (sitio de administración previsto)"


ValueSet: CodPaises
Id: CodPaises
Title: "Códigos de Países"
Description: "Codigos definidos para la identificación de países segun norma ISO3166-N"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"

* include codes from system urn:iso:std:iso:3166



ValueSet: ComplicacionEmbarazoMedDRAVS
Id: ComplicacionEmbarazoMedDRAVS
Title: "Códigos MEDRA Complicaciones en Embarazo ESAVI "
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo mediante códigos MedDRA"
* include codes from system http://terminology.hl7.org/CodeSystem/mdr

ValueSet: ComplicacionEmbarazoOtroVS
Id: ComplicacionEmbarazoOtroVS
Title: "Otros Códigos Complicaciones en Embarazo ESAVI "
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo mediante códigos Snomed y CIE-10"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"

* include codes from system http://hl7.org/fhir/sid/icd-10
* include codes from system SCTSpa

ValueSet: EsaviMedDRAVS
Id: EsaviMedDRAVS
Title: "Códigos MedDRA Evento Adverso"
Description: "Codificacion Estandarizada de Evento Adverso en MedDRA"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"

* include codes from system http://terminology.hl7.org/CodeSystem/mdr


ValueSet: EsaviOtroVS
Id: EsaviOtroVS
Title: "Otros Códigos Evento Adverso"
Description: "Evento Adverso en otro sistema según Snomed, ATC y CIE-10"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system SCTSpa
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: SustanciaActivaVS
Id: SustanciaActivaVS
Title: "Sustancia Activa Medicamento"
Description: "Codificación Estandarizda de Sustancia Activa de Medicamento según Snomed, ATC y CIE-10"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system SCTSpa
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: MedicamentoGenericoVS
Id: MedicamentoGenericoVS
Title: "Nombre Genérico de Medicamentos"
Description: "Codificación Estandarizda del Nombre Genérico de Medicamento según ATC y CIE-10"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: MedicamentoOtroVS
Id: MedicamentoOtroVS
Title: "Nombre Genérico Medicamento"
Description: "Nombre Genérico de Medicamento según Snomed"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system SCTSpa


ValueSet: NombreComercialMEdicamentoVS
Id: NombreComercialMedicamentoVS
Title: "Nombre Comercial Medicamento"
Description: "Codificación Estandarizda del Nombre Comercial de Medicamento según ATC"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system ATC

ValueSet: CodigoWhoVacunaVS
Id: CodigoWhoVacunaVS
Title: "Codigo WHODrug de la vacuna"
Description: "Codificación Estandarizda del código de las Vacunas según WhoDrug"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system http://who-umc.org


ValueSet: CodigoOtroVacunaVS
Id: CodigoOtroVacunaVS
Title: "Nombre Genérico Vacunas Códigos no WHO"
Description: "Codificación Estandarizada de Nombre Genérico de las Vacunas según Snomed, ATC y CIE-10"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system SCTSpa
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10

ValueSet: NombreComercialVacunaVS
Id: NombreComercialVacunaVS
Title: "Nombre Comercial Vacunas"
Description: "Codificación Estandarizda del Nombre Comercial Vacuna en ATC"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system ATC



ValueSet: FormaFarmaceuticaVS
Id: FormaFarmaceuticaVS
Title: "Identificación Formas Farmacéuticas"
Description: "Describe y lista las formas farmaceuticas de medicamentos para registro en ESAVI segun SNOMED CT"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system SNOMED_CT where concept is-a #736478001 "forma farmacéutica básica (forma farmacéutica básica)"

ValueSet: EnfermedadesPreviasCodificacionVS
Id: EnfermedadesPreviasCodificacionVS
Title: "Enfermedades previas en un ESAVI-PAHO"
Description: "Describe las enfermedades previas en un ESAVI codificadas en CIE10, CIE11 o SNOMED CT"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system $ICD11mms
* include codes from system $ICD10
* include codes from system SCTSpa


ValueSet: CodigoNoWhoVacunaVS
Id: CodigoNoWhoVacunaVS
Title: "Código no WHODrug de la Vacuna"
Description: "Código no WHODrug de la Vacuna"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system CodigoNoWhoVacunaCS

CodeSystem: CodigoNoWhoVacunaCS
Id: CodigoNoWhoVacunaCS
Title: "Código no WHODrug de la Vacuna"
Description: "Código no WHODrug de la Vacuna"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system $ICD11mms
* include codes from system SCTSpa


ValueSet: CodigoWhoFabricanteVS
Id: CodigoWhoFabricanteVS
Title: "Fabricantes Vacuna"
Description: "Códigos Fabricantes Vacunas de WHO"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system CodigoWhoFabricanteCS

CodeSystem: CodigoWhoFabricanteCS
Id: CodigoWhoFabricanteCS
Title: "Fabricante   Vacuna"
Description: "Códigos Fabricantes Vacunas de WHO"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
//* #1 "SNOMED-CT"


ValueSet: SistemasDeCodificacionVS
Id: SistemasDeCodificacionVS
Title: "Sistemas De Codificacion"
Description: "Sistemas De Codificacion para Determinación de Códigos"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system SistemasDeCodificacionCS

CodeSystem: SistemasDeCodificacionCS
Id: SistemasDeCodificacionCS
Title: "Sistemas De Codificacion"
Description: "Sistemas De Codificacion para Determinación de Códigos"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #1 "SNOMED-CT"
* #2 "WHODrug"
* #3 "ATC"
//* #4 "CIE-10"
* #4 "CIE-11"
//* #6 "MedDRA"

ValueSet: RespuestaSiNoNosabeVS
Id: RespuestaSiNoNosabeVS
Title: "Respuestas Simples"
Description: "Códigos para capturar respuestas simples si/no/no sabe"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system RespuestaSiNoNosabeCS

CodeSystem: RespuestaSiNoNosabeCS
Id: RespuestaSiNoNosabeCS
Title: "Respuestas Simples"
Description:  "Códigos para capturar respuestas simples si/no/no sabe"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #1 "Si"
* #2 "No"
* #3 "No sabe"

ValueSet: RespuestaVerdaderoFalsoVS
Id: RespuestaVerdaderoFalsoVS
Title: "Códigos Booleanos"
Description: "Códigos respuestas simples Verdadero/Falso"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system RespuestaVerdaderoFalsoCS

CodeSystem: RespuestaVerdaderoFalsoCS
Id: RespuestaVerdaderoFalsoCS
Title: "Códigos Booleanos"
Description:  "Códigos respuestas simples Verdadero/Falso"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #1 "Verdadero"
* #2 "Falso"

ValueSet: GrupoEtnicoVS
Id: GrupoEtnicoVS
Title: "Grupos Étnicos"
Description:  "Códigos de Grupos Étnicos"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system GrupoEtnicoCS


CodeSystem: GrupoEtnicoCS
Id: GrupoEtnicoCS
Title: "Grupos Étnicos"
Description:  "Códigos de Grupos Étnicos"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #1 "Mestizo"
* #2 "Blanco"
* #3 "Mulato"
* #4 "Negro"
* #5 "Amerindio"
* #6 "Zambo"
* #0 "Otro"

ValueSet: CodigoMedicamentoVS
Id: CodigoMedicamentoVS
Title: "Codigo Medicamento"
Description:  "Codigo Medicamento"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system CodigoMedicamentoCS

CodeSystem: CodigoMedicamentoCS
Id: CodigoMedicamentoCS
Title: "Codigo Medicamento"
Description:  "Codigo Medicamento"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system SCTSpa
* include codes from system ATC
* include codes from system ICD11mms
* include codes from system http://who-umc.org

ValueSet: ModoVerificacionVacunaVS
Id: ModoVerificacionVacunaVS
Title: "Modos Verificación Vacuna Previa"
Description:  "Modos de Verificacion de Vacuna o Esquema de Vacunación Completado"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system ModoVerificacionVacunaCS

CodeSystem: ModoVerificacionVacunaCS
Id: ModoVerificacionVacunaCS
Title: "Modo de Verificación de Vacunación Previa"
Description:  "Modos de Verificacion de Vacuna o Esquema de Vacunación Completado"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #1 "Carnet/Registro físico" 
* #2 "Carnet/Registro electrónico"
* #3 "Declaración verbal" 
* #4 "Historia clínica corroborada con carnet" 
* #5 "No se sabe" 
* #O "Otro"

ValueSet: ModoConfirmacionInfeccionVS
Id: ModoConfirmacionInfeccionVS
Title: "Modos Confirmación Infección COVID-19"
Description: "Modos de Confirmacion de Infección por COVID-19"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system ModoConfirmacionInfeccionCS

CodeSystem: ModoConfirmacionInfeccionCS
Id: ModoConfirmacionInfeccionCS
Title: "Modo de Confirmación de la Infección"
Description: "Modos de Confirmacion de Infección por COVID-19"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #1 "Por criterio clínico epidemiológico" 
* #2 "Por inmunoensayo"
* #3 "Por pruebas moleculares"
* #4 "Por aislamiento viral" 
* #5 "Otra"


ValueSet: EventoAdversoVacunaVS
Id: EventoAdversoVacunaVS
Title: "Eventos Adversos"
Description:  "Códigos de Posibles Eventos Adversos a Vacuna"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system EventoAdversoVacunaCS

CodeSystem: EventoAdversoVacunaCS
Id: EventoAdversoVacunaCS
Title: "Eventos Adversos"
Description:  "Códigos de Posibles Eventos Adversos a Vacuna"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
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
Title: "Desenlaces Tras ESAVI"
Description:  "Clasificación de Desenlace Tras Sufrir ESAVI"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system ClasificacionDesenlaceCS

CodeSystem: ClasificacionDesenlaceCS
Id: ClasificacionDesenlaceCS
Title: "Desenlaces Tras ESAVI"
Description:  "Clasificación de Desenlace Tras Sufrir ESAVI"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #1 "Recuperado Completamente"
* #2 "En recuperación"
* #3 "No recuperado"
* #4 "Recuperado con secuelas"
* #5 "Muerte"
* #0 "Desconocido"

ValueSet: InvestigacionTipoVS
Id: InvestigacionTipoVS
Title: "Tipo de Investigación ESAVI"
Description:  "Tipo de Investigación Generada tras Reporte de ESAVI"
* include codes from system InvestigacionTipoCS

CodeSystem: InvestigacionTipoCS
Id: InvestigacionTipoCS
Title: "Tipo de Investigación ESAVI"
Description:  "Tipo de Investigación Generada tras Reporte de ESAVI"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #1 "Concisa"
* #2 "Completa"

ValueSet: SeccionesNotificacionVS
Id: SeccionesNotificacionVS
Title: "Secciones Notificación EDAVI"
Description: "Conjunto de Valores para las Secciones de la Notificación"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* codes from system SeccionesNotificacionCS

CodeSystem: SeccionesNotificacionCS
Id: SeccionesNotificacionCS
Title: "Secciones Notificación ESAVI"
Description: "Conjunto de Valores para las Secciones de la Notificación"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
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
Id: ComplicacionEmbarazoVS
Title: "Complicaciones Embarazo"
Description: "Conjunto de Valores para la Sección de Complicaciones Embarazo ESAVI"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* codes from system ComplicacionEmbarazoCS

CodeSystem: ComplicacionEmbarazoCS
Id: ComplicacionEmbarazoCS
Title: "Complicaciones de Embarazo"
Description: "Códigos para las Complicaciones de Embarazo"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #01 "Del Embarazo"
* #02 "Del Parto"
* #03 "Puerperio fetal"
* #04 "Neonatal"
* #05 "Anomalía Congénita"

ValueSet: ProfesionalNotificadorVS
Id: ProfesionalNotificadorVS
Title: "Tipo de Profesional Notificador"
Description: "Códigos de Tipo de Notificadores de ESAVI para PAHO"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-02-02"
* ^publisher = "PAHO - Pan American Health Organization"
* include codes from system ProfesionalNotificadorCS

CodeSystem: ProfesionalNotificadorCS
Id: ProfesionalNotificadorCS
Title: "Tipo de Profesional Notificador"
Description: "Códigos de Tipo de Notificadores de ESAVI para PAHO"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-02-02"
* ^publisher = "PAHO - Pan American Health Organization"
* ^content = #complete
* ^count = 6
* #1 "Médico"
* #2 "Farmacéutico"
* #3 "Otro Profesional de la Salud"
* #4 "Abogado"
* #5 "Usuario u otro profesional no sanitario"
* #6 "No definido por el usuario"


ValueSet: CodigoMedDRAEnfPreviaVS
Id: CodigoMedDRAEnfPreviaVS
Title: "Códigos de MedDRA para representar enfermedades previas en un ESAVI-PAHO"
Description: "Describe las enfermedades previas en un ESAVI codificadas en MedDRA"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-02-02T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2022-02-02"
* ^publisher = "PAHO - Pan American Health Organization"
* include codes from system $MedDRA


ValueSet: DosisVacunaVS
Id: DosisVacunaVS
Title: "Dosis vacuna"
Description:  "Indicador de que dosis se ha administrando"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system DosisVacunaCS

CodeSystem: DosisVacunaCS
Id: DosisVacunaCS
Title: "Dosis Vacuna"
Description:  "Indicador de que dosis se ha administrando"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #1 "Primera Dosis"	
* #2 "Segunda Dosis"
* #3 "Refuerzo"
* #4 "Primer Refuerzo"
* #5 "Segundo Refuerzo"


ValueSet: SistemaClasfCausalidadVS
Id: SistemaClasfCausalidadVS
Title: "Tipo de Método de clasificación de causalidad"
Description:  "Códigos para Tipos Métodos de Clasificación de Causalidad"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system SistemaClasfCausalidadCS

CodeSystem: SistemaClasfCausalidadCS
Id: SistemaClasfCausalidadCS
Title: "Tipo de Método de clasificación de causalidad"
Description:  "Códigos para Tipos de Métodos de Clasificación de Causalidad"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #WHO-UMC "WHO-UMC"	
* #WHO-AEFI "WHO-AEFI"
* #Naranjo "Naranjo"
* #otro "Otro sistema de clasificacion de causalidad"


ValueSet: ClasificacionDesenlaceWHOAEFIVS
Id: ClasificacionDesenlaceWHOAEFIVS
Title: "Clasificación de causalidad WHO-AEFI"
Description:  "Método de clasificación de causalidad WHO-AEFI"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system ClasificacionDesenlaceWHOAEFICS

CodeSystem: ClasificacionDesenlaceWHOAEFICS
Id: ClasificacionDesenlaceWHOAEFICS
Title: "Clasificación de causalidad WHO-AEFI"
Description:  "Método de clasificación de causalidad WHO-AEFI"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
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
Title: "Clasificación de causalidad WHO-UMC"
Description:  "Método de clasificación de causalidad WHO-UMC"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system ClasificacionDesenlaceWHOUMCCS

CodeSystem: ClasificacionDesenlaceWHOUMCCS
Id: ClasificacionDesenlaceWHOUMCCS
Title: "Clasificación de causalidad WHO-UMC"
Description:  "Método de clasificación de causalidad WHO-UMC"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #01 "Definitivo"
* #02 "Probable"
* #03 "Posible"
* #04 "Improbable"
* #05 "Condicional / No clasificado"
* #06 "No evaluable / No clasificable"

ValueSet: ClasificacionDesenlaceNaranjoVS
Id: ClasificacionDesenlaceNaranjoVS
Title: "Clasificación de causalidad Naranjo"
Description:  "Método de clasificación de causalidad Naranjo"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system ClasificacionDesenlaceNaranjoCS

CodeSystem: ClasificacionDesenlaceNaranjoCS
Id: ClasificacionDesenlaceNaranjoCS
Title: "Clasificación de causalidad Naranjo"
Description:  "Método de clasificación de causalidad Naranjo"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #01 "Definitivo"
* #02 "Probable"
* #03 "Posible"
* #04 "Improbable"


Alias: $DirOrgNotiCS = http://paho.org/esavi/CodeSystem/DirOrgNotiCS

ValueSet: DirOrgNotiVS
Id: DirOrgNotiVS
Title: "Códigos PAHO para Direcciones"
Description: "Conjunto de Valores para dirección según OPS"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* include codes from system $DirOrgNotiCS