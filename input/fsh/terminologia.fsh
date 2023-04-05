Alias: $v2-0136 = http://terminology.hl7.org/ValueSet/v2-0136
Alias: $ProfesionalNotificadorCS = http://paho.org/esavi/CodeSystem/ProfesionalNotificadorCS
Alias: $MedDRA = http://terminology.hl7.org/CodeSystem/MDRSPA
Alias: $ICD11mms = http://id.who.int/icd11/mms
Alias: $ICD10 = http://hl7.org/fhir/sid/icd-10


CodeSystem: ReducedExampleMeddraCodes
Title: "SET OF TEST MEDDRA CODES"
Description: "This is a very small set of MedDRA codes for testing purposes only"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #10005604 "Blood in urine"
* #10018292 "Gingivitis"
* #10023222 "Joint pain"
* #10024895 "Low blood pressure"
* #10027199 "Meningitis"
* #10027649 "Miscarriage"
* #10033799 "Paralysis"
* #10039906 "Seizure"
* #10047700 "Vomiting"
* #17369002 "Aborto Espontaneo"
* #10022044 "Absceso de sitio de inyeccion"
* #10025188 "Linfaneditis"
* #10061623 "Reacción adversa causada por fármaco"
* #10043169 "Llanto asociado con el estado de ánimo"
* #10043561 "Purpura Trombocitopenica"
* #10042777 "Sincope Vasovagal"
* #10019660 "Encefalopatía Hepática"
* #10014581 "Encefalitis"
* #10031252 "Osteomielitis"
* #10044248 "Shock Toxico"
* #10034292 "Alergia a Penicilina"
* #10024922 "Transtorno de las Plaquetas"
* #10014080 "Equimosis"
* #10002198 "Anaphylactic reaction"
* #10040047 "Sepsis"





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
* include codes from system SCT where concept is-a #736479009 "sitio de administración previsto de forma farmacéutica (sitio de administración previsto)"


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
Title: "Códigos MEDDRA Complicaciones en Embarazo ESAVI "
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo mediante códigos MedDRA"
* include codes from system ReducedExampleMeddraCodes







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
* include codes from system SCT

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

* include codes from system ReducedExampleMeddraCodes


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
* include codes from system SCT
* include codes from system ATC
* include codes from system http://hl7.org/fhir/sid/icd-10
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
* include codes from system SCT


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
// * include codes from system http://who-umc.org. 
* include codes from system CodigoWhoVacunaCS


CodeSystem: CodigoWhoVacunaCS
Id: CodigoWhoVacunaCS
Title: "Example Vaccines WHO Drug"
Description: "This is a code system with some of the vaccines in WHO Drug"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* #15268609001 "ABDAVOMERAN"
* #15268609002 "BNT162B1"
* #15268672001 "ADCLD COV19"
* #15268630001 "ADIMRSC 2F"
* #15268615001 "AG0301-COVID19"
* #15268624001 "AG0302-COVID19"
* #15268616001 "ARCT 021"
* #15268680001 "AZD 2816"
* #15268602001 "BACTRL-SPIKE"
* #15268664001 "BBV154"
* #15268660001 "BNT162A1"
* #15268635001 "CDX 005"
* #15268682002 "ABDALA"
* #15268682001 "CIGB 66"
* #15268636001 "COH04S1"
* #15268601002 "SARS-COV-2 VACCINE"
* #15268658001 "COVID-19 VACCINE DNA"
* #15268621001 "COVID-19 VACCINE INACT"
* #15268621002 "QAZCOVID-IN"
* #15268622008 "COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO)]"
* #15268622001 "COVID-19 VACCINE INACT (VERO)"
* #15268678001 "COVID-19 VACCINE INACT (VERO) CQ01"
* #15268644002 "CORONAVAC"
* #15268644003 "COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO) CZ02]"
* #15268644001 "COVID-19 VACCINE INACT (VERO) CZ02"
* #15268644004 "VACINA ADSORVIDA COVID-19 (INATIVADA)"
* #15268644005 "VAKSIN COVID-19 BIO FARMA"
* #15268643003 "BBIBP-CORV"
* #15268643005 "COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO) HB02]"
* #15268643001 "COVID-19 VACCINE INACT (VERO) HB02"
* #15268643009 "HAYAT VAX"
* #15268643008 "SARS-COV-2 VACCINE (VERO CELL), INACTIVADA"
* #15268643006 "SARS-COV-2 VACCINE (VERO CELL), INACTIVATED"
* #15268643007 "VACUNA CONTRA EL SARS-COV-2 (VERO CELL), INACTIVADA"
* #15268643004 "ZHONG AI KE WEI"
* #15268663002 "COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO) WIV04]"
* #15268663001 "COVID-19 VACCINE INACT (VERO) WIV04"
* #15268663004 "WIBP-CORV"
* #15268663003 "ZHONG KANG KE WEI"
* #15268657001 "COVID-19 VACCINE INACT W.VIRION"
* #15268662001 "COVID-19 VACCINE INACT W.VIRION AYDAR-1"
* #15268662002 "COVIVAC"
* #15268614003 "BBV152"
* #15268614002 "COVAXIN [COVID-19 VACCINE INACT W.VIRION NIV-2020-770]"
* #15268614001 "COVID-19 VACCINE INACT W.VIRION NIV-2020-770"
* #15268650001 "COVID-19 VACCINE LIVE"
* #15268645001 "COVID-19 VACCINE MRNA"
* #15268673001 "COVID-19 VACCINE MRNA (ARCOV)"
* #15268647001 "COVID-19 VACCINE MRNA S"
* #15268652001 "COVID-19 VACCINE NRVV"
* #15268653001 "COVID-19 VACCINE NRVV AD"
* #15268603006 "ASTRAZENECA COVID-19 VACCINE"
* #15268603002 "AZD 1222"
* #15268603005 "CHADOX1 NCOV-19"
* #15268603003 "COVID-19 VACCINE ASTRAZENECA"
* #15268603001 "COVID-19 VACCINE NRVV AD (CHADOX1 NCOV-19)"
* #15268603004 "COVISHIELD"
* #15268603008 "KOREA ASTRAZENECA COVID-19 VACCINE"
* #15268603010 "VACINA COVID-19 (RECOMBINANTE)"
* #15268603009 "VACUNA COVID-19 ASTRAZENECA"
* #15268603007 "VAXZEVRIA"
* #15268654001 "COVID-19 VACCINE NRVV AD26"
* #15268619001 "COVID-19 VACCINE NRVV AD26 (GAM-COVID-VAC)"
* #15268619002 "GAM-COVID-VAC"
* #15268619005 "SPUTNIK LIGHT"
* #15268619004 "SPUTNIK V"
* #15268640004 "COVID-19 VACCINE JANSSEN"
* #15268640001 "COVID-19 VACCINE NRVV AD26 (JNJ 78436735)"
* #15268640003 "JANSSEN COVID-19 VACCINE"
* #15268640002 "JNJ 78436735"
* #15268640005 "VACUNA COVID-19 JANSSEN"
* #15268655001 "COVID-19 VACCINE NRVV AD5"
* #15268607002 "AD5-NCOV"
* #15268607005 "CONVIDECIA"
* #15268607001 "COVID-19 VACCINE NRVV AD5 (AD5-NCOV)"
* #15268607004 "KE WEI SHA"
* #15268607003 "RECOMBINANT COVID-19 VACCINE (ADENOVIRUS TYPE 5 VECTOR)"
* #15268620001 "COVID-19 VACCINE NRVV AD5 (GAM-COVID-VAC)"
* #15268620002 "GAM-COVID-VAC BOOSTER"
* #15268620004 "SPUTNIK V BOOST"
* #15268656001 "COVID-19 VACCINE NRVV MVA"
* #15268649001 "COVID-19 VACCINE PROT. SUBUNIT"
* #15268642001 "COVID-19 VACCINE PROT. SUBUNIT (EPIVACCORONA)"
* #15268642002 "EPIVACCORONA"
* #15268628001 "COVID-19 VACCINE PROT. SUBUNIT (ZF 2001)"
* #15268628005 "RECOMBINANT NOVEL CORONAVIRUS VACCINE (CHO CELL)"
* #15268628003 "ZF 2001"
* #15268628002 "ZF-UZ-VAC 2001"
* #15268628004 "ZHI KE WEI DE"
* #15268628006 "ZIFIVAX"
* #15268648001 "COVID-19 VACCINE RVV"
* #15268646001 "COVID-19 VACCINE SARNA"
* #15268651001 "COVID-19 VACCINE VLP"
* #15268670001 "DS 5670"
* #15268604003 "COVID-19 VACCINE MODERNA"
* #15268604007 "COVID-19 VACCINE MRNA (MRNA 1273)"
* #15268604006 "CX-024414"
* #15268604001 "ELASOMERAN"
* #15268604002 "MODERNA COVID-19 VACCINE"
* #15268604005 "MRNA 1273"
* #15268604008 "SPIKEVAX"
* #15268604004 "TAK 919"
* #15268674001 "EXG 5003"
* #15268681001 "FINLAY FR 2"
* #15268661002 "BNT162B3"
* #15268661001 "GANULAMERAN"
* #15268665001 "GBP 510"
* #15268610001 "GC 004"
* #15268638001 "GLS 5310"
* #15268623001 "GRAD-COV2"
* #15268675001 "GSK 4362620A"
* #15268613001 "GX 19"
* #15268639001 "GX 19N"
* #15268634001 "IIBR 100"
* #15268605001 "INO 4800"
* #15268666001 "MRNA 1283"
* #15268677001 "MRT 5500"
* #15268632001 "MT 2766"
* #15268618001 "MVC-COV1901"
* #15268679002 "BUTANVAC"
* #15268679001 "NDV HXP S"
* #15268611001 "NVX COV 2373"
* #15268611002 "TAK 019"
* #15268659002 "BNT162C2"
* #15268659001 "PIDACMERAN"
* #15268669001 "PTX COVID19 B"
* #15268676001 "S 268019"
* #15268641001 "SCB 2019"
* #15268667001 "SP 0253"
* #15268625002 "BNT162B2"
* #15268625005 "COMIRNATY"
* #15268625004 "COVID-19 MRNA VACCINE BNT162B2"
* #15268625006 "COVID-19 VACCINE MRNA (BNT162B2)"
* #15268625008 "PF 07302048"
* #15268625003 "PFIZER BIONTECH COVID-19 VACCINE"
* #15268625001 "TOZINAMERAN"
* #15268625007 "VACUNA COVID-19 PFIZER BIONTECH"
* #15268625009 "VACUNA PFIZER-BIONTECH COVID-19"
* #15268629001 "UB 612"
* #15268631001 "UQ CSL V451"
* #15268627001 "V 590"
* #15268617002 "TMV 083"
* #15268617001 "V 591"
* #15268668001 "VAX 001"
* #15268671001 "VBI 2902"
* #15268637001 "VLA 2001"
* #15268626001 "VXA COV2 1"
* #15268612003 "CV 07050101"
* #15268612002 "CVNCOV"
* #15268612001 "ZORECIMERAN"
* #15268633001 "ZYCOV-D"





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
* include codes from system SCT
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
* include codes from system SCT where concept is-a #736478001 "forma farmacéutica básica (forma farmacéutica básica)"

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
* include codes from system ICD11
* include codes from system ICD10
* include codes from system SCT


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
* #1 "Uno" 
* #2 "Dos"
* #3 "Tres" 
* #4 "Cuatro" 

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
* include codes from system ReducedExampleMeddraCodes


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


//Alias: $DirOrgNotiCS = http://paho.org/fhir/esavi/CodeSystem/DirOrgNotiCS

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