Profile:        Patient_esavi
Parent:         Patient
Id:             Patient-esavi
Title:          "Paciente AEFI"
Description:    "Perfil de Paciente AEFI"
* insert RuleSetMeta
* name 1..1 MS

// Ejemplo de Persona Notificadora
Instance: PersonaAfectadaEjemplo
InstanceOf: Patient_esavi
Title: "Ejemplo de Persona Afectada ESAVI"
Description: "Ejemplo de Persona Afectada ESAVI"
Usage: #example
* name.family = "Afectado"
* name.given[0] = "Alberto"

