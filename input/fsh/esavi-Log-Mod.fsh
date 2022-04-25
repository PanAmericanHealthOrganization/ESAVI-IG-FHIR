Logical: NotificacionESAVIOPS
Id: NotificacionESAVIOPS
Title: "Modelo Lógico Notificación ESAVI Para OPS"
Description: "Modelo Lógico de Notificaciones de Evento Adverso generado eventualmente por vacuna por Covid-19, para ESAVI-Notificación_ESAVI_OPS"

* datosNotificacionGeneral 1..1 BackboneElement "Datos Administrativos de la Notificación" "Conjunto de datos para motivos administrativos del ESAVI que se esta notificando"
  
  * datosNotificacion 1..1 BackboneElement "Datos de quién y donde se realiza la notificación" "Datos de quien notifica, la organización donde notifica y la dirección"
   
    * nombreOrganizacionNotificadora 1..1 SU string "Nombre del Nivel Geográfico Subnacional de la Ubicación de la Institución que Notifica" "Nombre Organización que Notifica en donde a veces lo podemos caracterizar como string."
    * codigoDireccionOrganizacion 0..1 Coding "Código del Nivel Geográfico Subnacional de la Ubicación de la Institución que Notifica" "Dirección en códifo de Nivel Geográfico Subnacional de Organización que Notifica ESAVI"
    * nombreDireccionOrganizacion 1..1 string  "Nombre del Nivel Geográfico Subnacional de la Ubicación de la Institución que Notifica" "Texto de la descripción del Código asociado con la dirección de la Org que notifica"
    * codigoProfesionNotificador 1..1 SU Coding "Codigo de la profesión del notificador" "Profesión de quien notifica ESAVI."
    
  * fechas 1..1 BackboneElement "Fechas Administrativas (al menos una fecha es necesaria)" "Fechas de de notificacion y almacenamiento de la notificacion en repositorios"
    * fechaConsulta  0..1 SU  date "Fecha de la primera consulta al servicio de salud por causa del ESAVI" "Fecha en la cual el paciente consulto por sitomas ESAVI."
    * fechaNotificacion  0..1 SU  date "Fecha en la que el sistema de vigilancia oficialmente se entera de la ocurrencia del evento." "Fecha de nacimiento"
    * fechaLlenadoFicha  0..1 SU date "Fecha en la que el notificador finaliza el llenado de la ficha de notificación (si la ficha es electrónica, es la misma que fechaNotificacion)" "Fecha en que se llenó este formulario"
    * FechaAlmacenaRepNacacional   0..1 SU date "	Fecha registrada de llegada de la notificación a la base de datos del nivel nacional (si la ficha es electrónica, es la misma que fechaNotificacion)" "Fecha en la que el formulario fue almacenado localmente"

* datosVacunadoCaso 1..1 BackboneElement "Datos Demográficos de Vacunado que ha generado ESAVI" "Datos Generales del Vacunado que reporta un evento adverso"
  * datosPaciente 1..1 BackboneElement "Datos Vacunado" "Datos generales del o la Vacunado/a"
    
    * numeroCaso 1..1 string "UUID que identifica el caso o notificación. Una persona puede tener más de una notificación." "Identificación para el caso"
    * paisOrigen-Reg 1..1 code "País en donde se originó el Registro" "País en donde se originó el Registro."
    * idPaciente 1..1 string "UUID de identificación." "Por motivos de privacidad del vacunado se usa un identificador en base a un UUID."
    * codigoResidenciaHabitual 0..1 code "Codigo Nivel Geográfico Subnacional de la Residencia Habitual de la Persona afectada por el ESAVI" "Codigo Nivel Geográfico Subnacional de la Residencia Habitual de la Persona afectada por el ESAVI."
    * nombreResidenciaHabitual 0..1 string "Nombre Nivel Geográfico Subnacional de la Residencia Habitual de la Persona afectada por el ESAVI." "Texto descriptivo asociado al código"
    * sexoPaciente 1..1 code "Sexo del vacunado" "Sexo según código"
    * fechaNacimiento 1..1 date "Fecha de nacimiento del vacunado" "Fecha de nacimiento del vacunado."
    * etnia 0..1 string "Nombre de la etnia con la que se identifica el vacunado" "Descripción de la Etnia en texto libre"


* antecedentesMedicos 0..1 BackboneElement "Antecedentes médicos identificados por el paciente" "Set de antecedentes que pueden ser de interés para ESAVI"
  * antecedentesEnfermedadesPrevias   0..* BackboneElement "Antecedentes médicos reportados" "Antecedentes médicos que se han reportado en el vacunado con anterioridad."

    * descripcionEnfPrevia 1..1 string "Descripción de los problemas de salud previos en la persona afectada por el ESAVI con énfasis en comorbilidades o enfermedades concomitantes al evento adverso, eventos previos similares y eventos médicos relevantes para el evento de salud actual (si la enfermedad está codificada, es la descripción correspondiente al código)." "Descripción de la enfermedad previa en texto libre."
    * codigoMedDRAEnfPrevia 0..1 code "Código MedDRA del antecedente médico" "Enfermedad en código asociado a MedDRA"
    * otrosCodigosEnfPrevia 0..1 code "Código CIE-10/CIE-11/Snomed del antecedente médico." "Código CIE-10/CIE-11/Snomed del antecedente médico."

  * antecedentesEventosAdversos 0..1 BackboneElement "Declaración de existencia de eventos adversos previos" "Declaración de existencia de eventos adversos previos."
  
    * antecedentesAdvSimilar 0..1 code "Antecedente de eventos adversos similares al actual" "Indicación si existen Antecedentes de Eventos Adversos similares"
    * alergiaMedicamentos 0..1 code	"Antecedente de reacciones alérgicas a medicamentos" "Indicación si el vacunado a sufrido alergias por medicamentos"
    * alergiaVacunas	0..1 code "Antecedente de reacciones alérgicas a otras vacunas"	"Indicación si el vacunado a sufrido alergias por vacunas"
    
  * antecedentesSarsCov2	0..*	BackboneElement "Antecedente de diagnóstico de infección por SARS-CoV-2" "Antecedente de diagnóstico de infección por SARS-CoV-2"		

    * diagnosticoprevioSarsCov2 	1..1	code "Antecedente de diagnóstico de infección por SARS-CoV-2 (Si/No/No Sabe)" "Definición de si existe dagnóstico por SARS-COV2"		
    * asintomaticoSars 0..1	code "Diagnóstico de Covid-19 sin síntomas (Si/No/No Sabe)" "Definición en respuesta simple"	
    * fechaSintomasCovid19 0..1 dateTime	"Fecha en que comenzó el primer signo y/o síntoma de COVID-19."	"Definición en formato respuesta simple"
    * tipoConfirmacionCovid19	0..1	code "Tipo de confirmación de diagnóstico COVID-19"	"Definición en formato respuesta simple"
    * fechaTomaMuestraCovid19 0..1 date "Fecha en la cual se tomó la muestra para examen de COVID-19"	"Fecha en la cual se tomó la muestra para examen de COVID-19"
    * ensayoClinicoCovid19	0..1 boolean "Consulta si participó en algún ensayo clínico para COVID-19" "Respuesta Si/No"

  * pacienteEmbarazada 0..1 BackboneElement	"Estado de embarazo"	"Definición respecto a pacintes embarazadas"	

    * embarazadaMomentoVacuna 0..1 boolean	"Estaba embarazada al momento de la vacuna?" "Respuesta simple Si/No"		
    * embarazadaMomentoESAVI	0..1 boolean "Estaba embarazada al momento del ESAVI?"	"Respuesta simple Si/No"

  * antecedentesEmbarazo 0..* BackboneElement	"Datos relacionados con el estado de embarazo" "Condición del embarazo de vacunada."
    * complicacionesEmbarazo 0..1 BackboneElement "Tipo de complicación del embarazo" "Descripción de los tipos de complicaciones en embarazo"	

      * codigoTipoComplicacion 1..1 code	"Código tipo complicacion del embarazo" "Definició en código."
      * descripcionComplicacionEmbarazo	1..1 string "Descripción de la Complicación" "Definición en Texto Libre"
      * complicacionEmbarazoMedDRA 0..1 code	"Código MedDRA de la complicación del embarazo" "Complicación segón MedDRA"
      * complicacionEmbarazoOtro	0..1 code "Código No MedDRA de la complicación del embarazo . Esto será discutido con equipo terminológico" "Definición de código según subSet que contiene códigos de CIE-10, SNOMED-CT y ATC"
      * fechaParto	0..1 date "Fecha del parto, o fecha probable del parto (calculada)" "Fecha prevista para el parto"
    
  * antecedentesFarmacosVacunas 1..1 BackboneElement	"Antecedentes Farmacológicos" "Antecedentes de Fármacos y Vacunas"
    * medicamento	0..* BackboneElement "Antecedentes de medicamentos que el paciente consume al momento de generar ESAVI" "Antecedentes de medicamentos que el paciente consume al momento de generar ESAVI"
    
      * nombreMedicamento	1..1 string "Nombre del medicamento consumido de manera concomitante con la vacuna o relevante para el ESAVI, en texto libre (si está codificado, es la descripción del código)" "Dato en Texto libre"
      * sistemaDeCodificacionParaNombreNormalizadoMedicamento 0..1 code	"Sistema de codificacion" "Selección del sistema de codificación en el cual se define el nombre normalizado"
      * nombreNormalizadoMedicamento	0..1 string "Nombre normalizado del medicamento" "Nombre normalizado según el sistema de codificación seleccionado"
      * codigoMedicamento	0..1 code "Código WHODrug/SCT/CIE-11/ATC del medicamento consumido por el paciente" "Código WHODrug/SCT/CIE-11/ATC del medicamento consumido por el paciente"
      * nombreFormaFarmaceutica 0..1 string	"Nombre de la forma farmaceutica del medicamento" "Fórmula farmacéutica en texto libre"	
      * codigoFormaFarmaceutica 0..1 code	"Código de la forma farmaceutica del medicamento" "Código de la forma farmaceutica del medicamento"
      * nombreViaAdministracion	0..1 code "Nombre via de administración del medicamento" "Vía de Administración en Texto Libre"
      * codigoViaAdministracion 0..1 code	"Código Via administración del medicamento" "Se selecciona código"
      
    * datosVacunas 1..* BackboneElement	"Datos de las vacunas administradas" "Datos de las vacunas administradas que pueden ser importantes para determinar origen de ESAVI"
    
      * nombreVacuna	1..1 string "Nombre de la vacuna administrada" "Texto Libre del nombre de la vacuna"	
      * sistemaDeCodificacionParaNombreNormalizadoVacuna	0..1 code "Sistema de codificacion" "Selección del sistema de codificación para el nombre normalizado de la vacuna"
      * nombreNormalizadoVacuna 0..1 string 	"Nombre normalizado de la vacuna" "Nombre normalizado de la vacuna según el sistema de codificación seleccionado"
      * identificadorVacuna	1..1 integer "Identificador correlativo de la vacuna" "Indentificador correlativo de uso interno para poder identificar la vacuna sobre la cual se observan las causalidades"
      * codigoVacunaWHODrug 0..1 code	"Código WHODrug de la vacuna" "Código en WHODrug"
      * codigoVacunaOtro 0..1 code "Código no WHODrug de la Vacuna" "Código de la vacuna en caso que se use otro sistema que no sea WHODrug"
      * nombreFabricante 0..1 string	"Nombre del fabricante o titular del registro sanitario" "Nombre en Texto Libre"
      * codigoFabricanteWHODrug	0..1 code "Código del fabricante o titular del registro sanitario" "Código de ValueSet definido"
      * numeroDosisVacuna 1..1 integer	"Numero de la dosis" "Se define el numero de la ocación en la cual ha sido vacunado con el mismo tipo de vacuna"
      * numeroLote	0..1 string "Número del Lote de la Vacuna administrada"	"Número del Lote de la Vacuna administrada"
      * fechaVencimientoVacuna	0..1 date "Fecha de Vencimiento de vacuna" "Fecha de Vencimiento de vacuna"
      * nombreDiluyenteVacuna 0..1 string "Nombre del Diluyente de la Vacuna" "Nombre del Diluyente de la Vacuna"
      * numeroLoteDiluyente 0..1 string	"Numero del lote del diluyente de la vacuna" "Numero del lote del diluyente de la vacuna"
      * fechaVencimientoDiluyente 0..1 date	"Fecha de vencimiento del diluyente de la vacuna" "Fecha de vencimiento del diluyente de la vacuna"
      
    * datosVacunacion 0..1 BackboneElement	"Datos relacionados con el proceso de vacunación" "Datos Generales del proceso de vacunación del vacunado"
      * nombreVacunatorio	0..1 string "Nombre del vacunatorio" "Nombre del vacunatorio"	
      * fechaVacunacion 0..1 date	"Fecha de vacunación" "Fecha de Vacunación"
      * horaVacunacion 0..1 time "Hora de vacunación" "Hora aproximada en la cual se realizó la vacunación"
      * codigoDireccionVacunatorio	0..1 code "Código del nivel geográfico subnacional de la ubicación de la institución de salud en la que se administró la vacuna" "Código definido para la localización"
      * nombreDireccionVacunatorio	1..1 string "Dirección completa de la institución en la que se administró la vacuna" "Texto Libre de la dirección asociada al código seleccionado"
      * codigoMecanismoVerificacion 0..1 code	"Código del mecanismo de verificación de vacuna colocada" "Código del mecanismo de verificación de vacuna colocada"
      * nombreOtroMecanismoVerificacion 0..1 string	"Descripción de otro mecanismo no considerado en los códigos" "Texto Libre asociado al código seleccionado"
      * fechaReconstitucionVacuna 0..1 date	"Fecha en la cual se reconstituyó la vacuna registrada" "Fecha en la cual se reconstituyó la vacuna registrada"
      * horaReconstitucionVacuna 0..1 time	"Hora en la cual se reconstituyó la vacuna registrada" "Hora en la cual se reconstituyó la vacuna registrada"
      
  * registroESAVI 1..* BackboneElement	"Registro de ESAVI desarrollado por el vacunado" "Detalle del o los registros de ESAVI notificados"
    * datosESAVI 1..1 BackboneElement	"Información del ESAVI y de su clasificación según gravedad" "Detalles de la gravedad del ESAVI"
    
      * nombreESAVI 0..1 string	"Nombre del ESAVI" "Nombre del ESAVI reportado por paciente"	
      * codigoESAVIMedDRA	1..1 code "Código MedDRA del Evento Adverso notificado" "Respuesta en MedDRA"
      * codigoESAVIOtro 0..1 code "Código no MedDRA de la reacción adversa generada por la vacuna" "Código de la reacción Adversa en SNOMED, CIE-10 o ATC"
      * fechaESAVI 1..1 date	"Fecha de inicio del ESAVI referido por el paciente o identificado por el médico" "Fecha de inicio del ESAVI referido por el paciente o identificado por el médico"
      * horaESAVI	0..1 time "Hora de inicio del ESAVI referido por el paciente o identificado por el médico" "Hora de inicio del ESAVI referido por el paciente o identificado por el médico"
      * descripcionESAVI	0..1 string "Descripción narrativa del ESAVI" "Descripción en Texto Libre del ESAVI reportado"
    
    * antecedentesEmbarazoESAVI 0..* BackboneElement	"Datos relacionados con el estado de embarazo" "Datos Generales del embarazo de paciente"
      
      * codigoEmbarazoDuranteESAVI 1..1 code	"Código consulta sobre la condición de embarazo al momento del ESAVI" "Condición de embarzo en código"
      * fechaUltimaMenstruacionESAVI 1..1 date	"Fecha de la última menstruación de la Paciente" "Fecha de la última menstruación de la Paciente"
      * fechaPartoESAVI	0..1 date "Fecha del parto, o fecha probable del parto (calculada)" "Fecha del parto, o fecha probable del parto (calculada)"
      * codigoMonitoreoPosteriorVacunaESAVI	1..1 code "Código consulta sobre si se monitoreó paciente una vez vacunado" "Respuesta simple en código Si/no/No sabe"
      
    * complicacionesEmbarazoESAVI	0..1 BackboneElement "Complicación del embarazo que se sospecha estuvo relacionada con la administración de la vacuna" "Complicación del embarazo que se sospecha estuvo relacionada con la administración de la vacuna"
      
      * codigoTipoComplicacionESAVI 1..1 code	"Código tipo complicacion del embarazo durante el ESAVI" "Código tipo complicacion del embarazo durante el ESAVI"
      * descripcionComplicacionEmbarazoESAVI 1..1 string	"Descripción de la Complicación durante el ESAVI" "Descripción en Texto Libre de la complicación al embarazo sufrda durante el ESAVI"
      * complicacionEmbarazoMedDRAESAVI 0..1 code	"Código MedDRA de la complicación del embarazo durante el ESAVI" "Se usará código MedDRA"
      * complicacionEmbarazoOtroESAVI	0..1 code "Código No MedDRA de la complicación del embarazo durante el ESAVI" "Complicación al Embarazo en SNOMED-CT, CIE-10 o CIE-11"
      
    * gravedadESAVI	1..1 BackboneElement  "Determinación del estado de gravedad del ESAVI" "Definición de varios aspectos para determinar la gravedad del ESAVI"	
    
      * tipoGravedad 1..1	boolean	"¿ESAVI Grave?"
      * gravMuerte	0..1 boolean "Muerte"
      * gravRiesgoVida 0..1 boolean	"Amenaza la vida al momento de la detección del ESAVI"
      * gravDiscapacidad 0..1 boolean	"Genera discapacidad severa o permanente al momento de la detección"
      * gravHospitalizacion 0..1 boolean	"Hospitalización o prolongación de la misma"
      * gravAnomaliaCongenita	0..1 boolean "Anomalía congénita"
      * gravAborto 0..1 boolean	"Aborto"
      * gravMuerteFetal 0..1 boolean	"Muerte fetal"
      * otrosEventosImportantes 0..1 boolean "Otros Eventos considerados Médicamente Importantes"
      * otrosEventosImportantesTx 0..* string	"Descripción de Otros Eventos medicamente importantes"
      
    * desenlaceESAVI 1..1 BackboneElement	"Desenlace ESAVI" "Detalles del desenlace que tuvo el ESAVI en el paciente"
      
      * codDesenlaceESAVI	1..1 code "Código Desenlace ESAVI" "Código en ValueSet generado"
      * fechaMuerte	 1..1 date "Fecha de muerte producida por posible ESAVI" "Fecha de muerte producida por posible ESAVI"
      * autopsia	1..1 boolean "Determinación si hubo o no Autopsia" "Determinación si hubo o no Autopsia"
      * fechaNotificaMuerte	0..1 date "Fecha en la cual se notifico la muerte del paciente al registro nacional" "Fecha notificación muerte"
      * fechaNotificaMuerteFetal 0..1 date	"Fecha en la cual se notifico la muerte del feto de paciente al registro nacional" "Fecha de notificación de la muerte"
      * autopsiaFetal	0..1 boolean "Determinación si hubo o no Autopsia Fetal" "Determinación si hubo o no Autopsia Fetal"
      * comentarios	0..1 string "Comentarios adicionales en cuanto al cuadro ESAVI" "Comentarios en Texto Libre"
      * fechaInicioInvestigacion 0..1 date	"Fecha en la cual se inicia investigación" "Fecha en la cual se inicia investigación una vez definida para el ESAVI en cuestión"
      
    * causalidadESAVI 0..* BackboneElement	"Información sobre la clasificación de causalidad"	
    
      * fechaCausalidadESAVI 0..1 date	"Fecha de clasificación final del caso"	"Fecha de clasificación final del caso"
      * sistemaClasfcausalidad 1..1 code	"Método de clasificación de causalidad" "Método descrito en VS"
      * otroSistemaclasfcausalidad	1..1 string "Otro sistema de clasificación de causalidad" "Texto Libre de otro sistema considrado"
      * clasificacioncausaESAVI 0..1 string 	"Descripción de la clasificación de causalidad del ESAVI" "Texto libre que describe la clasificación según código seleccionado"
      * clasificacionDeCausalidadWHOAEFI 1..1 code	"Clasificación de causalidad según la metodología WHO AEFI" "Códigos según WHO AEFI"
      * clasificacionDeCausalidadWHOUMC	1..1 code "Clasificación de causalidad según la metodología WHO UMC" "Códigos según WHO UMC"
      * clasificacionDeCausalidadNaranjo 1..1 code	"Clasificación de causalidad según la metodología WHO Naranjo" "Códigos según WHO Naranjo"
      * referenciaIdentificadorVacuna	1..1 integer "Identificador correlativo de la vacuna" "Referencia al valor del identificador interno de la vacuna"
      
