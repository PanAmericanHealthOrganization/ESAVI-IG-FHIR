Profile: Composition_esavi
Parent: Composition
Id: Composition-esavi
Title: "Notificación ESAVI"
Description: "Documentación de un Efecto Adverso"
/* Campos Fijos */
* status = #final
* type = LOINC#85893-6 "Adverse event note"
* title = "Notificación ESAVI"

/* Restricciones */
* date 1..1 MS
* identifier 1..1 MS
* identifier.system 1..1
* identifier.value 1..1
* subject 1..1 MS
* subject only Reference(Patient-esavi)
* author 1..1 MS
* author only Reference(Practitioner_esavi)


/* Secciones de la Notificación */
* section 9..9 MS
* section.code 1..1 MS
* section.title 1..1 MS
* section.text MS
* section.entry MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.description = "Secciones requeridas para la notificación"
* section contains
s_AntecedentesPersonaVacunada 1..1 and
s_ParticipacionEnsayoClinico 1..1 and
s_DetallesEmbarazo 1..1 and
s_AdministracionVacuna 1..1 and
s_VacunacionPrevia 1..1 and
s_EventoAdverso 1..1 and
s_GravedadEventoAdverso 1..1 and
s_Desenlace 1..1 and
s_Conclusiones 1..1

* section[s_AntecedentesPersonaVacunada].code = SeccionesNotificacionCS#s_AntecedentesPersonaVacunada
* section[s_AntecedentesPersonaVacunada].title = "Antecedentes de la Persona Vacunada"
* section[s_AntecedentesPersonaVacunada].entry only Reference(esavi-response-antecedentes)
* section[s_DetallesEmbarazo].code = SeccionesNotificacionCS#s_DetallesEmbarazo
* section[s_DetallesEmbarazo].title = "Detalles Embarazo"
* section[s_ParticipacionEnsayoClinico].code = SeccionesNotificacionCS#s_ParticipacionEnsayoClinico
* section[s_ParticipacionEnsayoClinico].title = "Participacion en Ensayo Clinico"
* section[s_AdministracionVacuna].code = SeccionesNotificacionCS#s_AdministracionVacuna
* section[s_AdministracionVacuna].title = "Administración de Vacuna"
* section[s_VacunacionPrevia].code = SeccionesNotificacionCS#s_VacunacionPrevia
* section[s_VacunacionPrevia].title = "Vacunación Previa"
* section[s_EventoAdverso].code = SeccionesNotificacionCS#s_EventoAdverso
* section[s_EventoAdverso].title = "Evento Adverso"
* section[s_GravedadEventoAdverso].code = SeccionesNotificacionCS#s_GravedadEventoAdverso
* section[s_GravedadEventoAdverso].title = "Gravedad del Evento Adverso"
* section[s_Desenlace].code = SeccionesNotificacionCS#s_Desenlace
* section[s_Desenlace].title = "Desenlace del Evento Adverso"
* section[s_Conclusiones].code = SeccionesNotificacionCS#s_Conclusiones
* section[s_Conclusiones].title = "Conclusiones"


// Ejemplo de Reporte de Notificacion ESAVI
Instance: NotificacionESAVIEjemplo
InstanceOf: Composition_esavi
Title: "Ejemplo de Notificación ESAVI"
Description: "Un documento ejemplo de una notificación ESAVI"
Usage: #example

* date = 2021-12-10T17:18:00-05:00
* author = Reference(PersonaNotificadoraEjemplo)
* identifier.system = "http://paho.esavi.org/reportes"
* identifier.value = "AR-4444-9b0e-1adc-007a-4f5cecb8ce6a"
* subject = Reference(PersonaVacunadaEjemplo)
* section[+].text.status = #generated
* section[=].code = SeccionesNotificacionCS#s_AntecedentesPersonaVacunada
* section[=].title = "Antecedentes de la Persona Vacunada"
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Hola</div>"
* section[=].entry[+] = Reference(RespuestaAntecedentesEjemplo)
