Profile: ESAVIQuestionario2
Parent: Questionnaire
Id: ESAVIQuestionario2
Description: "Estructura del cuestionario de notificaciones ESAVI_OPS"
//* ^url = "https://example.org/fhir/StructureDefinition/ESAVIQuestionario"
* ^status = #draft
* status = #draft (exactly)
* status ^short = "valor fijo \"draft\""
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains
    datosNotificacion 0..* and
    datosPacienteCaso 0..* and
    antecedentesMedicos 0..* and
    antecedentesFarmaVacunas 0..* and
    registroESAVI 0..* and
    registroVacunaCovidOtras 0..*
* item[datosNotificacion].item ^slicing.discriminator.type = #value
* item[datosNotificacion].item ^slicing.discriminator.path = "linkId"
* item[datosNotificacion].item ^slicing.rules = #open

/*
* item[datosNotificacion].item contains
    datosNotificador 0..* and
    fechas 0..*
* item[datosNotificacion].item[datosNotificador].item ^slicing.discriminator.type = #value
* item[datosNotificacion].item[datosNotificador].item ^slicing.discriminator.path = "linkId"
* item[datosNotificacion].item[datosNotificador].item ^slicing.rules = #open
* item[datosNotificacion].item[datosNotificador].item contains
    orgNot 0..* and
    direccionOrgNot 0..* and
    profesionQuienNotifica 0..*
* item[datosNotificacion].item[fechas].item ^slicing.discriminator.type = #value
* item[datosNotificacion].item[fechas].item ^slicing.discriminator.path = "linkId"
* item[datosNotificacion].item[fechas].item ^slicing.rules = #open
* item[datosNotificacion].item[fechas].item contains
    fechaConsulta 0..* and
    fechaNotificacion 0..* and
    fechaLlenadoFicha 0..* and
    fechaAlmacenamientoRepNac 0..* and
    sliceItem2 0..*
* item[datosPacienteCaso].item ^slicing.discriminator.type = #value
* item[datosPacienteCaso].item ^slicing.discriminator.path = "linkId"
* item[datosPacienteCaso].item ^slicing.rules = #open
* item[datosPacienteCaso].item contains
    numeroCaso 0..* and
    paisOrigenRegistro 0..* and
    numeroIdentificacionPaciente 0..* and
    residenciaHabitual 0..* and
    sexoPaciente 0..* and
    fechaNacimiento 0..* and
    etnia 0..*
* item[antecedentesMedicos].item.item ^slicing.discriminator.type = #value
* item[antecedentesMedicos].item.item ^slicing.discriminator.path = "linkId"
* item[antecedentesMedicos].item.item ^slicing.rules = #open
* item[antecedentesMedicos].item.item contains
    antecedentesEnfermedadesPrevias 0..* and
    antecedentesEventosAdversosPrevios 0..* and
    antecedentesSARSCov2 0..*
* item[antecedentesMedicos].item.item[antecedentesEnfermedadesPrevias].item ^slicing.discriminator.type = #value
* item[antecedentesMedicos].item.item[antecedentesEnfermedadesPrevias].item ^slicing.discriminator.path = "linkId"
* item[antecedentesMedicos].item.item[antecedentesEnfermedadesPrevias].item ^slicing.rules = #open
* item[antecedentesMedicos].item.item[antecedentesEnfermedadesPrevias].item contains
    antecedentesEnfermedades 0..* and
    antecedentesSARS 0..*
* item[antecedentesMedicos].item.item[antecedentesEventosAdversosPrevios].item ^slicing.discriminator.type = #value
* item[antecedentesMedicos].item.item[antecedentesEventosAdversosPrevios].item ^slicing.discriminator.path = "linkId"
* item[antecedentesMedicos].item.item[antecedentesEventosAdversosPrevios].item ^slicing.rules = #open
* item[antecedentesMedicos].item.item[antecedentesEventosAdversosPrevios].item contains
    antecedentesVacuna 0..* and
    antecedentesEventosAdversosMedicos 0..* and
    antecedentesMismaVacuna 0..*
* item[antecedentesMedicos].item.item[antecedentesSARSCov2].item ^slicing.discriminator.type = #value
* item[antecedentesMedicos].item.item[antecedentesSARSCov2].item ^slicing.discriminator.path = "linkId"
* item[antecedentesMedicos].item.item[antecedentesSARSCov2].item ^slicing.rules = #open
* item[antecedentesMedicos].item.item[antecedentesSARSCov2].item contains
    asintomaticoSARS 0..* and
    fechaSintomasCOVID19 0..* and
    confirmacionDiagnosticoCOVID19 0..* and
    tipoConfirmacionCOVID19 0..* and
    fechaTomaMuestraCOVID19 0..* and
    ensayoClinicoCOVID19 0..*
* item[antecedentesFarmaVacunas].item ^slicing.discriminator.type = #value
* item[antecedentesFarmaVacunas].item ^slicing.discriminator.path = "linkId"
* item[antecedentesFarmaVacunas].item ^slicing.rules = #open
* item[antecedentesFarmaVacunas].item contains
    medicamento 0..* and
    consultaVacunasPrevias 0..* and
    vacunas30Dias 0..*
* item[antecedentesFarmaVacunas].item[medicamento].item ^slicing.discriminator.type = #value
* item[antecedentesFarmaVacunas].item[medicamento].item ^slicing.discriminator.path = "linkId"
* item[antecedentesFarmaVacunas].item[medicamento].item ^slicing.rules = #open
* item[antecedentesFarmaVacunas].item[medicamento].item contains
    sustanciaActiva 0..* and
    nombreGenerico 0..* and
    nombreComercial 0..* and
    formaFarmaceutica 0..*
* item[antecedentesFarmaVacunas].item[medicamento].item[formaFarmaceutica].item ^slicing.discriminator.type = #value
* item[antecedentesFarmaVacunas].item[medicamento].item[formaFarmaceutica].item ^slicing.discriminator.path = "linkId"
* item[antecedentesFarmaVacunas].item[medicamento].item[formaFarmaceutica].item ^slicing.rules = #open
* item[antecedentesFarmaVacunas].item[medicamento].item[formaFarmaceutica].item contains
    forma 0..* and
    dosisForma 0..* and
    viaAdministracion 0..* and
    fechaInicioConsumo 0..*
* item[antecedentesFarmaVacunas].item[vacunas30Dias].item ^slicing.discriminator.type = #value
* item[antecedentesFarmaVacunas].item[vacunas30Dias].item ^slicing.discriminator.path = "linkId"
* item[antecedentesFarmaVacunas].item[vacunas30Dias].item ^slicing.rules = #open
* item[antecedentesFarmaVacunas].item[vacunas30Dias].item contains
    vacunasAdministradas 0..* and
    mecanismoVerificacion 0..* and
    otroMecanismoVerif 0..* and
    Vacunatorio30Dias 0..*
* item[registroVacunaCovidOtras].item ^slicing.discriminator.type = #value
* item[registroVacunaCovidOtras].item ^slicing.discriminator.path = "linkId"
* item[registroVacunaCovidOtras].item ^slicing.rules = #open
* item[registroVacunaCovidOtras].item contains
    nombreGenerico 0..* and
    nombreNoClasificado 0..* and
    nombreComercial 0..* and
    fabricanteVacuna 0..* and
    fechaVacunacion 0..* and
    dosisVacuna 0..* and
    NumeroLote 0..* and
    fechaVencimientoVacuna 0..* and
    nombreDiluyenteVacuna 0..* and
    NumeroLoteDiluyente 0..* and
    fechaVencimientoDiluyente 0..* and
    fechaHoraReconstruccionVacuna 0..*
*/