Profile:        Practitioner_esavi
Parent:         Practitioner
Id:             Practitioner-esavi
Title:          "Persona Notificadora AEFI"
Description:    "Perfil de Persona Notificadora AEFI"
* insert RuleSetMeta
* name 1..1 MS

// Ejemplo de Persona Notificadora
Instance: PersonaNotificadoraEjemplo
InstanceOf: Practitioner_esavi
Title: "Ejemplo de Persona Notificadora ESAVI"
Description: "Ejemplo de Persona Notificadora ESAVI"
Usage: #example
* name.family = "Notificadora"
* name.given[0] = "María"

