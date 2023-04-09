Alias: $v2-0136 = http://terminology.hl7.org/ValueSet/v2-0136
Alias: $ProfesionalNotificadorCS = http://paho.org/esavi/CodeSystem/ProfesionalNotificadorCS
Alias: $MedDRA = http://terminology.hl7.org/CodeSystem/MDRSPA
Alias: ICD11mms = http://id.who.int/icd11/mms
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: SCTSpa = http://snomed.info/sct/449081005
//Alias: ICD11mms = http://id.who.int/icd/entity
Alias:   SCT = http://snomed.info/sct
Alias:   LOINC = http://loinc.org
//Alias:   ATCCS = http://www.whocc.no/atc
Alias:   m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
RuleSet: RuleSetMeta
* ^version = "0.5.0"
* ^status = #draft


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
* include codes from system http://snomed.info/sct where concept is-a #736479009 "sitio de administración previsto de forma farmacéutica (sitio de administración previsto)"
//* include codes from system http://snomed.info/sct


 
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


ValueSet: EsaviMedDRAVS
Id: EsaviMedDRAVS
Title: "Código MedDRA del Evento Adverso notificado"
Description: "Código MedDRA del Evento Adverso notificado"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"

* include codes from system EsaviMedDRACS

ValueSet: ComplicacionEmbarazoMedDRAVS
Id: ComplicacionEmbarazoMedDRAVS
Title: "Códigos MEDDRA Complicaciones en Embarazo ESAVI "
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo mediante códigos MedDRA"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"

* include codes from system EsaviMedDRACS

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

* include codes from system where concept is-a ICD10 #D01 "Problemas ESAVI"  
* include codes from system http://snomed.info/sct where concept is-a #391103005 "evento adverso posterior a tratamiento complementario (trastorno)"  

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
* include codes from system SCT where concept is-a #391103005 "evento adverso posterior a tratamiento complementario (trastorno)"
* include codes from system ICD11mms where concept is-a #XY0Y "Afección principal"
* include codes from system $ICD10
/*
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
* include codes from system SCT
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10
*/





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
* include codes from system http://who-umc.org where concept is-a #C1 "Vacunas"




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
* include codes from system http://snomed.info/sct where concept is-a #736478001 "forma farmacéutica básica (forma farmacéutica básica)"

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
* include codes from system http://id.who.int/icd11/mms where concept is-a  #XY0Y "Afección principal"
* include codes from system http://hl7.org/fhir/sid/icd-10
* include codes from system http://snomed.info/sct where concept is-a  #391103005 "evento adverso posterior a tratamiento complementario (trastorno)"


ValueSet: CodigoNoWhoVacunaVS //Oks con las vacunas de Covid, no usa mas Codesystem
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
/*
* ICD11mms#X68M6 "vacunas COVID-19"
* ICD11mms#XM1AU2 "Sinopharm WIBP-CorV"
* ICD11mms#XM1G90 "Covaxin"
* ICD11mms#XM1NL1  "Vacunas contra COVID-19, virus inactivado"
* ICD11mms#XM3DT5 "Vacuna COVID-19 Moderna"
* ICD11mms#XM4YL8 "Vacuna contra COVID-19 AstraZeneca"
* ICD11mms#XM5JC5 "Vacunas contra COVID-19, subunidad proteica del virus"
* ICD11mms#XM5QM6 "Sputnik-Light"
* ICD11mms#XM5ZJ4 "Gam-Covid-Vac"
* ICD11mms#XM6AT1 "COVID-19 vaccine, DNA based"
* ICD11mms#XM6QV1 "Vacuna contra COVID-19 Janssen"
* ICD11mms#XM6SZ8  "EpiVacCorona"
* ICD11mms#XM7HT3 "CoronaVac®"
* ICD11mms#XM8NQ0 "Comirnaty®"
* ICD11mms#XM97N6 "QazVac"
* ICD11mms#XM97T2 "Covishield®"
* ICD11mms#XM9QW8 "Vacunas contra COVID-19, vector viral no replicante"
* SCTSpa#1157024006 "vacuna virus entero inactivado contra SARS-CoV-2"
* SCTSpa#1187593009 "vacuna de plásmido de ADN de SARS-CoV-2 que codifica proteína de espiga"
* SCTSpa#28531000087107 "vacuna contra COVID-19"
* SCTSpa#31311000087104 "CoronaVac vacuna COVID-19 virus entero inactivado"
* SCTSpa#31431000087100 "CONVIDECIA vacuna COVID-19 vector viral no replicante"
* SCTSpa#33201000087108 "SINOPHARM - WIBP vacuna COVID-19 virus entero inactivado"
* SCTSpa#33211000087105 "COVAXIN vacuna COVID-19 virus entero inactivado"
* SCTSpa#33391000087109 "ABDALA vacuna COVID-19 proteína de espiga recombinante"
* SCTSpa#33421000087101 "EpiVacCorona vacuna COVID-19 proteína de espiga recombinante"
* SCTSpa#33451000087108 "QazCovid-in vacuna COVID-19 virus entero inactivado"
* SCTSpa#424571000221103 "VAXZEVRIA vacuna COVID-19 vector viral no replicante"
* SCTSpa#424581000221100 "COVISHIELD vacuna COVID-19 vector viral no replicante"
* SCTSpa#424591000221102 "JANSSEN vacuna COVID-19 vector viral no replicante"
* SCTSpa#424711000221100 "SPUTNIK V vacuna COVID-19 vector viral no replicante"
* SCTSpa#424731000221108 "SPIKEVAX vacuna COVID-19 ARNm"
* SCTSpa#424751000221104 "COMIRNATY vacuna COVID-19 ARNm"
* SCTSpa#424821000221101 "SPUTNIK LIGTH vacuna COVID-19 vector viral no replicante"
*/
* include codes from system ICD11mms
* include codes from system http://snomed.info/sct where concept is-a #410942007 "fármaco o medicamento (sustancia)"
* include codes from system ATCCS where concept is-a #J07 "Vacunas"



/*
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
//* #1 "SNOMED-CT"
*/

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

* #INP	"Inovio Pharmaceuticals"
* #WIB	"Wuhan Institute of Biological Products (CNBG)"
* #SII	"Serum Institute of India"
* #KBP	"Kentucky BioProcessing"
* #BWB	"Beijing WANTAI Biological"
* #CAB	"CanSino Biologicals"
* #MOD	"Moderna"
* #BMB	"Beijing Minhai Biotechnology"
* #IIB	"Israel Institute for Biological Research"
* #VID	"VIDO-Intervac"
* #BIB	"Beijing Bio-Institute Biological Products (CNBG)"
* #GEN	"Genexine"
* #CEC	"Cellid Co"
* #JAP	"Janssen Pharmaceuticals"
* #COV	"Vaxxinity Inc"
* #SIN	"Sinovac"
* #SRC	"State Research Center of Virology & Biotechnology"
* #CHU	"Chumakov"
* #ART	"Arcturus Therapeutics"
* #RIB	"Research Institute for Biological Safety Problems"
* #EUB	"EUBiologics"
* #IMB	"Insitute of Medical Biology"
* #SGM	"Shenzhen GenoImmune Medical Institute"
* #PFI	"Pfizer BioNTech"
* #AIV	"Aivita Biomedical"
* #NOV	"Novavax"
* #GRI	"Gamaleya Research Institute"
* #ANZ	"Anhui Zhifei Longcom Biopharmaceutical"
* #SPG	"Sanofi Pasteur - GSK"
* #CGE	"Center for Genetic Engineering and Biotechnology"
* #AKB	"Akston Biosciences"
* #CUR	"Curevac"
* #SHI	"Shionogi"
* #MVB	"Medigen Vaccine Biologics"
* #ANB	"AnGes Biopharmaceutical"
* #ASZ	"AstraZeneca"
* #NPB	"Nanogen Pharmaceutical Biotechnology"
* #BHB	"Bharat Biotech"
* #IFV	"Instituto Finlay de Vacunas"
* #VAL	"Valneva"
* #BIE	"Biological E"
* #MEI	"Medicago Inc"
* #GOL	"GeneOne LifeScience"
* #CLB	"Clover Biopharmaceuticals"
* #ZYC	"Zydus Cadila"
* #SIU	"Sichuan University"
* #RET	"ReiThera"
* #ERU	"Erciyes University"
* #WBI	"Walvax Biotech"
* #JUL	"Julphar"
* #SHP	"Shifa Pharmed"
* #VPL	"Vaxine Pty Ltd"
* #RAZ	"Razi Vaccine and Serum Research Institute"
* #UNKNOWN	"Unknown"
* #HIT	"Health Institutes of Turkey"
* #NVSII	"National Vaccine and Serum Institute, China"
* #ODIR	"Organization of Defensive Innovation and Research"
* #PII	"Pasteur Institute of Iran"
* #BUMS	"Baqiyatallah University of Medical Sciences"


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



/*
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
*/

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
* include codes from system SCT where concept is-a #105590001
* include codes from system ATCCS where concept is-a #A "Alimentary Track and Metabolism"
* include codes from system ICD11mms where concept is-a #XM4843

/*
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
* #68001016 "Levotiroxina"
* #XM2WC1 "levotiroxina sódica"
* #783639004 "levotiroxina sódica anhidra 100 microgramos por cada comprimido para administración oral"
* #H03AA01 "levotiroxina sodica"
* #1483501003 "Lantus"
* #XM0K72 "Insulina de acción lenta"
* #383491000221101 "LANTUS [INSULINA GLARGINA 100 U/ML] SOLUCION INYECTABLE, CARTUCHO de 3 ML"
* #A10AE04 "insulina glargina"
*/


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
* #2 "por inmunoensayo"
* #3 "Por pruebas moleculares"
* #4 "Por aislamiento viral" 
* #5 "Otra"

/*
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
*/


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




/*
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
*/
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
* include codes from system EsaviMedDRACS





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
* include codes from system DirOrgNotiCS


CodeSystem: PTSctCS
Id: PTSctCS
Title: "Códigos Snomed Reducido"
Description: "Codificación Snomed reducido"

* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-01-05T21:57:10.292+00:00"
* ^meta.source = "#yyuCovUJiH7vKAgN"
* ^url = "http://snomed.info/sct"
* ^version = "1.00"
* ^status = #active
* ^experimental = false
* ^date = "2019-03-20T00:00:00-04:00"
* ^publisher = "Snomed-CT"
* ^caseSensitive = true
* ^content = #complete
* ^count = 136

* #410942007 "fármaco o medicamento (sustancia)"
  * #424571000221103	"VAXZEVRIA vacuna COVID-19 vector viral no replicante"
  * #31301000087101	"SINOPHARM - BIBP vacuna COVID-19 virus entero inactivado"
  * #33391000087109	"ABDALA vacuna COVID-19 proteína de espiga recombinante"
  * #31431000087100	"CONVIDECIA vacuna COVID-19 vector viral no replicante"
  * #31311000087104	"CoronaVac vacuna COVID-19 virus entero inactivado"
  * #33211000087105	"COVAXIN vacuna COVID-19 virus entero inactivado"
  * #424751000221104	"COMIRNATY vacuna COVID-19 ARNm"
  * #28531000087107	"vacuna contra COVID-19"
  * #1187593009	"vacuna de plásmido de ADN de SARS-CoV-2 que codifica proteína de espiga"
  * #1157024006	"vacuna virus entero inactivado contra SARS-CoV-2"
  * #424591000221102	"JANSSEN vacuna COVID-19 vector viral no replicante"
  * #424731000221108	"SPIKEVAX vacuna COVID-19 ARNm"
  * #424581000221100	"COVISHIELD vacuna COVID-19 vector viral no replicante"
  * #33421000087101	"EpiVacCorona vacuna COVID-19 proteína de espiga recombinante"
  * #424711000221100	"SPUTNIK V vacuna COVID-19 vector viral no replicante"
  * #33451000087108	"QazCovid-in vacuna COVID-19 virus entero inactivado"
  * #424821000221101	"SPUTNIK LIGTH vacuna COVID-19 vector viral no replicante"
  * #33201000087108	"SINOPHARM - WIBP vacuna COVID-19 virus entero inactivado"
  
* #105590001 "Sustancia"
  * #783639004	"levotiroxina sódica anhidra 100 microgramos por cada comprimido para administración oral"
  * #383491000221101	"LANTUS [INSULINA GLARGINA 100 U/ML] SOLUCION INYECTABLE, CARTUCHO de 3 ML"

* #391103005 "evento adverso posterior a tratamiento complementario (trastorno)"  
  * #40930008	"hipotiroidismo"
  * #414916001 "obesidad"
  * #46635009	"Diabetes Melitus Tipo I"
  * #17369002	"Aborto espontáneo"
  * #213338000 "eritema en sitio de inyección"
  * #95392007	"edema en el sitio de inyecion"
  * #95388000	"Dolor en el sitio de inyección"
  * #386661006 "fiebre"
  * #193093009 "parálisis de Bell"
  * #1010234007	"otalgia derecha"
  * #60862001	"acúfenos"

* #736479009 "(Dose form intended site (intended site))"
  * #46992007	"Pill"
  * #385043007	"Granules"
  * #385048003	"Cachet"
  * #385049006	"Capsule"
  * #385050006	"Hard capsule"
  * #385051005	"Soft capsule"
  * #385055001	"Tablet"
  * #385057009	"Film-coated tablet"
  * #385064006	"Pillule"
  * #385087003	"Lozenge"
  * #385099005	"Cream"
  * #385100002	"Gel"
  * #385101003	"Ointment"
  * #385115001	"Collodion"
  * #385117009	"Poultice"
  * #385174007	"Pessary"
  * #385194003	"Suppository"
  * #385286003	"Implant"
  * #420243009	"Tampon (basic dose form)"
  * #420275007	"Semi-solid dose form"
  * #420460001	"Film"
  * #420699003	"Liquid dose form"
  * #420768007	"Pellet"
  * #421079001	"Pastille"
  * #421131006	"Gaseous dose form"
  * #421166008	"Foam"
  * #421288004	"Sponge"
  * #421378002	"Solid dose form"
  * #421532009	"Insert"
  * #421890007	"Oil"
  * #422186009	"Tincture"
  * #422259002	"Spirit"
  * #426210003	"Gum"
  * #429885007	"Bar"
  * #738997003	"Elixir"
  * #738998008	"Emulsion"
  * #739000003	"Lotion (basic dose form)"
  * #739001004	"Lyophilisate"
  * #739002006	"Paste"
  * #739003001	"Patch (basic dose form)"
  * #739005008	"Powder (basic dose form)"
  * #739006009	"Solution"
  * #739007000	"Stick (basic dose form)"
  * #739008005	"Suspension"
  * #739009002	"Syrup"
  * #739010007	"Tape (basic dose form)"
  * #758679000	"Strip"
  * #761876003	"Lyophilized powder (basic dose form)"
  * #761877007	"Effervescent tablet"
  * #761897002	"Effervescent granules (basic dose form)"
  * #762948008	"Effervescent powder (basic dose form)"
  * #763824009	"Gas"
  * #764771001	"Ring"
  * #770102009	"Pressurized solution (basic dose form)"
  * #770103004	"Pressurized suspension (basic dose form)"
  * #782888008	"Pressurized emulsion (basic dose form)"

* #736478001 "forma farmacéutica básica (forma farmacéutica básica)"
  * #1230183009	"Dispersion"
  * #1230206006	"Compressed lozenge"
  * #1230217007	"Molded lozenge (basic dose form)"
  * #1230223002	"Lacquer (basic dose form)"
  * #1230326008	"Compressed gas"
  * #1230327004	"Cryogenic gas"
  * #1230328009	"Liquified gas (basic dose form)"
  * #1230334002	"Coated capsule (basic dose form)"
  * #1230387002	"Coated granules (basic dose form)"
  * #1230388007	"Coated tablet"
  * #1231321009	"Cement (basic dose form)"
  * #1231568003	"System"
  * #1231710002	"Pure liquid (basic dose form)"
  * #1231762000	"Impregnated material (basic dose form)"
  //* #736479009	"Dose form intended site (intended site)"
  * #738904002	"Cutaneous (intended site)"
  * #738906000	"Dental"
  * #738908004	"Endocervical (intended site)"
  * #738910002	"Gastroenteral (intended site)"
  * #738943003	"Gingival"
  * #738945005	"Intrauterine (intended site)"
  * #738946006	"Intravesical"

  * #738948007	"Nasal"
  * #738952007	"Ocular (intended site)"
  * #738956005	"Oral"
  * #738982001	"Oromucosal"
  * #738983006	"Otic"
  * #738984000	"Parenteral (intended site)"
  * #738985004	"Pulmonary (intended site)"
  * #738986003	"Rectal (intended site)"
  * #738987007	"Transdermal (intended site)"
  * #738988002	"Urethral"
  * #738989005	"Vaginal"
  * #761829007	"Sublingual (intended site)"
  * #762070008	"Intraocular (intended site)"
  * #763825005	"Buccal"
  * #764295003	"Subcutaneous (intended site)"
  * #764376008	"Enteral (intended site)"
  * #764786007	"Oropharyngeal (intended site)"
  * #770101002	"Endotracheopulmonary (intended site)"
  * #783351009	"Intraperitoneal"
  * #785909009	"Intralesional (intended site)"
  * #840615007	"Intraarticular"
  * #1230218002	"Periodontal"
  * #1231459002	"Extracorporeal (intended site)"

CodeSystem: ATCCS
Id: ATCCS
Title: "Códigos ATC medicamentos, vacunas"
Description: "Códigos ATC medicamentos, vacunas"
* ^url = "http://www.whocc.no/atc"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-01-05T21:57:10.292+00:00"
* ^meta.source = "#yyuCovUJiH7vKAgN"
* ^version = "1.00"
* ^status = #active
* ^experimental = false
* ^date = "2019-03-20T00:00:00-04:00"
* ^caseSensitive = true
* ^content = #complete
* ^count = 9

* #J07 "Vacunas"
  * #J07BN01	"Vacuna COVID 19, basada en ARNm"
  * #J07BN	"Vacuna COVID 19"
  * #J07BN04	"Vacuna COVID 19, subunidad proteica"
  * #J07BN02	"Vacuna COVID 19, vector viral no replicante"
  * #J07BN03	"Vacuna COVID 19, virus inactivado"
* #A "Alimentary Track and Metabolism"
  * #H03AA01	"levotiroxina sodica"
  * #A10AE04	"insulina glargina"




CodeSystem: ICD10
Id: ICD10
Title: "ICD-10"
Description: "International Classification of Diseases revision 10 (ICD 10) - Spanish"
* ^url = "http://hl7.org/fhir/sid/icd-10"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #D01 "Problemas ESAVI"  
  * #E03.9	"Hipotiroidismo, no especificado"
  * #E66.9	"Obesidad, no especificada"
  * #E10.9	"Diabetes mellitus insulinodependiente, sin mención de complicación"
  * #O03.9	"Aborto espontáneo completo o no especificado, sin complicación"
  * #L53.9	"Afección eritematosa, no especificada"
  * #R60.0	"Edema localizado"
  * #R52	  "Dolor, no clasificado en otra parte"
  * #R50	  "Fiebre de otro origen y de origen desconocido"
  * #G51.0	"Paralisis de Bell"
  * #H92.0	"Otalgia"
  * #H93.1	"Tinnitus"

CodeSystem: ICD11
Id: ICD11
Title: "ICD11"
Description: "ICD11"
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2023-01-05T21:57:10.292+00:00"
* ^meta.source = "#yyuCovUJiH7vKAgN"
* ^url = "http://id.who.int/icd11/mms"
* ^version = "1.00"
* ^status = #active
* ^experimental = false
* ^date = "2019-03-20T00:00:00-04:00"
* ^publisher = "CIE-11"
* ^contact.name = "CIE-11"
* ^caseSensitive = true
* ^content = #complete
* ^count = 36

* #XM68M6 "Vacunas contra el COVID-19"
  * #XM5JC5	"Vacunas contra COVID-19, subunidad proteica del virus"
  * #XM4YL8	"Vacuna contra COVID-19 AstraZeneca"
  * #XM8866	"BBIBP-CorV"
  * #XM1G90	"Covaxin"
  * #XM97T2	"Covishield®"
  * #XM9QW8	"Vacunas contra COVID-19, vector viral no replicante"
  * #XM7HT3	"CoronaVac®"
  * #XM8NQ0	"Comirnaty®"
  * #X68M6	"vacunas COVID-19"
  * #XM6AT1	"COVID-19 vaccine, DNA based"
  * #XM1NL1 	"Vacunas contra COVID-19, virus inactivado"
  * #XM6QV1	"Vacuna contra COVID-19 Janssen"
  * #XM3DT5	"Vacuna COVID-19 Moderna"
  * #XM85P5	"Covi-Vac"
  * #XM6SZ8 	"EpiVacCorona"
  * #XM5ZJ4	"Gam-Covid-Vac"
  * #XM9FQ7	"Hayat-Vax"
  * #XM97N6	"QazVac"
  * #XM5QM6	"Sputnik-Light"
  * #XM1AU2	"Sinopharm WIBP-CorV"

* #XM4843 "Fármacos Z" 
  * #XM2WC1	"levotiroxina sódica"
  * #XM0K72	"Insulina de acción lenta"

* #XY0Y "Afección principal"
  * #5A00	"Hipotiroidismo"
  * #5B81	"Obesidad"
  * #5A10	"Diabetes mellitus tipo 1"
  * #JA00	"Aborto"
  * #ME64.0	"Eritema"
  * #MG29	"Edema"
  * #MG31.Y	"Otro(a)(s) dolor agudo especificado(a)(s)"
  * #MG26	"Fiebre de otro origen o de origen desconocido"
  * #8B88.0	"Parálisis de Bell"
  * #AB70.2	"Otalgia"
  * #MC41	"Tinnitus"

CodeSystem: EsaviMedDRACS //Oks y con TODOS los valores necesarios y algunos dummies
Id: EsaviMedDRACS
Title: "Códigos MedDRA Evento Adverso"
Description: "Codificacion Estandarizada de Evento Adverso en MedDRA"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #10021114 "Hipotiroidismo"
* #10029883 "Obesidad"
* #10067584 "Diabetes Melitus Tipo I"
* #10027649 "Aborto natural"
* #10022061 "Eritema en la zona de inyección"
* #10022058 "Edema en la zona de inyección"
* #10022086 "Dolor en la zona de inyección"
* #10016558 "Fiebre"
* #10004223 "Paralisis de Bell"
* #10014020 "Dolor de oídos"
* #10043882 "Acúfenos"
//Dummies
* #10002218 "Anafilaxia"
* #10016179 "Desmayo"

CodeSystem: CodigoWhoVacunaCS
Id: CodigoWhoVacunaCS
Title: "Codigos WHODrug de la vacuna"
Description: "Codificación Estandarizda del código de las Vacunas según WhoDrug"

* ^meta.versionId = "2"
* ^meta.lastUpdated = "2023-01-05T21:57:10.292+00:00"
* ^meta.source = "#yyuCovUJiH7vKAgN"
* ^url = "http://who-umc.org"
* ^version = "1.00"
* ^status = #active
* ^experimental = false
* ^date = "2019-03-20T00:00:00-04:00"
* ^publisher = "WHO"
* ^contact.name = "WHO"
* ^caseSensitive = true
* ^content = #complete
* ^count = 44

* #C1 "Vacunas"
  * #15268682002	"ABDALA"
  * #15268603006	"ASTRAZENECA COVID-19 VACCINE"
  * #15268643003	"BBIBP-CORV"
  * #15268614003	"BBV152"
  * #15268603005	"CHADOX1 NCOV-19"
  * #15268682001	"CIGB 66"
  * #15268625005	"COMIRNATY"
  * #15268607005	"CONVIDECIA"
  * #15268644002	"CORONAVAC"
  * #15268614002	"COVAXIN [COVID-19 VACCINE INACT W.VIRION NIV-2020-770]"
  * #15268625004	"COVID-19 MRNA VACCINE BNT162B2"
  * #15268601001	"COVID-19 VACCINE"
  * #15268644003	"COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO) CZ02]"
  * #15268643005	"COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO) HB02]"
  * #15268663002	"COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO) WIV04]"
  * #15268622008	"COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO)]"
  * #15268658001	"COVID-19 VACCINE DNA"
  * #15268621001	"COVID-19 VACCINE INACT"
  * #15268640004	"COVID-19 VACCINE JANSSEN"
  * #15268604003	"COVID-19 VACCINE MODERNA"
  * #15268603004	"COVISHIELD"
  * #15268662002	"COVIVAC"
  * #15268642002	"EPIVACCORONA"
  * #15268619002	"GAM-COVID-VAC"
  * #15268643009	"HAYAT VAX"
  * #15268640003	"JANSSEN COVID-19 VACCINE"
  * #15268604002	"MODERNA COVID-19 VACCINE"
  * #15268625003	"PFIZER BIONTECH COVID-19 VACCINE"
  * #15268621002	"QAZCOVID-IN"
  * #15268601002	"SARS-COV-2 VACCINE"
  * #15268604008	"SPIKEVAX"
  * #15268619005	"SPUTNIK LIGHT"
  * #15268619004	"SPUTNIK V"
  * #15268625001	"TOZINAMERAN"
  * #15268603009	"VACUNA COVID-19 ASTRAZENECA"
  * #15268640005	"VACUNA COVID-19 JANSSEN"
  * #15268625007	"VACUNA COVID-19 PFIZER BIONTECH"
  * #15268625009	"VACUNA PFIZER-BIONTECH COVID-19"
  * #15268603007	"VAXZEVRIA"
  * #15268663004	"WIBP-CORV"

* #C3 "Medicamentos"
  * #68001016	"Levotiroxina"
  * #1483501003	"Lantus"