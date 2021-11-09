Logical:    NotificacionESAVI
Title:     "Notificación ESAVI"
Description:    "Modelo Lógico de Notificación"
* s_IdentificacionPersonaAfectada 1..1 SU BackboneElement "Datos de identificación de la persona vacunada o afectada"
  * NumeroIdentificacionCaso 1..1 SU Identifier "Número de identificación del caso"
  * NombresApellidos 1..1 SU HumanName "Nombres y Apellidos"
  * NumeroIdentificacionNacional 1..1 SU Identifier "Número de identificación nacional"
  * DireccionCompleta 1..1 Address "Dirección completa"
  * NivelGeograficoSubnacional 1..1 Identifier "Nivel Geográfico Subnacional"
  * TelefonoCorreoElectronico 0..2 SU ContactPoint "Teléfono y correo electrónico"
  * Sexo 1..1 SU code "Genero"
  * Sexo from http://hl7.org/fhir/ValueSet/administrative-gender (required)
  * FechaNacimiento 1..1 SU dateTime "Fecha de Nacimiento"
  * EdadInicioEvento 1..1 SU Age "Edad al Inicio del Evento"
  * GrupoEtnico 1..1 SU Coding "Grupo Etnico" 
  * GrupoEtnico from GrupoEtnicoVS	(preferred)
* s_PersonaNotificadora 1..1 SU BackboneElement "Datos de la Persona Notificadora"
  * NombresApellidosNotificador 1..1 SU HumanName "Nombre y Apellidos Notificador"
  * ProfesionNotificador 1..1 SU string "Profesion del Notificador"
  * InstitucionCargo 1..1 SU string "Institucion y Cargo"
  * DireccionCompletaNotificador 1..1 SU string "Direccion Completa del Notificador"
  * NivelGeograficoSubnacionalNotificador 1..1 SU string "Nivel Geografico Nacional Notificador"
  * TelefonoCorreoElectronicoNotificador 1..2 SU string "Telefono y Correo Electronico Notificador"
  * FechaConsulta 1..1 SU dateTime "Fecha de Consulta"
  * FechaLlenadoFicha 1..1 SU dateTime "Fecha de Llenado de la Ficha"
* s_AntecedentesPersonaVacunada  1..1 SU BackboneElement "Antecedentes de la Persona Vacunada"
  * AntecedentesMedicos 1..1 SU string "Antecedentes Médicos"
  * AntecedentesPreviosSimilares 1..1 SU Coding "Antecedentes Previos Similares"
  * AntecedentesPreviosSimilares from RespuestaSiNoNosabeVS  (required)
  * AntecedentesReaccionesAlergicasOtrasVacunas 1..1 SU Coding "Reacciones Alergicas a Otras Vacunas" 
  * AntecedentesReaccionesAlergicasOtrasVacunas from RespuestaSiNoNosabeVS  (required)
  * AntecedentesReaccionesAlergicasMedicamentos 1..1 SU Coding "¿Tiene antecedentes de reacciones alérgicas a medicamentos?"
  * AntecedentesReaccionesAlergicasMedicamentos from RespuestaSiNoNosabeVS  (required)
  * AntecedentesReaccionesAlergicasMismaVacuna  1..1 SU Coding "¿Tiene antecedentes de reacciones alérgicas a dosis previas de la misma vacuna?"
  * AntecedentesReaccionesAlergicasMismaVacuna  from RespuestaSiNoNosabeVS  (required)
  * AntecedenteSARSCov2 1..1 SU Coding "¿Tiene antecedente de diagnóstico de infección por SARS-CoV-2 antes de la vacunación?"
  * AntecedenteSARSCov2  from RespuestaSiNoNosabeVS  (required)
  * Asintomatica 1..1 SU Coding "Asintomática"
  * Asintomatica  from RespuestaSiNoNosabeVS  (required)
  * FechaInicioSintomas 1..1 SU dateTime "Fecha de Inicio de los Sintomas"
  * ConfirmacionInfeccion 1..1 SU Coding "¿Cómo se confirmó el diagnóstico de la infección?"  
  * ConfirmacionInfeccion from ModoConfirmacionInfeccionVS (required)
  * ExplicacionConfirmacion 0..1 SU string "Explique la confirmación del diagnóstico"
  * FechaTomaMuestraConfirmatoria 1..1 SU dateTime "Fecha de toma de la muestra para la prueba confirmatoria"
* s_ParticipacionEnsayoClinico  1..1 SU BackboneElement "Datos de Ensayo Clinico"
  * ParticipacionEnsayoClinicoSARS 1..1 SU Coding "Participación en un ensayo clínico de vacunas contra SARS-CoV-2"
  * ParticipacionEnsayoClinicoSARS from RespuestaSiNoNosabeVS  (required)
  * MedicamentoEnsayo 0..1 SU BackboneElement "Medicamento"
    * MedicamentoEnsayoNombre 0..1 SU string "Nombre del Medicamento"
    * MedicamentoEnsayoPresentacion 0..1 SU string "Presentacion del Medicamento"
    * MedicamentoEnsayoDosis 0..1 SU string "Dosis del Medicamento"
    * MedicamentoEnsayoViaAdministracion 0..1 SU string "Via de Administracion del Medicamento"
    * MedicamentoEnsayoFechaInicio 0..1 SU dateTime "Fecha de Inicio del Medicamento"
* s_DetallesEmbarazo  1..1 SU BackboneElement "Datos Relevantes a Embarazo"
  * EmbarazoEstado 1..1 SU Coding "Estado de Embarazo"
  * EmbarazoEstado from RespuestaSiNoNosabeVS  (required)
  * EmbarazoEdadGestacional 0..1 SU integer "Edad gestacional (semanas)"
  * EmbarazoFechaProbableParto 0..1 SU string "Fecha probable de parto"
  * EmbarazoComplicaciones 0..1 SU Coding "Complicaciones del embarazo"
  * EmbarazoComplicaciones from RespuestaSiNoNosabeVS (required)
  * EmbarazoComplicacionesDiagnostico 0..1 SU string "Diagnóstico de Complicaciones del embarazo"
  * EmbarazoComplicacionesDescripcion 0..1 SU string "Descripción de Complicaciones del embarazo"
  * EmbarazoMonitoreo 0..1 SU Coding "Inicio de monitoreo de la vacunación durante el embarazo por una entidad de salud"
  * EmbarazoMonitoreo from RespuestaSiNoNosabeVS  (required)
* s_AdministracionVacuna  1..1 SU BackboneElement "Datos Administración de Vacuna"
  * VacunacionInstitucionSalud 1..1 SU string "Institución de salud en donde se vacunó"
  * VacunacionInstitucionDireccion 1..1 SU string "Dirección del lugar de vacunación"
  * VacunacionNombreGenericoVacuna 1..1 SU string "Nombre genérico de la vacuna"
  * VacunacionNombreComercialVacuna 1..1 SU string "Nombre comercial / Fabricante de la vacuna"
  * VacunacionFechaHora 1..1 SU dateTime "Fecha y Hora de vacunación"
  * VacunacionDosis 1..1 SU string "Dosis"
  * VacunacionNumeroLote 1..1 SU string "Número de lote"
  * VacunacionFechaVencimientoLote 1..1 SU dateTime "Fecha de vencimiento del Lote"
  * VacunacionNombreDiluyente 0..1 SU string "Nombre del diluyente"
  * VacunacionNumeroLoteDiluyente 0..1 SU string "Número de lote del diluyente"
  * VacunacionFechaVencimientoDiluyente 0..1 SU dateTime "Fecha de vencimiento del diluyente"
  * VacunacionFechaHoraReconstitucion 1..1 SU dateTime "Fecha y Hora de reconstitución"
* s_VacunacionPrevia  1..1 SU BackboneElement "Datos Administración de Vacuna"
  * VacunacionPrevia 1..1 SU Coding "Otra vacuna administrada en los 30 días anteriores al inicio del ESAVI"
  * VacunacionPrevia from RespuestaSiNoNosabeVS  (required)
  * VacunacionPreviaVacuna 0..1 SU string "¿Cuál vacuna se administró previamente?"
  * VacunacionPreviaVerificacion 0..1 SU Coding "Verificación de la vacunación"
  * VacunacionPreviaVerificacion from ModoVerificacionVacunaVS (required)
  * VacunacionPreviaVerificacionExplicacion 0..1 SU string "Explicación de método de verificación de la vacunación"
* s_EventoAdverso 1..1 SU BackboneElement "Datos del Evento Adverso"
  * EsaviTipo 1..1 SU Coding "Tipo del Evento Adverso"
  * EsaviTipo from EventoAdversoVacunaVS	 (required)
  * EsaviFechaHora 1..1 SU dateTime "Fecha/hora de inicio del ESAVI"
  * EsaviCodificacion 1..1 SU Coding "Código MedDRA/CIE del ESAVI"
  * EsaviCodificacion from EventoAdversoCodificacionVS (required)
  * EsaviDescripcion 1..1 SU string "Descripción del ESAVI"
* s_GravedadEventoAdverso 1..1 SU BackboneElement "Gravedad del Evento Adverso"
  * GravedadIndicador 1..1 SU Coding "¿Fue un evento adverso grave?"
  * GravedadIndicador from RespuestaVerdaderoFalsoVS (required)
  * GravedadMuerte 1..1 SU Coding "Gravedad del ESAVI - Muerte"
  * GravedadMuerte from RespuestaVerdaderoFalsoVS (required)
  * GravedadAmenazaVida 1..1 SU Coding "Gravedad del ESAVI - Amenaza a la Vida"
  * GravedadAmenazaVida from RespuestaVerdaderoFalsoVS (required)
  * GravedadDiscapacidad 1..1  SU Coding "Gravedad del ESAVI - Discapacidad Significativa o Persistente"
  * GravedadDiscapacidad from RespuestaVerdaderoFalsoVS (required)
  * GravedadHospitalizacion 1..1 SU Coding "Gravedad del ESAVI - Hospitalización" 
  * GravedadHospitalizacion from RespuestaVerdaderoFalsoVS (required)
  * GravedadAnomaliaCongenita 1..1  SU Coding "Gravedad del ESAVI - Anomalía Congenita"
  * GravedadAnomaliaCongenita from RespuestaVerdaderoFalsoVS (required)
  * GravedadAborto 1..1   SU Coding "Gravedad del ESAVI - Aborto" 
  * GravedadAborto from RespuestaVerdaderoFalsoVS (required)
  * GravedadMuerteFetal 1..1 SU Coding "Gravedad del ESAVI - Muerte Fetal"
  * GravedadMuerteFetal from RespuestaVerdaderoFalsoVS (required)
  * GravedadOtro 1..1 SU Coding "Gravedad del ESAVI - Otro"
  * GravedadOtro from RespuestaVerdaderoFalsoVS (required)
* s_Desenlace  1..1 SU BackboneElement "Desenlace del Evento Adverso"
  * ClasificacionDesenlace 1..1 SU Coding "Clasificacion del Desenlace"
  * ClasificacionDesenlace from  ClasificacionDesenlaceVS (required)
  * FechaMuerte 1..1 SU dateTime "Fecha de la Muerte"
  * RealizacionAutopsia 1..1 SU Coding "Se realizó Autopsia"
  * RealizacionAutopsia from RespuestaSiNoNosabeVS (required)
* s_Conclusiones  1..1 SU BackboneElement "Investigación / Conclusiones"
  * InvestigacionRequerida 1..1 SU boolean "Se requiere investigación"
  * InvestigacionTipo 0..1 SU Coding  "Tipo de Investigacion Requerida"
  * InvestigacionTipo from InvestigacionTipoVS (required)
  * InvestigacionFechaPlaneada 0..1 SU dateTime "Fecha de Investigación Planeada"
  * ComentariosFinales 0..1 SU string "Comentarios Finales"
  * FechaRecepcionNivelNacional 1..1 dateTime "Fecha de Recepcion A Nivel Nacional"
