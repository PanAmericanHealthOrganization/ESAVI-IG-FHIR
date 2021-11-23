Instance: ejemploQuestionnaireEsavi
Title: "Ejemplo Cuestionario"
Description: "Description"
InstanceOf: Questionnaire
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire|2.7"
* meta.tag.code = #"lformsVersion: 29.2.1"
* status = #draft
* item[0].type = #group
* item[=].required = false
* item[=].linkId = "datosNotificacionGeneral"
* item[=].text = "Datos Administrativos de la Notificación"
* item[=].item[0].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "datosNotificacion"
* item[=].item[=].text = "Datos de quién y donde se realiza la notificación"
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "organizacionNotificadora"
* item[=].item[=].item[=].text = "Nombre Organización que Notifica"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "DirOrgNotiVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "direccionOrganizacion"
* item[=].item[=].item[=].text = "Dirección en formato de OPS de Organización que Notifica ESAVI"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "DirOrgNotiVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "profesionalNotificador"
* item[=].item[=].item[=].text = "Profesión de quien notifica ESAVI"
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechas"
* item[=].item[=].text = "Fechas Administrativas"
* item[=].item[=].item[0].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaConsulta"
* item[=].item[=].item[=].text = "Fecha de consulta por sintómas"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaNotificacion"
* item[=].item[=].item[=].text = "Fecha de nacimiento"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaLlenadoFicha"
* item[=].item[=].item[=].text = "Fecha que se llenó este formulario"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "FechaAlmacenaRepNacacional"
* item[=].item[=].item[=].text = "Fecha en la que el formulario fue almacenado localmente"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "FechaAlmacenaRepOPS"
* item[=].item[=].item[=].text = "Fecha en la que el formulario fue almacenado en OPS"
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "datosPacienteCaso"
* item[=].text = "Datos Demográficos de Paciente ESAVI"
* item[=].item.type = #group
* item[=].item.required = false
* item[=].item.linkId = "datosPaciente"
* item[=].item.text = "Datos del Paciente ESAVI"
* item[=].item.item[0].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "numeroCaso"
* item[=].item.item[=].text = "UUID que identifica el caso"
* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "Iso3166-1-N"
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "paisOrigen-Reg"
* item[=].item.item[=].text = "País en donde se originó el Registro"
* item[=].item.item[+].type = #group
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "idPaciente"
* item[=].item.item[=].text = "Número Identificación de Paciente, en UUID"
* item[=].item.item[=].item.type = #string
* item[=].item.item[=].item.required = false
* item[=].item.item[=].item.linkId = "value"
* item[=].item.item[=].item.text = "UUID de identificación"
* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "DirOrgNotiVS"
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "residenciaHabitual"
* item[=].item.item[=].text = "Residencia habitual del Paciente"
* item[=].item.item[+].type = #choice
* item[=].item.item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "sexoPaciente"
* item[=].item.item[=].text = "Sexo del paciente"
* item[=].item.item[+].type = #date
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "fechaNacimiento"
* item[=].item.item[=].text = "Fecha de nacimiento del Paciente"
* item[=].item.item[+].type = #string
* item[=].item.item[=].required = false
* item[=].item.item[=].linkId = "etnia"
* item[=].item.item[=].text = "Etnia reconcida por el paciente"
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "antecedentesMedicos"
* item[=].text = "Antecedentes médicos previos identificados por el paciente"
* item[=].item[0].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "antecedentesEnfermedadesPrevias"
* item[=].item[=].text = "Antedecentes de enfermedades previas o SARS-Cov2"
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "descripcionEnfPrevia"
* item[=].item[=].item[=].text = "Descripción de la enfermedad notificada"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMedraEnfPrevia"
* item[=].item[=].item[=].text = "Código del Antedente de la enfermedad notificada"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "EnfermedadesPreviasCodificacionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otrosCodigosEnfPrevia"
* item[=].item[=].item[=].text = "Otro Código de los antecedentes de enfermedad notificada"
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "antecedentesEventosAdversos"
* item[=].item[=].text = "Declaración de existencia de eventos adversos previos"
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "antecedentesAdvVacunas"
* item[=].item[=].item[=].text = "Declaración de antecedentes de Eventos Adversos con vacunas si|no|desconoce"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "antecedentesAdvMedicamentos"
* item[=].item[=].item[=].text = "Declaración de antecedentes de Eventos Adversos con medicamentos si|no|desconoce"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "antecedentesAdvMismaVacuna"
* item[=].item[=].item[=].text = "Declaración de antecedentes de Eventos Adversos con misma vacuna si|no|desconoce"
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "antecedentesSarsCov2"
* item[=].item[=].text = "Antecedentes que Paciente ha padecido COVID-19"
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "asintomaticoSars"
* item[=].item[=].item[=].text = "Covid-19 asintomatico?"
* item[=].item[=].item[+].type = #dateTime
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaSintomasCovid19"
* item[=].item[=].item[=].text = "Fecha en la cual el paciente reconoce haber tenido sintomas"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "confirmacionDiagnosticoCovid19"
* item[=].item[=].item[=].text = "¿Diagnóstico de COVID19 confirmado?"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "ModoConfirmacionInfeccionVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "tipoConfirmacionCovid19"
* item[=].item[=].item[=].text = "Tipo de confirmación de diagnóstico COVID.19"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaTomaMuestraCovid19"
* item[=].item[=].item[=].text = "Fecha en la cual se tomó la muestra para examen de COVID-19"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "ensayoClinicoCovid19"
* item[=].item[=].item[=].text = "Consulta si particpó en algún ensayo clínico para COVID-19"
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "antecedentesFarmacosVacunas"
* item[=].text = "Antecedentes si el paciente consume fármcos durante ESAVI o ha recibido otra vacunas en los ultimos 30 días previos a la vacuna con sospecha de generar ESAVI"
* item[=].item[0].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "medicamento"
* item[=].item[=].text = "Antecedentes de medicamentos que el paciente consume al momento de generar ESAVI"
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "descripcionMedicamento"
* item[=].item[=].item[=].text = "Descripción del medicamento consumido"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "MedicamentoGenericoVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "codigoMedicamento"
* item[=].item[=].item[=].text = "Código WHO del medicamento consumido por el paciente"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "MedicamentoOtroVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otroCodigoMedicamento"
* item[=].item[=].item[=].text = "Otro código de sistema distinto a WhoDrugs"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "SustanciaActivaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "sustanciaActiva"
* item[=].item[=].item[=].text = "Descripción de la o las susbstancias activas del medicamento consumido"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "MedicamentoGenericoVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreGenerico"
* item[=].item[=].item[=].text = "Nombre Genérico del Medicamento SNOMED-CT|WHODrugs"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "NombreComercialMedicamentoVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "nombreComercial"
* item[=].item[=].item[=].text = "Nombre comercial con el que se conoce el medicamento"
* item[=].item[=].item[+].type = #group
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "formaFarmacologica"
* item[=].item[=].item[=].text = "Forma Farmacéutica del Medicamento"
* item[=].item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "FormaFarmaceuticaVS"
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].linkId = "forma"
* item[=].item[=].item[=].item[=].text = "Forma Farmaceutica"
* item[=].item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].item[=].answerValueSet = "ViaAdminMedicamentoVS"
* item[=].item[=].item[=].item[=].required = false
* item[=].item[=].item[=].item[=].linkId = "viaAdministracion"
* item[=].item[=].item[=].item[=].text = "Vía mediante la cual el medicamento ha sido administrado al paciente"
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "vacunasUltimos30Dias"
* item[=].item[=].text = "Descripción de Vacunas colocadas hast 30 días previos a ESAVI"
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "vacunasAdministradas"
* item[=].item[=].item[=].text = "Nombre de Vacunas Administradas según paciente"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "ModoVerificacionVacunaVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "mecanismoVerificacion"
* item[=].item[=].item[=].text = "Código del mecanismo de verificación de vacuna colocada"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otroMecanismoVerificacion"
* item[=].item[=].item[=].text = "Descripción de otro mecanismo no considerado en los códigos"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "vacunatorioVacunaPrevia"
* item[=].item[=].item[=].text = "Nombre del vacunatorio en donde se inyectó vacuna"
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "registroESAVI"
* item[=].text = "Registro de ESAVI desarrollado por el paciente"
* item[=].item[0].type = #choice
* item[=].item[=].answerValueSet = "DirOrgNotiVS"
* item[=].item[=].required = false
* item[=].item[=].linkId = "direccionVacunatorio"
* item[=].item[=].text = "Dirección del vacunatorio según código OPS"
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "datosESAVI"
* item[=].item[=].text = "Datos del ESAVI generado y la relevancia de este"
* item[=].item[=].item[0].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "esaviReacciones"
* item[=].item[=].item[=].text = "Eventos y reacciónes manifestados por el paciente para el ESAVI descrito"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "EsaviMedraVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "esaviMedra"
* item[=].item[=].item[=].text = "Código Medra de la reacción adversa generada por la vacuna"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "EsaviOtroVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "esaviOtroCodigo"
* item[=].item[=].item[=].text = "Código no Medra de la reacción adversa generada por la vacuna"
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "embarazoESAVI"
* item[=].item[=].text = "Datos relacionados con paciente embarazada al momento de generar ESAVI"
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "embarazoDuranteVacuna"
* item[=].item[=].item[=].text = "Consulta sobre la condición de embarazo al vacunarse"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "embarazoAlDesarrolloESAVI"
* item[=].item[=].item[=].text = "Consulta sobre la condición de embarazo al desarrolar ESAVI"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaUltimaRegla"
* item[=].item[=].item[=].text = "Fecha de la última menstruación de la Paciente"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaParto"
* item[=].item[=].item[=].text = "Fecha probable del parto"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "RespuestaSiNoNosabeVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "monitoreoPosteriorVacuna"
* item[=].item[=].item[=].text = "Consulta sobre si se monitoreo paciente una vez vacunada"
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "complicacionesEmbarazo"
* item[=].item[=].text = "Descripción de las complicaciones sufridas durante el embarazo"
* item[=].item[=].item[0].type = #choice
* item[=].item[=].item[=].answerValueSet = "ComplicacionEmbarazoVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "complicacionDuranteEmbarazo"
* item[=].item[=].item[=].text = "Descripción de la complicación"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "complicacionEmbarazo"
* item[=].item[=].item[=].text = "Descripción de la Complicación"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "ComplicacionEmbarazoMedraVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "complicacionEmbarazoMedra"
* item[=].item[=].item[=].text = "Código Medra Confirmación Embarazo"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "ComplicacionEmbarazoOtroVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "complicacionEmbarazoOtro"
* item[=].item[=].item[=].text = "Código No Medra Confirmación Embarazo"
* item[=].item[+].type = #group
* item[=].item[=].required = false
* item[=].item[=].linkId = "desenlaceESAVI"
* item[=].item[=].text = "Determinación del estado de gravedad del ESAVI"
* item[=].item[=].item[0].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "tipoGravedad"
* item[=].item[=].item[=].text = "Definición si el ESAVI es de Gravedad o No"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravMuerte"
* item[=].item[=].item[=].text = "¿Es la gravedad la muerte del paciente?"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravRiesgoVida"
* item[=].item[=].item[=].text = "¿Es la gravedad de Riesgo de Vida del paciente?"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravDiscapacidad"
* item[=].item[=].item[=].text = "¿Es la gravedad la discapacidad del paciente?"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravAnomaliaCongenita"
* item[=].item[=].item[=].text = "¿Es la gravedad el gatillante de una anomalía congénita paciente?"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravAborto"
* item[=].item[=].item[=].text = "¿Es la gravedad aborto en el paciente?"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "gravMuerteFetal"
* item[=].item[=].item[=].text = "¿Es la gravedad la muerte fetal en el paciente?"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "otrosEventosImportantes"
* item[=].item[=].item[=].text = "Otros Eventos considerados Médicamente Importantes"
* item[=].item[=].item[=].item.type = #string
* item[=].item[=].item[=].item.required = false
* item[=].item[=].item[=].item.linkId = "otrosEventosImportantesTx"
* item[=].item[=].item[=].item.text = "Definición Otros Eventos considerados Médicamente Importantes"
* item[=].item[=].item[+].type = #choice
* item[=].item[=].item[=].answerValueSet = "ClasificacionDesenlaceVS"
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "desenlaceESAVI"
* item[=].item[=].item[=].text = "Desenlace según categoría"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaMuerte"
* item[=].item[=].item[=].text = "Fecha de muerte producida por posible ESAVI"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "autopsia"
* item[=].item[=].item[=].text = "Determinación si hubo o no Autopsia"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaNotificaMuerte"
* item[=].item[=].item[=].text = "Fecha en la cual se notifico la muerte del paciente al registro nacional"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaNotificaMuerteFetal"
* item[=].item[=].item[=].text = "Fecha en la cual se notifico la muerte del feto de paciente al registro nacional"
* item[=].item[=].item[+].type = #boolean
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "autopsiaFetal"
* item[=].item[=].item[=].text = "Determinación si hubo o no Autopsia Fetal"
* item[=].item[=].item[+].type = #string
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "comentarios"
* item[=].item[=].item[=].text = "Comentarios adicionales en cuanto al cuadro ESAVI"
* item[=].item[=].item[+].type = #date
* item[=].item[=].item[=].required = false
* item[=].item[=].item[=].linkId = "fechaInicioInvestigacion"
* item[=].item[=].item[=].text = "Fecha en la cual se inicia investigación"
* item[+].type = #group
* item[=].required = false
* item[=].linkId = "registroVacunaCovidOtras"
* item[=].text = "Registro de la Vacuna COVID19 colocada y de otras colocadas al mismo tiempo"
* item[=].item[0].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "descripcionVacuna"
* item[=].item[=].text = "Descripción de la vacuna sospecha de generar ESAVI"
* item[=].item[+].type = #choice
* item[=].item[=].answerValueSet = "CodigoWhoVacunaVS"
* item[=].item[=].required = false
* item[=].item[=].linkId = "codigoWhoVacuna"
* item[=].item[=].text = "Código WhoDrugs de la Vacuna"
* item[=].item[+].type = #choice
* item[=].item[=].answerValueSet = "CodigoOtroVacunaVS"
* item[=].item[=].required = false
* item[=].item[=].linkId = "codigoOtroVacuna"
* item[=].item[=].text = "Código no WhoDrugs de la Vacuna"
* item[=].item[+].type = #dateTime
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaHoraVacunacion"
* item[=].item[=].text = "Fecha y hora en la cual se colocó la vacuna que habria generado ESAVI"
* item[=].item[+].type = #integer
* item[=].item[=].required = false
* item[=].item[=].linkId = "dosisVacuna"
* item[=].item[=].text = "1a, 2a o 3ra dosis"
* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "numeroLote"
* item[=].item[=].text = "Númer del Lote de la Vacuna colocada"
* item[=].item[+].type = #date
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaVencimientoVacuna"
* item[=].item[=].text = "Fecha de Vencimiento de vacuna"
* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "nombreDiluyenteVacuna"
* item[=].item[=].text = "Nombre del Diluyente de la Vacuna"
* item[=].item[+].type = #string
* item[=].item[=].required = false
* item[=].item[=].linkId = "numeroLoteDiluyente"
* item[=].item[=].text = "Numero del lote del diluyente de la vacuna"
* item[=].item[+].type = #date
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaVencimientoDiluyente"
* item[=].item[=].text = "Fecha de vencimiento del diluyente de la vacuna"
* item[=].item[+].type = #dateTime
* item[=].item[=].required = false
* item[=].item[=].linkId = "fechaHoraReconstitucionVacuna"
* item[=].item[=].text = "Fecha y Hora de Reconstrucción de la Vacuna"