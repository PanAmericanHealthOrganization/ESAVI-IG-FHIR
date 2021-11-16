Profile:        Esavi_response_antecedentes
Parent:         QuestionnaireResponse
Id:             esavi-response-antecedentes
Title:          "Antecedentes Persona Vacunada"
Description:    "Antecedentes Persona Vacunada"
* insert RuleSetMeta
* status 1..1 MS
* status = #completed
* subject 1..1 MS 
* subject only Reference(Patient_esavi)
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item ^slicing.description = "Respuestas al Cuestionario"
* item contains
i_AntecedentesMedicos 1..1 and
i_AntecedentesPreviosSimilares 1..1 and
i_AntecedentesReaccionesAlergicasOtrasVacunas 1..1 and
i_AntecedentesReaccionesAlergicasMedicamentos 1..1 and
i_AntecedentesReaccionesAlergicasMismaVacuna 1..1 and
i_AntecedentesSARSCov2 1..1 and
i_Asintomatica 1..1 and
i_FechaInicioSintomas 0..1 and
i_ConfirmacionInfeccion 0..1 and
i_ConfirmacionExplicacion 0..1 and
i_FechaTomaMuestraConfirmatoria 0..1

* item[i_AntecedentesMedicos].linkId = "i_AntecedentesMedicos"
* item[i_AntecedentesMedicos].text = "Antecedentes Médicos"
* item[i_AntecedentesMedicos].answer.value[x] only string

* item[i_AntecedentesPreviosSimilares].linkId = "i_AntecedentesPreviosSimilares"
* item[i_AntecedentesPreviosSimilares].text = "Antecedentes Previos Similares"
* item[i_AntecedentesPreviosSimilares].answer.value[x] only Coding
* item[i_AntecedentesPreviosSimilares].answer.value[x] from respuestaSiNoNosabeVS

* item[i_AntecedentesReaccionesAlergicasOtrasVacunas].linkId = "i_AntecedentesReaccionesAlergicasOtrasVacunas"
* item[i_AntecedentesReaccionesAlergicasOtrasVacunas].text = "Antecedentes Reacciones Alergicas a Otras Vacunas"
* item[i_AntecedentesReaccionesAlergicasOtrasVacunas].answer.value[x] only Coding
* item[i_AntecedentesReaccionesAlergicasOtrasVacunas].answer.value[x] from respuestaSiNoNosabeVS

* item[i_AntecedentesReaccionesAlergicasMedicamentos].linkId = "i_AntecedentesReaccionesAlergicasMedicamentos"
* item[i_AntecedentesReaccionesAlergicasMedicamentos].text = "Antecedentes Reacciones Alergicas Medicamentos"
* item[i_AntecedentesReaccionesAlergicasMedicamentos].answer.value[x] only Coding
* item[i_AntecedentesReaccionesAlergicasMedicamentos].answer.value[x] from respuestaSiNoNosabeVS

* item[i_AntecedentesReaccionesAlergicasMismaVacuna].linkId = "i_AntecedentesReaccionesAlergicasMismaVacuna"
* item[i_AntecedentesReaccionesAlergicasMismaVacuna].text = "Antecedentes Reacciones Alergicas Misma Vacuna"
* item[i_AntecedentesReaccionesAlergicasMismaVacuna].answer.value[x] only Coding
* item[i_AntecedentesReaccionesAlergicasMismaVacuna].answer.value[x] from respuestaSiNoNosabeVS

* item[i_AntecedentesSARSCov2].linkId = "i_AntecedentesSARSCov2"
* item[i_AntecedentesSARSCov2].text = "Antecedentes SARS COV2"
* item[i_AntecedentesSARSCov2].answer.value[x] only Coding
* item[i_AntecedentesSARSCov2].answer.value[x] from respuestaSiNoNosabeVS

* item[i_Asintomatica].linkId = "i_Asintomatica"
* item[i_Asintomatica].text = "Asintomatica"
* item[i_Asintomatica].answer.value[x] only Coding
* item[i_Asintomatica].answer.value[x] from respuestaSiNoNosabeVS

* item[i_FechaInicioSintomas].linkId = "i_FechaInicioSintomas"
* item[i_FechaInicioSintomas].text = "Fecha Inicio Sintomas"
* item[i_FechaInicioSintomas].answer.value[x] only date

* item[i_ConfirmacionInfeccion].linkId = "i_ConfirmacionInfeccion"	
* item[i_ConfirmacionInfeccion].text = "Confirmacion de Infeccion"
* item[i_ConfirmacionInfeccion].answer.value[x] only string

* item[i_ConfirmacionExplicacion].linkId = "i_ConfirmacionExplicacion"	
* item[i_ConfirmacionExplicacion].text = "Explicacion de Confirmacion de Infeccion"
* item[i_ConfirmacionExplicacion].answer.value[x] only string

* item[i_FechaTomaMuestraConfirmatoria].linkId = "i_FechaTomaMuestraConfirmatoria"
* item[i_FechaTomaMuestraConfirmatoria].text = "Fecha Toma Muestra Confirmatoria"
* item[i_FechaTomaMuestraConfirmatoria].answer.value[x] only date


// Ejemplo de Respuesta a Cuestionario de Antecedentes de Persona Vacunada
Instance: RespuestaAntecedentesEjemplo
InstanceOf: Esavi_response_antecedentes
Title: "Ejemplo de Respuesta a Antecedentes de Persona Vacunada ESAVI"
Description: "Ejemplo de Respuesta a Antecedentes de Persona Vacunada ESAVI"
Usage: #example
* status = #completed
* questionnaire = "http://aefi.paho.org/questionnaire/ESAVI.antecedentes"
* subject = Reference(PersonaAfectadaEjemplo)
* item[+].linkId = "i_AntecedentesMedicos"
* item[=].text = "Antecedentes Médicos"
* item[=].answer.valueString = "Ejemplo de Antecedentes Medicos"
* item[+].linkId = "i_AntecedentesPreviosSimilares"
* item[=].text = "Antecedentes Previos Similares"
* item[=].answer.valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Yes
* item[+].linkId = "i_AntecedentesReaccionesAlergicasOtrasVacunas"
* item[=].text = "Antecedentes Reacciones Alergicas a Otras Vacunas"
* item[=].answer.valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#No
* item[+].linkId = "i_AntecedentesReaccionesAlergicasMedicamentos"
* item[=].text = "Antecedentes Reacciones Alergicas Medicamentos"
* item[=].answer.valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#No
* item[+].linkId = "i_AntecedentesReaccionesAlergicasMismaVacuna"
* item[=].text = "Antecedentes Reacciones Alergicas Misma Vacuna"
* item[=].answer.valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#No
* item[+].linkId = "i_AntecedentesSARSCov2"
* item[=].text = "Antecedentes SARS COV2"
* item[=].answer.valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#No
* item[+].linkId = "i_Asintomatica"
* item[=].text = "Asintomatica"
* item[=].answer.valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#No



