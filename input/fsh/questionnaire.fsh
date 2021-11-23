Profile: ESAVIQuestionnaire2
Parent: Questionnaire
Id: ESAVIQuestionnaire2
Title: "ESAVIQuestionnaire2"
* ^url = "http://paho.org/esavi/ESAVIQuestionnaire2"
* ^status = #draft
* status MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains datosNotificacionGeneral 0..* and
                datosPacienteCaso 0..* and
                antecedentesMedicos 0..* and
                antecedentesFarmacosVacunas	0..* and
                registroESAVI 0..* and
                registroVacunaCovidOtras 0..*
* item[datosNotificacionGeneral] ^short = "Datos Administrativos de la Notificación"
* item[datosNotificacionGeneral] ^definition = "Datos Administrativos de la Notificación"
* item[datosNotificacionGeneral] MS
* item[datosNotificacionGeneral].item ^slicing.discriminator.type = #value
* item[datosNotificacionGeneral].item ^slicing.discriminator.path = "linkId"
* item[datosNotificacionGeneral].item ^slicing.rules = #open
* item[datosNotificacionGeneral].item contains
    datosNotificacion 0..* and
    fechas 0..*
* item[datosNotificacionGeneral].item[datosNotificacion] ^short = "Datos de quién y donde se realiza la notificación"
* item[datosNotificacionGeneral].item[datosNotificacion] MS
* item[datosNotificacionGeneral].item[datosNotificacion] ^definition = "Datos de quién y donde se realiza la notificación"
* item[datosNotificacionGeneral].item[datosNotificacion].item ^slicing.discriminator.type = #value
* item[datosNotificacionGeneral].item[datosNotificacion].item ^slicing.discriminator.path = "linkId"
* item[datosNotificacionGeneral].item[datosNotificacion].item ^slicing.rules = #open
* item[datosNotificacionGeneral].item[datosNotificacion].item contains
    organizacionNotificadora 0..* MS and
    direccionOrganizacion 0..* and
    profesionalNotificador 0..*
* item[datosNotificacionGeneral].item[datosNotificacion].item[organizacionNotificadora] ^short = "Nombre Organización que Notifica"
* item[datosNotificacionGeneral].item[datosNotificacion].item[organizacionNotificadora] MS
* item[datosNotificacionGeneral].item[datosNotificacion].item[organizacionNotificadora] ^definition = "Nombre Organización que Notifica"
* item[datosNotificacionGeneral].item[datosNotificacion].item[organizacionNotificadora].linkId = "Nombre Organización que Notifica" (exactly)
* item[datosNotificacionGeneral].item[datosNotificacion].item[organizacionNotificadora].type = #string (exactly)
* item[datosNotificacionGeneral].item[datosNotificacion].item[organizacionNotificadora].answerOption.value[x] only string
* item[datosNotificacionGeneral].item[datosNotificacion].item[direccionOrganizacion].linkId = "direccionOrganizacion" (exactly)
* item[datosNotificacionGeneral].item[datosNotificacion].item[direccionOrganizacion] MS
* item[datosNotificacionGeneral].item[datosNotificacion].item[direccionOrganizacion].type = #choice (exactly)
* item[datosNotificacionGeneral].item[datosNotificacion].item[direccionOrganizacion].answerOption.value[x] only Coding
* item[datosNotificacionGeneral].item[datosNotificacion].item[direccionOrganizacion].answerOption.value[x].system = "http://paho.org/esavi/CodeSystem/DirOrgNotiCS" (exactly)
* item[datosNotificacionGeneral].item[datosNotificacion].item[profesionalNotificador].linkId = "profesionalNotificador" (exactly)
* item[datosNotificacionGeneral].item[datosNotificacion].item[profesionalNotificador] MS
* item[datosNotificacionGeneral].item[datosNotificacion].item[profesionalNotificador].type = #choice (exactly)
* item[datosNotificacionGeneral].item[datosNotificacion].item[profesionalNotificador].answerOption.value[x] only Coding
* item[datosNotificacionGeneral].item[datosNotificacion].item[profesionalNotificador].answerOption.value[x].system = "http://paho.org/esavi/CodeSystem/ProfesionalNotificadorCS" (exactly)
* item[datosNotificacionGeneral].item[fechas].item ^slicing.discriminator.type = #value
* item[datosNotificacionGeneral].item[fechas].item MS
* item[datosNotificacionGeneral].item[fechas].item ^slicing.discriminator.path = "linkId"
* item[datosNotificacionGeneral].item[fechas].item ^slicing.rules = #open
* item[datosNotificacionGeneral].item[fechas].item contains
    fechaConsulta 0..* and
    fechaNotificacion 0..* and
    fechaLlenadoFicha 0..* and
    FechaAlmacenaRepNacacional 0..* and
    FechaAlmacenaRepOPS 0..*
* item[datosNotificacionGeneral].item[fechas].item[fechaConsulta].type = #date (exactly)
* item[datosNotificacionGeneral].item[fechas].item[fechaConsulta].answerOption.value[x] only date
* item[datosNotificacionGeneral].item[fechas].item[fechaConsulta] MS
* item[datosNotificacionGeneral].item[fechas].item[fechaNotificacion].type = #date (exactly)
* item[datosNotificacionGeneral].item[fechas].item[fechaNotificacion] MS
* item[datosNotificacionGeneral].item[fechas].item[fechaNotificacion].answerOption.value[x] only date
* item[datosNotificacionGeneral].item[fechas].item[fechaLlenadoFicha].type = #date (exactly)
* item[datosNotificacionGeneral].item[fechas].item[fechaLlenadoFicha] MS
* item[datosNotificacionGeneral].item[fechas].item[fechaLlenadoFicha].answerOption.value[x] only date
* item[datosNotificacionGeneral].item[fechas].item[FechaAlmacenaRepNacacional].type = #date (exactly)
* item[datosNotificacionGeneral].item[fechas].item[FechaAlmacenaRepNacacional] MS
* item[datosNotificacionGeneral].item[fechas].item[FechaAlmacenaRepNacacional].answerOption.value[x] only date
* item[datosNotificacionGeneral].item[fechas].item[FechaAlmacenaRepOPS].type = #date (exactly)
* item[datosNotificacionGeneral].item[fechas].item[FechaAlmacenaRepOPS] MS
* item[datosNotificacionGeneral].item[fechas].item[FechaAlmacenaRepOPS].answerOption.value[x] only date

* item[datosPacienteCaso].item ^slicing.discriminator.type = #value
* item[datosPacienteCaso].item ^slicing.discriminator.path = "linkId"
* item[datosPacienteCaso].item ^slicing.rules = #open
* item[datosPacienteCaso] MS
* item[datosPacienteCaso].item contains
    numeroCaso 0..* and
    paisOrigen-Reg 0..* and
    idPaciente 0..* and
    residenciaHabitual 0..* and
    sexoPaciente 0..* and
    fechaNacimiento 0..* and
    etnia 0..*

* item[antecedentesMedicos].item ^slicing.discriminator.type = #value
* item[antecedentesMedicos].item ^slicing.discriminator.path = "linkId"
* item[antecedentesMedicos].item ^slicing.rules = #open
* item[antecedentesMedicos] MS
* item[antecedentesMedicos].item contains
    antecedentesEnfermedadesPrevias 0..* and
    antecedentesEventosAdversos 0..* and
    antecedentesSarsCov2 0..*

* item[antecedentesMedicos].item[antecedentesEnfermedadesPrevias].item ^slicing.discriminator.type = #value
* item[antecedentesMedicos].item[antecedentesEnfermedadesPrevias].item ^slicing.discriminator.path = "linkId"
* item[antecedentesMedicos].item[antecedentesEnfermedadesPrevias].item ^slicing.rules = #open
* item[antecedentesMedicos].item[antecedentesEnfermedadesPrevias] MS
* item[antecedentesMedicos].item[antecedentesEnfermedadesPrevias].item contains
    antecedentesEnfermedades 0..* and
    antecedentespreviosSarsCov2 0..*

* item[antecedentesMedicos].item[antecedentesEventosAdversos].item ^slicing.discriminator.type = #value
* item[antecedentesMedicos].item[antecedentesEventosAdversos].item ^slicing.discriminator.path = "linkId"
* item[antecedentesMedicos].item[antecedentesEventosAdversos].item ^slicing.rules = #open
* item[antecedentesMedicos].item[antecedentesEventosAdversos] MS
* item[antecedentesMedicos].item[antecedentesEventosAdversos].item contains
    antecedentesVacuna 0..* and
    antecedentesEventosMedicamentos	 0..* and
    antecedentesEventosMismaVacuna 0..*
* item[antecedentesMedicos].item[antecedentesSarsCov2].item ^slicing.discriminator.type = #value
* item[antecedentesMedicos].item[antecedentesSarsCov2].item ^slicing.discriminator.path = "linkId"
* item[antecedentesMedicos].item[antecedentesSarsCov2].item ^slicing.rules = #open
* item[antecedentesMedicos].item[antecedentesSarsCov2] MS
* item[antecedentesMedicos].item[antecedentesSarsCov2].item contains
    asintomaticoSars 0..* and
    fechaSintomasCovid19	 0..* and
    confirmacionDiagnosticoCovid19 0..* and
    tipoConfirmacionCovid19 0..* and
    fechaTomaMuestraCovid19 0..* and
    ensayoClinicoCovid19 0..*



* item[antecedentesFarmacosVacunas].item ^slicing.discriminator.type = #value
* item[antecedentesFarmacosVacunas].item ^slicing.discriminator.path = "linkId"
* item[antecedentesFarmacosVacunas].item ^slicing.rules = #open
* item[antecedentesFarmacosVacunas].item MS
* item[antecedentesFarmacosVacunas].item contains
    medicamento 0..* and
    consultaVacunasPrev 0..* and
    vacunasUltimos30Dias 0..*
* item[antecedentesFarmacosVacunas].item[medicamento].item ^slicing.discriminator.type = #value
* item[antecedentesFarmacosVacunas].item[medicamento].item ^slicing.discriminator.path = "linkId"
* item[antecedentesFarmacosVacunas].item[medicamento].item ^slicing.rules = #open
* item[antecedentesFarmacosVacunas].item[medicamento].item MS
* item[antecedentesFarmacosVacunas].item[medicamento].item contains
    sustanciaActiva 0..* and
    nombreGenerico  0..* and
    nombreComercial 0..* and
    formaFarmacologica 0..*


//* item[antecedentesFarmacosVacunas].item[medicamento].item[formaFarmacologica].item ^slicing.discriminator.type = #value
//* item[antecedentesFarmacosVacunas].item[medicamento].item[formaFarmacologica].item ^slicing.discriminator.path = "linkId"
//* item[antecedentesFarmacosVacunas].item[medicamento].item[formaFarmacologica].item ^slicing.rules = #open
//* item[antecedentesFarmacosVacunas].item[medicamento].item[formaFarmacologica].item MS
/*
* item[antecedentesFarmacosVacunas].item[medicamento].item[formaFarmacologica].item contains
    forma 0..* and
    dosisForma 0..* and
    viaAdministracion 0..* and
    fechaInicioConsumo 0..*
*/
* item[antecedentesFarmacosVacunas].item[consultaVacunasPrev].item ^slicing.discriminator.type = #value
* item[antecedentesFarmacosVacunas].item[consultaVacunasPrev].item ^slicing.discriminator.path = "linkId"
* item[antecedentesFarmacosVacunas].item[consultaVacunasPrev].item ^slicing.rules = #open
* item[antecedentesFarmacosVacunas].item[consultaVacunasPrev].item MS

* item[antecedentesFarmacosVacunas].item[vacunasUltimos30Dias].item ^slicing.discriminator.type = #value
* item[antecedentesFarmacosVacunas].item[vacunasUltimos30Dias].item ^slicing.discriminator.path = "linkId"
* item[antecedentesFarmacosVacunas].item[vacunasUltimos30Dias].item ^slicing.rules = #open
* item[antecedentesFarmacosVacunas].item[vacunasUltimos30Dias].item MS
* item[antecedentesFarmacosVacunas].item[vacunasUltimos30Dias].item contains
    vacunasAdministradas 0..* and
    mecanismoVerificacion 0..* and
    otroMecanismoVerificacion 0..* and
    vacunatorioVacunaPrevia 0..*


* item[registroESAVI].item ^slicing.discriminator.type = #value
* item[registroESAVI].item ^slicing.discriminator.path = "linkId"
* item[registroESAVI].item ^slicing.rules = #open
* item[registroESAVI].item MS
* item[registroESAVI].item contains
    direccionVacunatorio 0..* and
    datosESAVI 0..* and
    embarazoESAVI 0..* and
    complicacionesEmbarazo  0..* and
    desenlaceESAVI 0..*
* item[registroESAVI].item[direccionVacunatorio].item ^slicing.discriminator.type = #value
* item[registroESAVI].item[direccionVacunatorio].item ^slicing.discriminator.path = "linkId"
* item[registroESAVI].item[direccionVacunatorio].item ^slicing.rules = #open
* item[registroESAVI].item[direccionVacunatorio].item MS

* item[registroESAVI].item[datosESAVI].item ^slicing.discriminator.type = #value
* item[registroESAVI].item[datosESAVI].item ^slicing.discriminator.path = "linkId"
* item[registroESAVI].item[datosESAVI].item ^slicing.rules = #open
* item[registroESAVI].item[datosESAVI].item MS
* item[registroESAVI].item[datosESAVI].item contains
    eventosAdversosReacciones 0..* and
    eventoAdversoPrincpal  0..* and
    fechaHoraESAVI 0..* 

* item[registroESAVI].item[embarazoESAVI].item ^slicing.discriminator.type = #value
* item[registroESAVI].item[embarazoESAVI].item ^slicing.discriminator.path = "linkId"
* item[registroESAVI].item[embarazoESAVI].item ^slicing.rules = #open
* item[registroESAVI].item[embarazoESAVI].item MS
* item[registroESAVI].item[embarazoESAVI].item contains
    embarazoDuranteVacuna 0..* and
    embarazoAlDesarrolloESAVI  0..* and
    fechaUltimaRegla 0..* and
    fechaParto 0..* and
    monitoreoPosteriorVacuna 0..*
