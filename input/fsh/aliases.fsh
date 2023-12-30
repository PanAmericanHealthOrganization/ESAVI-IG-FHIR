//Alias: $v2-0136 = http://terminology.hl7.org/ValueSet/v2-0136
//Alias: $ProfesionalNotificadorCS = http://paho.org/esavi/CodeSystem/ProfesionalNotificadorCS
Alias: MedDRA = https://www.meddra.org //Se define MedDRACS en archivo aparte extensivamente para test. https://terminology.hl7.org/CodeSystem-mdr.html
Alias: ICD11mms = http://id.who.int/icd11/mms
Alias: ICD10 = http://hl7.org/fhir/sid/icd-10
//Alias: SCTAr = http://snomed.info/sct/11000221109
//Alias: ICD11mms = http://id.who.int/icd/entity
Alias:   SCT = http://snomed.info/sct
//Alias:   LOINC = http://loinc.org
Alias:   ATCCS = http://www.whocc.no/atc
//Alias:   m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $DirOrgNotiCS = https://paho.org/fhir/esavi/CodeSystem/DirOrgNotiCS
//Alias: $ProfesionalNotificadorCS = http://paho.org/fhir/esavi/CodeSystem/ProfesionalNotificadorCS
//Alias: $CodPaises = https://paho.org/fhir/esavi/CodeSystem/CodPaisesCS
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
//Alias: $EnfermedadesPreviasCodificacionCS = https://paho.org/fhir/esavi/CodeSystem/EnfermedadesPreviasCodificacionCS
Alias: $RespuestaSiNoNosabeCS = https://paho.org/fhir/esavi/CodeSystem/RespuestaSiNoNosabeCS
//Alias: $EsaviMedDRACS = https://paho.org/fhir/esavi/CodeSystem/EsaviMedDRACS
//Alias: $EsaviOtroCS = https://paho.org/fhir/esavi/CodeSystem/EsaviOtroCS
Alias: $ClasificacionDesenlaceCS = https://paho.org/fhir/esavi/CodeSystem/ClasificacionDesenlaceCS

RuleSet: RuleSetMeta
* ^version = "0.9.0"
* ^status = #draft

RuleSet: RuleSetVS
* ^version = "0.9.0"
* ^status = #active
* ^date = "2021-03-11T00:00:00-03:00"
* ^contact.name = "OPS"
* ^contact.telecom.system = #email
* ^contact.telecom.value = ""
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
* ^experimental = false
