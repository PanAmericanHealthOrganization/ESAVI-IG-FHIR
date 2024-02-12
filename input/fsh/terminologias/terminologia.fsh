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
* insert RuleSetCS

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
* include codes from system SCT where concept is-a #118185001 "Hallazgo relacionado al embarazo"  


ValueSet: EsaviOtroVS //revisado OKs CS externo. LinkID: codigoESAVIOtro
Id: EsaviOtroVS
Title: "Otros Códigos Evento Adverso"
Description: "Evento Adverso en otro sistema según Snomed y CIE-10"
* insert RuleSetVS
* include codes from system SCT where concept is-a #404684003 "Hallazgo Clínico"
//* include codes from system ICD11mms where concept is-a #XY0Y "Afección principal"
/** include codes from system ICD10 where concept is-a #E03.9	"Hipotiroidismo, no especificado"
* include codes from system ICD10 where concept is-a #E66.9	"Obesidad, no especificada"
* include codes from system ICD10 where concept is-a #E10.9	"Diabetes mellitus insulinodependiente, sin mención de complicación"
* include codes from system ICD10 where concept is-a #O03.9	"Aborto espontáneo completo o no especificado, sin complicación"
* include codes from system ICD10 where concept is-a #L53.9	"Afección eritematosa, no especificada"
* include codes from system ICD10 where concept is-a #R60.0	"Edema localizado"
* include codes from system ICD10 where concept is-a #R52	"Dolor, no clasificado en otra parte"
* include codes from system ICD10 where concept is-a #R50	"Fiebre de otro origen y de origen desconocido"
* include codes from system ICD10 where concept is-a #G51.0	"Paralisis de Bell"
* include codes from system ICD10 where concept is-a #H92.0	"Otalgia"
* include codes from system ICD10 where concept is-a #H93.1	"Tinnitus"*/

ValueSet: CodigoWhoVacunaVS //revisado y modificado. LinkID:codigoVacunaWHODrug  
Id: CodigoWhoVacunaVS
Title: "Codigo WHODrug de la vacuna"
Description: "Codificación Estandarizda del código de las Vacunas según WhoDrug"
* insert RuleSetVS

//* include codes from system CodigoWhoVacunaCS //Acotado a Vacunas COVID
//* include codes from system WHODrugPMID 
//* include codes from system WHODrugDC
* include codes from system WHODrug

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
* insert RuleSetCS
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
* insert RuleSetCS
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
* insert RuleSetCS
* ^count = 3
* #1 "Si"
* #2 "No"
* #3 "No sabe"


ValueSet: CodigoMedicamentoVS //revisado OKs CS externo, LinkIDs: codigoMedicamento
Id: CodigoMedicamentoVS
Title: "Codigo Medicamento"
Description:  "Codigo Medicamento"
* insert RuleSetVS
* include codes from system SCT where concept is-a #105590001 "Sustancia"
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
* insert RuleSetCS

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
* insert RuleSetCS

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
* insert RuleSetCS

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
* insert RuleSetCS

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
* insert RuleSetCS

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
* insert RuleSetVS

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
* insert RuleSetCS

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
* insert RuleSetCS

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
* insert RuleSetCS

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
* insert RuleSetCS

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
