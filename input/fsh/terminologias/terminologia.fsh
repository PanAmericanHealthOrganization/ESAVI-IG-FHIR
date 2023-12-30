ValueSet: ViaAdminMedicamentoVS //revisado OKs CS externo LinkID: codigoViaAdministracion
Id: ViaAdminMedicamentoVS
Title: "Vías de Administración de Medicamentos"
Description: "Describe y lista las vías de administración de medicamentos para registro en ESAVI segun SNOMED CT"
* insert RuleSetVS
* include codes from system SCT where concept is-a #736479009 "sitio de administración previsto de forma farmacéutica (sitio de administración previsto)"
//* include codes from system http://snomed.info/sct


ValueSet: CodPaises //revisado. CS externo ISO 3166, LinkID: paisOrigen-Reg ----- Se genero CS explicito, la URN de ISO 3166 no anda
Id: codPaises
Title: "Códigos de Países"
Description: "Codigos definidos para la identificación de países segun norma ISO3166-N"
* insert RuleSetVS
* include codes from system CodPaisesCS
//* include codes from system urn:iso:std:iso:3166

CodeSystem: CodPaisesCS
Id: codPaisesCS 
Title: "Códigos de Paises"
Description: "Codigos definidos para la identificación de países segun norma ISO3166-3"

* #ABW "Aruba"
* #AFG "Afghanistan"
* #AGO "Angola"
* #AIA "Anguilla"
* #ALA "Eland Islands"
* #ALB "Albania"
* #AND "Andorra"
* #ARE "United Arab Emirates"
* #ARG "Argentina"
* #ARM "Armenia"
* #ASM "American Samoa"
* #ATA "Antarctica"
* #ATF "French Southern Territories"
* #ATG "Antigua and Barbuda"
* #AUS "Australia"
* #AUT "Austria"
* #AZE "Azerbaijan"
* #BDI "Burundi"
* #BEL "Belgium"
* #BEN "Benin"
* #BES "Bonaire, Sint Eustatius and Saba"
* #BFA "Burkina Faso"
* #BGD "Bangladesh"
* #BGR "Bulgaria"
* #BHR "Bahrain"
* #BHS "Bahamas"
* #BIH "Bosnia and Herzegovina"
* #BLM "Saint Barthilemy"
* #BLR "Belarus"
* #BLZ "Belize"
* #BMU "Bermuda"
* #BOL "Bolivia, Plurinational State of"
* #BRA "Brazil"
* #BRB "Barbados"
* #BRN "Brunei Darussalam"
* #BTN "Bhutan"
* #BVT "Bouvet Island"
* #BWA "Botswana"
* #CAF "Central African Republic"
* #CAN "Canada"
* #CCK "Cocos (Keeling) Islands"
* #CHE "Switzerland"
* #CHL "Chile"
* #CHN "China"
* #CIV "Ctte d'Ivoire"
* #CMR "Cameroon"
* #COD "Congo, the Democratic Republic of the"
* #COG "Congo"
* #COK "Cook Islands"
* #COL "Colombia"
* #COM "Comoros"
* #CPV "Cabo Verde"
* #CRI "Costa Rica"
* #CUB "Cuba"
* #CUW "Curagao"
* #CXR "Christmas Island"
* #CYM "Cayman Islands"
* #CYP "Cyprus"
* #CZE "Czechia"
* #DEU "Germany"
* #DJI "Djibouti"
* #DMA "Dominica"
* #DNK "Denmark"
* #DOM "Dominican Republic"
* #DZA "Algeria"
* #ECU "Ecuador"
* #EGY "Egypt"
* #ERI "Eritrea"
* #ESH "Western Sahara"
* #ESP "Spain"
* #EST "Estonia"
* #ETH "Ethiopia"
* #FIN "Finland"
* #FJI "Fiji"
* #FLK "Falkland Islands (Malvinas)"
* #FRA "France"
* #FRO "Faroe Islands"
* #FSM "Micronesia, Federated States of"
* #GAB "Gabon"
* #GBR "United Kingdom"
* #GEO "Georgia"
* #GGY "Guernsey"
* #GHA "Ghana"
* #GIB "Gibraltar"
* #GIN "Guinea"
* #GLP "Guadeloupe"
* #GMB "Gambia"
* #GNB "Guinea-Bissau"
* #GNQ "Equatorial Guinea"
* #GRC "Greece"
* #GRD "Grenada"
* #GRL "Greenland"
* #GTM "Guatemala"
* #GUF "French Guiana"
* #GUM "Guam"
* #GUY "Guyana"
* #HKG "Hong Kong"
* #HMD "Heard Island and McDonald Islands"
* #HND "Honduras"
* #HRV "Croatia"
* #HTI "Haiti"
* #HUN "Hungary"
* #IDN "Indonesia"
* #IMN "Isle of Man"
* #IND "India"
* #IOT "British Indian Ocean Territory"
* #IRL "Ireland"
* #IRN "Iran, Islamic Republic of"
* #IRQ "Iraq"
* #ISL "Iceland"
* #ISR "Israel"
* #ITA "Italy"
* #JAM "Jamaica"
* #JEY "Jersey"
* #JOR "Jordan"
* #JPN "Japan"
* #KAZ "Kazakhstan"
* #KEN "Kenya"
* #KGZ "Kyrgyzstan"
* #KHM "Cambodia"
* #KIR "Kiribati"
* #KNA "Saint Kitts and Nevis"
* #KOR "Korea, Republic of"
* #KWT "Kuwait"
* #LAO "Lao People's Democratic Republic"
* #LBN "Lebanon"
* #LBR "Liberia"
* #LBY "Libya"
* #LCA "Saint Lucia"
* #LIE "Liechtenstein"
* #LKA "Sri Lanka"
* #LSO "Lesotho"
* #LTU "Lithuania"
* #LUX "Luxembourg"
* #LVA "Latvia"
* #MAC "Macao"
* #MAF "Saint Martin (French part)"
* #MAR "Morocco"
* #MCO "Monaco"
* #MDA "Moldova, Republic of"
* #MDG "Madagascar"
* #MDV "Maldives"
* #MEX "Mexico"
* #MHL "Marshall Islands"
* #MKD "Macedonia, the former Yugoslav Republic of"
* #MLI "Mali"
* #MLT "Malta"
* #MMR "Myanmar"
* #MNE "Montenegro"
* #MNG "Mongolia"
* #MNP "Northern Mariana Islands"
* #MOZ "Mozambique"
* #MRT "Mauritania"
* #MSR "Montserrat"
* #MTQ "Martinique"
* #MUS "Mauritius"
* #MWI "Malawi"
* #MYS "Malaysia"
* #MYT "Mayotte"
* #NAM "Namibia"
* #NCL "New Caledonia"
* #NER "Niger"
* #NFK "Norfolk Island"
* #NGA "Nigeria"
* #NIC "Nicaragua"
* #NIU "Niue"
* #NLD "Netherlands"
* #NOR "Norway"
* #NPL "Nepal"
* #NRU "Nauru"
* #NZL "New Zealand"
* #OMN "Oman"
* #PAK "Pakistan"
* #PAN "Panama"
* #PCN "Pitcairn"
* #PER "Peru"
* #PHL "Philippines"
* #PLW "Palau"
* #PNG "Papua New Guinea"
* #POL "Poland"
* #PRI "Puerto Rico"
* #PRK "Korea, Democratic People's Republic of"
* #PRT "Portugal"
* #PRY "Paraguay"
* #PSE "Palestine, State of"
* #PYF "French Polynesia"
* #QAT "Qatar"
* #REU "Riunion"
* #ROU "Romania"
* #RUS "Russian Federation"
* #RWA "Rwanda"
* #SAU "Saudi Arabia"
* #SDN "Sudan"
* #SEN "Senegal"
* #SGP "Singapore"
* #SGS "South Georgia and the South Sandwich Islands"
* #SHN "Saint Helena, Ascension and Tristan da Cunha"
* #SJM "Svalbard and Jan Mayen"
* #SLB "Solomon Islands"
* #SLE "Sierra Leone"
* #SLV "El Salvador"
* #SMR "San Marino"
* #SOM "Somalia"
* #SPM "Saint Pierre and Miquelon"
* #SRB "Serbia"
* #SSD "South Sudan"
* #STP "Sao Tome and Principe"
* #SUR "Suriname"
* #SVK "Slovakia"
* #SVN "Slovenia"
* #SWE "Sweden"
* #SWZ "Swaziland"
* #SXM "Sint Maarten (Dutch part)"
* #SYC "Seychelles"
* #SYR "Syrian Arab Republic"
* #TCA "Turks and Caicos Islands"
* #TCD "Chad"
* #TGO "Togo"
* #THA "Thailand"
* #TJK "Tajikistan"
* #TKL "Tokelau"
* #TKM "Turkmenistan"
* #TLS "Timor-Leste"
* #TON "Tonga"
* #TTO "Trinidad and Tobago"
* #TUN "Tunisia"
* #TUR "Turkey"
* #TUV "Tuvalu"
* #TWN "Taiwan, Province of China"
* #TZA "Tanzania, United Republic of"
* #UGA "Uganda"
* #UKR "Ukraine"
* #UMI "United States Minor Outlying Islands"
* #URY "Uruguay"
* #USA "United States of America"
* #UZB "Uzbekistan"
* #VAT "Holy See"
* #VCT "Saint Vincent and the Grenadines"
* #VEN "Venezuela, Bolivarian Republic of"
* #VGB "Virgin Islands, British"
* #VIR "Virgin Islands, U.S."
* #VNM "Viet Nam"
* #VUT "Vanuatu"
* #WLF "Wallis and Futuna"
* #WSM "Samoa"
* #YEM "Yemen"
* #ZAF "South Africa"
* #ZMB "Zambia"
* #ZWE "Zimbabwe"

ValueSet: EsaviMedDRAVS //revisado OKs CS interno con ejemplos pendiente eterno completo LinkID: codigoESAVIMedDRA 
Id: EsaviMedDRAVS
Title: "Código MedDRA del Evento Adverso notificado"
Description: "Código MedDRA del Evento Adverso notificado"
* insert RuleSetVS
* include codes from system MedDRA

ValueSet: ComplicacionEmbarazoMedDRAVS //revisado OKs CS interno definido aparte, completo en el servidor LinkID: odigoMedDRAComplicacionEmbarazoESAVI
Id: ComplicacionEmbarazoMedDRAVS
Title: "Códigos MEDDRA Complicaciones en Embarazo ESAVI"
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo mediante códigos MedDRA"
* insert RuleSetVS
* include codes from system MedDRA

ValueSet: ComplicacionEmbarazoOtroVS //revisado OKS CS externo LinkID: otrosCodigosComplicacionEmbarazoESAVI
Id: ComplicacionEmbarazoOtroVS
Title: "Otros Códigos Complicaciones en Embarazo ESAVI"
Description: "Codificacion Estandarizada de diagnóticos de complicaciones de embarazo mediante códigos Snomed y CIE-10"
* insert RuleSetVS
* include codes from system ICD10 where concept is-a #E03.9	"Hipotiroidismo, no especificado"
* include codes from system ICD10 where concept is-a #E66.9	"Obesidad, no especificada"
* include codes from system ICD10 where concept is-a #E10.9	"Diabetes mellitus insulinodependiente, sin mención de complicación"
* include codes from system ICD10 where concept is-a #O03.9	"Aborto espontáneo completo o no especificado, sin complicación"
* include codes from system ICD10 where concept is-a #L53.9	"Afección eritematosa, no especificada"
* include codes from system ICD10 where concept is-a #R60.0	"Edema localizado"
* include codes from system ICD10 where concept is-a #R52	"Dolor, no clasificado en otra parte"
* include codes from system ICD10 where concept is-a #R50	"Fiebre de otro origen y de origen desconocido"
* include codes from system ICD10 where concept is-a #G51.0	"Paralisis de Bell"
* include codes from system ICD10 where concept is-a #H92.0	"Otalgia"
* include codes from system ICD10 where concept is-a #H93.1	"Tinnitus"
* include codes from system SCT where concept is-a #281647001 "Reacción adversa (trastorno)"  


ValueSet: EsaviOtroVS //revisado OKs CS externo. LinkID: codigoESAVIOtro
Id: EsaviOtroVS
Title: "Otros Códigos Evento Adverso"
Description: "Evento Adverso en otro sistema según Snomed y CIE-10"
* insert RuleSetVS
* include codes from system SCT where concept is-a #281647001 "Reacción adversa"
//* include codes from system ICD11mms where concept is-a #XY0Y "Afección principal"
* include codes from system ICD10 where concept is-a #E03.9	"Hipotiroidismo, no especificado"
* include codes from system ICD10 where concept is-a #E66.9	"Obesidad, no especificada"
* include codes from system ICD10 where concept is-a #E10.9	"Diabetes mellitus insulinodependiente, sin mención de complicación"
* include codes from system ICD10 where concept is-a #O03.9	"Aborto espontáneo completo o no especificado, sin complicación"
* include codes from system ICD10 where concept is-a #L53.9	"Afección eritematosa, no especificada"
* include codes from system ICD10 where concept is-a #R60.0	"Edema localizado"
* include codes from system ICD10 where concept is-a #R52	"Dolor, no clasificado en otra parte"
* include codes from system ICD10 where concept is-a #R50	"Fiebre de otro origen y de origen desconocido"
* include codes from system ICD10 where concept is-a #G51.0	"Paralisis de Bell"
* include codes from system ICD10 where concept is-a #H92.0	"Otalgia"
* include codes from system ICD10 where concept is-a #H93.1	"Tinnitus"

ValueSet: CodigoWhoVacunaVS //revisado y modificado. LinkID:codigoVacunaWHODrug  
Id: CodigoWhoVacunaVS
Title: "Codigo WHODrug de la vacuna"
Description: "Codificación Estandarizda del código de las Vacunas según WhoDrug"
* insert RuleSetVS

//* include codes from system CodigoWhoVacunaCS //Acotado a Vacunas COVID
* include codes from system WHODrugPMID 
* include codes from system WHODrugDC

ValueSet: FormaFarmaceuticaVS //revisado OKs CS externo LinkID: codigoFormaFarmaceutica
Id: FormaFarmaceuticaVS
Title: "Identificación Formas Farmacéuticas"
Description: "Describe y lista las formas farmaceuticas de medicamentos para registro en ESAVI segun SNOMED CT"
* insert RuleSetVS

* include codes from system SCT where concept is-a #736478001 "forma farmacéutica básica (forma farmacéutica básica)"

ValueSet: EnfermedadesPreviasCodificacionVS //revisado CS externos CIE11, SCT y CIE10, LinkID:otrosCodigosEnfPrevia
Id: EnfermedadesPreviasCodificacionVS
Title: "Enfermedades previas en un ESAVI-PAHO"
Description: "Describe las enfermedades previas en un ESAVI codificadas en CIE10, CIE11 o SNOMED CT"
* insert RuleSetVS

//* include codes from system ICD11mms where concept is-a  #XY0Y "Afección principal" //NO expande!!!!
* include codes from system ICD10 where concept is-a #E03.9	"Hipotiroidismo, no especificado"
* include codes from system ICD10 where concept is-a #E66.9	"Obesidad, no especificada"
* include codes from system ICD10 where concept is-a #E10.9	"Diabetes mellitus insulinodependiente, sin mención de complicación"
* include codes from system ICD10 where concept is-a #O03.9	"Aborto espontáneo completo o no especificado, sin complicación"
* include codes from system ICD10 where concept is-a #L53.9	"Afección eritematosa, no especificada"
* include codes from system ICD10 where concept is-a #R60.0	"Edema localizado"
* include codes from system ICD10 where concept is-a #R52   "Dolor, no clasificado en otra parte"
* include codes from system ICD10 where concept is-a #R50   "Fiebre de otro origen y de origen desconocido"
* include codes from system ICD10 where concept is-a #G51.0	"Paralisis de Bell"
* include codes from system ICD10 where concept is-a #H92.0	"Otalgia"
* include codes from system ICD10 where concept is-a #H93.1	"Tinnitus"
* include codes from system SCT where concept is-a  #404684003 "Hallazgo Clínico"


ValueSet: CodigoNoWhoVacunaVS //Oks con las vacunas de Covid, no usa mas Codesystem
Id: CodigoNoWhoVacunaVS
Title: "Código no WHODrug de la Vacuna"
Description: "Código no WHODrug de la Vacuna"
* insert RuleSetVS
//* include codes from system ATCCS where concept is-a #J07BN	"Vacuna COVID 19" //NO expande!
//* include codes from system ICD11mms //NO expande!!
* include codes from system http://snomed.info/sct where concept is-a #410942007 "fármaco o medicamento (sustancia)"

ValueSet: CodigoWhoFabricanteVS //Oks revisado, CS interno a continuación Link ID:codigoFabricanteWHODrug 
Id: CodigoWhoFabricanteVS
Title: "Fabricantes Vacuna"
Description: "Códigos Fabricantes Vacunas de WHO"
* insert RuleSetVS

* include codes from system CodigoWhoFabricanteCS

CodeSystem: CodigoWhoFabricanteCS //oks revisado
Id: CodigoWhoFabricanteCS
Title: "Fabricante   Vacuna"
Description: "Códigos Fabricantes Vacunas de WHO"
* insert RuleSetVS
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


ValueSet: SistemasDeCodificacionVS //revisado CM interno a continuación, LinkID: sistemaDeCodificacionParaNombreNormalizadoVacuna, sistemaDeCodificacionParaNombreNormalizadoMedicamento
Id: SistemasDeCodificacionVS
Title: "Sistemas De Codificacion"
Description: "Sistemas De Codificacion para Determinación de Códigos"
* insert RuleSetVS
* include codes from system SistemasDeCodificacionCS

CodeSystem: SistemasDeCodificacionCS //revisado OKs
Id: SistemasDeCodificacionCS
Title: "Sistemas De Codificacion"
Description: "Sistemas De Codificacion para Determinación de Códigos"
* insert RuleSetVS
* #1 "SNOMED-CT"
* #2 "WHODrug"
* #3 "ATC"
//* #4 "CIE-10"
* #4 "CIE-11"
//* #6 "MedDRA"

ValueSet: RespuestaSiNoNosabeVS //revisado CS interno a continuacion
Id: RespuestaSiNoNosabeVS
Title: "Respuestas Simples"
Description: "Códigos para capturar respuestas simples si/no/no sabe"
* insert RuleSetVS
* include codes from system RespuestaSiNoNosabeCS

CodeSystem: RespuestaSiNoNosabeCS //revisado
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


ValueSet: CodigoMedicamentoVS //revisado OKs CS externo, LinkIDs: codigoMedicamento
Id: CodigoMedicamentoVS
Title: "Codigo Medicamento"
Description:  "Codigo Medicamento"
* insert RuleSetVS
* include codes from system SCT where concept is-a #105590001
//* include codes from system ATCCS //NO expande
//* include codes from system ICD11mms where concept is-a #XM4843 //No expande!!!

ValueSet: ModoVerificacionVacunaVS //revisado Oks CS interno a continuacion Link ID: codigoMecanismoVerificacion 
Id: ModoVerificacionVacunaVS
Title: "Modos Verificación Vacuna Previa"
Description:  "Modos de Verificacion de Vacuna o Esquema de Vacunación Completado"
* insert RuleSetVS
* include codes from system ModoVerificacionVacunaCS

CodeSystem: ModoVerificacionVacunaCS //revisado Oks
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

ValueSet: ModoConfirmacionInfeccionVS //revisado CS interno a continuacion, LinkID: tipoConfirmacionCovid19
Id: ModoConfirmacionInfeccionVS
Title: "Modos Confirmación Infección COVID-19"
Description: "Modos de Confirmacion de Infección por COVID-19"
* insert RuleSetVS

* include codes from system ModoConfirmacionInfeccionCS

CodeSystem: ModoConfirmacionInfeccionCS //revisado OKs
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

ValueSet: ClasificacionDesenlaceVS //revisado OKS CS interno a continuacion LinkID: codDesenlaceESAVI
Id: ClasificacionDesenlaceVS
Title: "Desenlaces Tras ESAVI"
Description:  "Clasificación de Desenlace Tras Sufrir ESAVI"
* insert RuleSetVS

* include codes from system ClasificacionDesenlaceCS

CodeSystem: ClasificacionDesenlaceCS //revisqado OKs
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

ValueSet: ComplicacionEmbarazoVS //revisado OKs CS interno a continuación LinkID: codigoTipoComplicacionESAVI
Id: ComplicacionEmbarazoVS
Title: "Complicaciones Embarazo"
Description: "Conjunto de Valores para la Sección de Complicaciones Embarazo ESAVI"
* insert RuleSetVS
* codes from system ComplicacionEmbarazoCS

CodeSystem: ComplicacionEmbarazoCS //revisado OKs
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

ValueSet: ProfesionalNotificadorVS //revisado CS interno a continuación, LinkID: codigoProfesionNotificador
Id: ProfesionalNotificadorVS
Title: "Tipo de Profesional Notificador"
Description: "Códigos de Tipo de Notificadores de ESAVI para PAHO"
* insert RuleSetVS
* include codes from system ProfesionalNotificadorCS

CodeSystem: ProfesionalNotificadorCS //revisado
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


ValueSet: CodigoMedDRAEnfPreviaVS //revisado CS interno MedDRACS oks, LinkID:codigoMedDRAEnfPrevia
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
* ^experimental = false
* include codes from system MedDRA

ValueSet: SistemaClasfCausalidadVS //revisado OKs CS interno a continuación LinkID: sistemaClasfcausalidad
Id: SistemaClasfCausalidadVS
Title: "Tipo de Método de clasificación de causalidad"
Description:  "Códigos para Tipos Métodos de Clasificación de Causalidad"
* insert RuleSetVS
* include codes from system SistemaClasfCausalidadCS

CodeSystem: SistemaClasfCausalidadCS //revisado OKs
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


ValueSet: ClasificacionDesenlaceWHOAEFIVS //revisado OKs CS interno a continuación LinkID: clasificacionDeCausalidadWHOAEFI
Id: ClasificacionDesenlaceWHOAEFIVS
Title: "Clasificación de causalidad WHO-AEFI"
Description:  "Método de clasificación de causalidad WHO-AEFI"
* insert RuleSetVS
* include codes from system ClasificacionDesenlaceWHOAEFICS

CodeSystem: ClasificacionDesenlaceWHOAEFICS //revisado OKs
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


ValueSet: ClasificacionDesenlaceWHOUMCVS //revisado OKs CS interno a continuación LinkID: clasificacionDeCausalidadWHOUMC
Id: ClasificacionDesenlaceWHOUMCVS
Title: "Clasificación de causalidad WHO-UMC"
Description:  "Método de clasificación de causalidad WHO-UMC"
* insert RuleSetVS
* include codes from system ClasificacionDesenlaceWHOUMCCS

CodeSystem: ClasificacionDesenlaceWHOUMCCS //revisado OKs
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

ValueSet: ClasificacionDesenlaceNaranjoVS //revisado OKs CS interno a continuación LinkID: clasificacionDeCausalidadNaranjo
Id: ClasificacionDesenlaceNaranjoVS
Title: "Clasificación de causalidad Naranjo"
Description:  "Método de clasificación de causalidad Naranjo"
* insert RuleSetVS
* include codes from system ClasificacionDesenlaceNaranjoCS

CodeSystem: ClasificacionDesenlaceNaranjoCS //revisado OKs
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


ValueSet: DirOrgNotiVS //revisado. CS interno completo en Servidor, ejemplo en local, LinkID: codigoDireccionOrganizacion, codigoResidenciaHabitual, codigoDireccionVacunatorio
Id: DirOrgNotiVS
Title: "Códigos PAHO para Direcciones"
Description: "Conjunto de Valores para dirección según OPS"
* insert RuleSetVS
* include codes from system DirOrgNotiCS

// CodeSystem: PTSctCS
// Id: PTSctCS
// Title: "Códigos Snomed Reducido"
// Description: "Codificación Snomed reducido"

// * ^meta.versionId = "1"
// * ^meta.lastUpdated = "2023-01-05T21:57:10.292+00:00"
// * ^meta.source = "#yyuCovUJiH7vKAgN"
// * ^url = "http://snomed.info/sct"
// * ^version = "1.00"
// * ^status = #active
// * ^experimental = false
// * ^date = "2019-03-20T00:00:00-04:00"
// * ^publisher = "Snomed-CT"
// * ^caseSensitive = true
// * ^content = #complete
// * ^count = 136

// * #410942007 "fármaco o medicamento (sustancia)"
//   * #424571000221103	"VAXZEVRIA vacuna COVID-19 vector viral no replicante"
//   * #31301000087101	"SINOPHARM - BIBP vacuna COVID-19 virus entero inactivado"
//   * #33391000087109	"ABDALA vacuna COVID-19 proteína de espiga recombinante"
//   * #31431000087100	"CONVIDECIA vacuna COVID-19 vector viral no replicante"
//   * #31311000087104	"CoronaVac vacuna COVID-19 virus entero inactivado"
//   * #33211000087105	"COVAXIN vacuna COVID-19 virus entero inactivado"
//   * #424751000221104	"COMIRNATY vacuna COVID-19 ARNm"
//   * #28531000087107	"vacuna contra COVID-19"
//   * #1187593009	"vacuna de plásmido de ADN de SARS-CoV-2 que codifica proteína de espiga"
//   * #1157024006	"vacuna virus entero inactivado contra SARS-CoV-2"
//   * #424591000221102	"JANSSEN vacuna COVID-19 vector viral no replicante"
//   * #424731000221108	"SPIKEVAX vacuna COVID-19 ARNm"
//   * #424581000221100	"COVISHIELD vacuna COVID-19 vector viral no replicante"
//   * #33421000087101	"EpiVacCorona vacuna COVID-19 proteína de espiga recombinante"
//   * #424711000221100	"SPUTNIK V vacuna COVID-19 vector viral no replicante"
//   * #33451000087108	"QazCovid-in vacuna COVID-19 virus entero inactivado"
//   * #424821000221101	"SPUTNIK LIGTH vacuna COVID-19 vector viral no replicante"
//   * #33201000087108	"SINOPHARM - WIBP vacuna COVID-19 virus entero inactivado"
  
// * #105590001 "Sustancia"
//   * #783639004	"levotiroxina sódica anhidra 100 microgramos por cada comprimido para administración oral"
//   * #383491000221101	"LANTUS [INSULINA GLARGINA 100 U/ML] SOLUCION INYECTABLE, CARTUCHO de 3 ML"

// * #391103005 "evento adverso posterior a tratamiento complementario (trastorno)"  
//   * #40930008	"hipotiroidismo"
//   * #414916001 "obesidad"
//   * #46635009	"Diabetes Melitus Tipo I"
//   * #17369002	"Aborto espontáneo"
//   * #213338000 "eritema en sitio de inyección"
//   * #95392007	"edema en el sitio de inyecion"
//   * #95388000	"Dolor en el sitio de inyección"
//   * #386661006 "fiebre"
//   * #193093009 "parálisis de Bell"
//   * #1010234007	"otalgia derecha"
//   * #60862001	"acúfenos"

// * #736479009 "(Dose form intended site (intended site))"
//   * #46992007	"Pill"
//   * #385043007	"Granules"
//   * #385048003	"Cachet"
//   * #385049006	"Capsule"
//   * #385050006	"Hard capsule"
//   * #385051005	"Soft capsule"
//   * #385055001	"Tablet"
//   * #385057009	"Film-coated tablet"
//   * #385064006	"Pillule"
//   * #385087003	"Lozenge"
//   * #385099005	"Cream"
//   * #385100002	"Gel"
//   * #385101003	"Ointment"
//   * #385115001	"Collodion"
//   * #385117009	"Poultice"
//   * #385174007	"Pessary"
//   * #385194003	"Suppository"
//   * #385286003	"Implant"
//   * #420243009	"Tampon (basic dose form)"
//   * #420275007	"Semi-solid dose form"
//   * #420460001	"Film"
//   * #420699003	"Liquid dose form"
//   * #420768007	"Pellet"
//   * #421079001	"Pastille"
//   * #421131006	"Gaseous dose form"
//   * #421166008	"Foam"
//   * #421288004	"Sponge"
//   * #421378002	"Solid dose form"
//   * #421532009	"Insert"
//   * #421890007	"Oil"
//   * #422186009	"Tincture"
//   * #422259002	"Spirit"
//   * #426210003	"Gum"
//   * #429885007	"Bar"
//   * #738997003	"Elixir"
//   * #738998008	"Emulsion"
//   * #739000003	"Lotion (basic dose form)"
//   * #739001004	"Lyophilisate"
//   * #739002006	"Paste"
//   * #739003001	"Patch (basic dose form)"
//   * #739005008	"Powder (basic dose form)"
//   * #739006009	"Solution"
//   * #739007000	"Stick (basic dose form)"
//   * #739008005	"Suspension"
//   * #739009002	"Syrup"
//   * #739010007	"Tape (basic dose form)"
//   * #758679000	"Strip"
//   * #761876003	"Lyophilized powder (basic dose form)"
//   * #761877007	"Effervescent tablet"
//   * #761897002	"Effervescent granules (basic dose form)"
//   * #762948008	"Effervescent powder (basic dose form)"
//   * #763824009	"Gas"
//   * #764771001	"Ring"
//   * #770102009	"Pressurized solution (basic dose form)"
//   * #770103004	"Pressurized suspension (basic dose form)"
//   * #782888008	"Pressurized emulsion (basic dose form)"

// * #736478001 "forma farmacéutica básica (forma farmacéutica básica)"
//   * #1230183009	"Dispersion"
//   * #1230206006	"Compressed lozenge"
//   * #1230217007	"Molded lozenge (basic dose form)"
//   * #1230223002	"Lacquer (basic dose form)"
//   * #1230326008	"Compressed gas"
//   * #1230327004	"Cryogenic gas"
//   * #1230328009	"Liquified gas (basic dose form)"
//   * #1230334002	"Coated capsule (basic dose form)"
//   * #1230387002	"Coated granules (basic dose form)"
//   * #1230388007	"Coated tablet"
//   * #1231321009	"Cement (basic dose form)"
//   * #1231568003	"System"
//   * #1231710002	"Pure liquid (basic dose form)"
//   * #1231762000	"Impregnated material (basic dose form)"
//   //* #736479009	"Dose form intended site (intended site)"
//   * #738904002	"Cutaneous (intended site)"
//   * #738906000	"Dental"
//   * #738908004	"Endocervical (intended site)"
//   * #738910002	"Gastroenteral (intended site)"
//   * #738943003	"Gingival"
//   * #738945005	"Intrauterine (intended site)"
//   * #738946006	"Intravesical"

//   * #738948007	"Nasal"
//   * #738952007	"Ocular (intended site)"
//   * #738956005	"Oral"
//   * #738982001	"Oromucosal"
//   * #738983006	"Otic"
//   * #738984000	"Parenteral (intended site)"
//   * #738985004	"Pulmonary (intended site)"
//   * #738986003	"Rectal (intended site)"
//   * #738987007	"Transdermal (intended site)"
//   * #738988002	"Urethral"
//   * #738989005	"Vaginal"
//   * #761829007	"Sublingual (intended site)"
//   * #762070008	"Intraocular (intended site)"
//   * #763825005	"Buccal"
//   * #764295003	"Subcutaneous (intended site)"
//   * #764376008	"Enteral (intended site)"
//   * #764786007	"Oropharyngeal (intended site)"
//   * #770101002	"Endotracheopulmonary (intended site)"
//   * #783351009	"Intraperitoneal"
//   * #785909009	"Intralesional (intended site)"
//   * #840615007	"Intraarticular"
//   * #1230218002	"Periodontal"
//   * #1231459002	"Extracorporeal (intended site)"

// CodeSystem: ATCCSVacunas
// Id: ATCCSVacunas
// Title: "Códigos ATC vacunas"
// Description: "Códigos ATC vacunas"
// //* ^url = "http://www.whocc.no/atc"
// * ^meta.versionId = "1"
// * ^meta.lastUpdated = "2023-01-05T21:57:10.292+00:00"
// * ^meta.source = "#yyuCovUJiH7vKAgN"
// * ^version = "1.00"
// * ^status = #active
// * ^experimental = false
// * ^date = "2019-03-20T00:00:00-04:00"
// * ^caseSensitive = true
// * ^content = #complete
// * ^count = 5

// * #J07BN "Vacuna COVID 19"
//   * #J07BN01 "Vacuna COVID 19, basada en ARNm"
//   * #J07BN04 "Vacuna COVID 19, subunidad proteica"
//   * #J07BN02 "Vacuna COVID 19, vector viral no replicante"
//   * #J07BN03 "Vacuna COVID 19, virus inactivado"


// CodeSystem: ATCCSMedicamentos
// Id: ATCCSMedicamentos
// Title: "Códigos ATC medicamentos"
// Description: "Códigos ATC medicamentos"
// //* ^url = "http://www.whocc.no/atc"
// * ^meta.versionId = "1"
// * ^meta.lastUpdated = "2023-01-05T21:57:10.292+00:00"
// * ^meta.source = "#yyuCovUJiH7vKAgN"
// * ^version = "1.00"
// * ^status = #active
// * ^experimental = false
// * ^date = "2019-03-20T00:00:00-04:00"
// * ^caseSensitive = true
// * ^content = #complete
// * ^count = 2

// * #H03AA01 "levotiroxina sodica"
// * #A10AE04 "insulina glargina"

// CodeSystem: ICD10
// Id: ICD10
// Title: "ICD-10"
// Description: "International Classification of Diseases revision 10 (ICD 10) - Spanish"
// * ^url = "http://hl7.org/fhir/sid/icd-10"
// * ^version = "1.0.0"
// * ^status = #active
// * ^date = "2021-03-11T00:00:00-03:00"
// * ^contact.name = "OPS"
// * ^contact.telecom.system = #email
// * ^contact.telecom.value = ""
// * ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
// * #E03.9	"Hipotiroidismo, no especificado"
// * #E66.9	"Obesidad, no especificada"
// * #E10.9	"Diabetes mellitus insulinodependiente, sin mención de complicación"
// * #O03.9	"Aborto espontáneo completo o no especificado, sin complicación"
// * #L53.9	"Afección eritematosa, no especificada"
// * #R60.0	"Edema localizado"
// * #R52	  "Dolor, no clasificado en otra parte"
// * #R50	  "Fiebre de otro origen y de origen desconocido"
// * #G51.0	"Paralisis de Bell"
// * #H92.0	"Otalgia"
// * #H93.1	"Tinnitus"

// CodeSystem: ICD11
// Id: ICD11
// Title: "ICD11"
// Description: "ICD11"
// * ^meta.versionId = "1"
// * ^meta.lastUpdated = "2023-01-05T21:57:10.292+00:00"
// * ^meta.source = "#yyuCovUJiH7vKAgN"
// * ^url = "http://id.who.int/icd11/mms"
// * ^version = "1.00"
// * ^status = #active
// * ^experimental = false
// * ^date = "2019-03-20T00:00:00-04:00"
// * ^publisher = "CIE-11"
// * ^contact.name = "CIE-11"
// * ^caseSensitive = true
// * ^content = #complete
// * ^count = 36

// * #XM68M6 "Vacunas contra el COVID-19"
//   * #XM5JC5	"Vacunas contra COVID-19, subunidad proteica del virus"
//   * #XM4YL8	"Vacuna contra COVID-19 AstraZeneca"
//   * #XM8866	"BBIBP-CorV"
//   * #XM1G90	"Covaxin"
//   * #XM97T2	"Covishield®"
//   * #XM9QW8	"Vacunas contra COVID-19, vector viral no replicante"
//   * #XM7HT3	"CoronaVac®"
//   * #XM8NQ0	"Comirnaty®"
//   * #X68M6	"vacunas COVID-19"
//   * #XM6AT1	"COVID-19 vaccine, DNA based"
//   * #XM1NL1 	"Vacunas contra COVID-19, virus inactivado"
//   * #XM6QV1	"Vacuna contra COVID-19 Janssen"
//   * #XM3DT5	"Vacuna COVID-19 Moderna"
//   * #XM85P5	"Covi-Vac"
//   * #XM6SZ8 	"EpiVacCorona"
//   * #XM5ZJ4	"Gam-Covid-Vac"
//   * #XM9FQ7	"Hayat-Vax"
//   * #XM97N6	"QazVac"
//   * #XM5QM6	"Sputnik-Light"
//   * #XM1AU2	"Sinopharm WIBP-CorV"

// * #XM4843 "Fármacos Z" 
//   * #XM2WC1	"levotiroxina sódica"
//   * #XM0K72	"Insulina de acción lenta"

// * #XY0Y "Afección principal"
//   * #5A00	"Hipotiroidismo"
//   * #5B81	"Obesidad"
//   * #5A10	"Diabetes mellitus tipo 1"
//   * #JA00	"Aborto"
//   * #ME64.0	"Eritema"
//   * #MG29	"Edema"
//   * #MG31.Y	"Otro(a)(s) dolor agudo especificado(a)(s)"
//   * #MG26	"Fiebre de otro origen o de origen desconocido"
//   * #8B88.0	"Parálisis de Bell"
//   * #AB70.2	"Otalgia"
//   * #MC41	"Tinnitus"

// CodeSystem: EsaviMedDRACS //Ahora MedDRACS en archivo aparte
// Id: EsaviMedDRACS
// Title: "Códigos MedDRA Evento Adverso"
// Description: "Codificacion Estandarizada de Evento Adverso en MedDRA"
// * ^version = "1.0.0"
// * ^status = #active
// * ^date = "2021-03-11T00:00:00-03:00"
// * ^contact.name = "OPS"
// * ^contact.telecom.system = #email
// * ^contact.telecom.value = ""
// * ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#419 "Latin America and the Caribbean"
// * #10021114 "Hipotiroidismo"
// * #10029883 "Obesidad"
// * #10067584 "Diabetes Melitus Tipo I"
// * #10027649 "Aborto natural"
// * #10022061 "Eritema en la zona de inyección"
// * #10022058 "Edema en la zona de inyección"
// * #10022086 "Dolor en la zona de inyección"
// * #10016558 "Fiebre"
// * #10004223 "Paralisis de Bell"
// * #10014020 "Dolor de oídos"
// * #10043882 "Acúfenos"
// //Dummies
// * #10002218 "Anafilaxia"
// * #10016179 "Desmayo"

// CodeSystem: CodigoWhoVacunaCS //revisado Oks, solo vacunas COVID
// Id: CodigoWhoVacunaCS
// Title: "Codigos WHODrug de la vacuna"
// Description: "Codificación Estandarizda del código de las Vacunas según WhoDrug"

// * ^meta.versionId = "2"
// * ^meta.lastUpdated = "2023-01-05T21:57:10.292+00:00"
// * ^meta.source = "#yyuCovUJiH7vKAgN"
// * ^url = "http://who-umc.org"
// * ^version = "1.00"
// * ^status = #active
// * ^experimental = false
// * ^date = "2019-03-20T00:00:00-04:00"
// * ^publisher = "WHO"
// * ^contact.name = "WHO"
// * ^caseSensitive = true
// * ^content = #complete
// * ^count = 44
// * #15268682002	"ABDALA"
// * #15268603006	"ASTRAZENECA COVID-19 VACCINE"
// * #15268643003	"BBIBP-CORV"
// * #15268614003	"BBV152"
// * #15268603005	"CHADOX1 NCOV-19"
// * #15268682001	"CIGB 66"
// * #15268625005	"COMIRNATY"
// * #15268607005	"CONVIDECIA"
// * #15268644002	"CORONAVAC"
// * #15268614002	"COVAXIN [COVID-19 VACCINE INACT W.VIRION NIV-2020-770]"
// * #15268625004	"COVID-19 MRNA VACCINE BNT162B2"
// * #15268601001	"COVID-19 VACCINE"
// * #15268644003	"COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO) CZ02]"
// * #15268643005	"COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO) HB02]"
// * #15268663002	"COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO) WIV04]"
// * #15268622008	"COVID-19 VACCINE (VERO CELL), INACTIVATED [COVID-19 VACCINE INACT (VERO)]"
// * #15268658001	"COVID-19 VACCINE DNA"
// * #15268621001	"COVID-19 VACCINE INACT"
// * #15268640004	"COVID-19 VACCINE JANSSEN"
// * #15268604003	"COVID-19 VACCINE MODERNA"
// * #15268603004	"COVISHIELD"
// * #15268662002	"COVIVAC"
// * #15268642002	"EPIVACCORONA"
// * #15268619002	"GAM-COVID-VAC"
// * #15268643009	"HAYAT VAX"
// * #15268640003	"JANSSEN COVID-19 VACCINE"
// * #15268604002	"MODERNA COVID-19 VACCINE"
// * #15268625003	"PFIZER BIONTECH COVID-19 VACCINE"
// * #15268621002	"QAZCOVID-IN"
// * #15268601002	"SARS-COV-2 VACCINE"
// * #15268604008	"SPIKEVAX"
// * #15268619005	"SPUTNIK LIGHT"
// * #15268619004	"SPUTNIK V"
// * #15268625001	"TOZINAMERAN"
// * #15268603009	"VACUNA COVID-19 ASTRAZENECA"
// * #15268640005	"VACUNA COVID-19 JANSSEN"
// * #15268625007	"VACUNA COVID-19 PFIZER BIONTECH"
// * #15268625009	"VACUNA PFIZER-BIONTECH COVID-19"
// * #15268603007	"VAXZEVRIA"
// * #15268663004	"WIBP-CORV"