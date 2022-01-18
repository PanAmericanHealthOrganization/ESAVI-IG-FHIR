Logical: NotificacionESAVIOPS
Title: "Modelo Lógico Notificación ESAVI Para OPS"
Description: "Modelo Lógico de Notificaciones de Evento Adverso generado eventualmente por vacuna por Covid-19, para ESAVI-Notificación_ESAVI_OPS"

* datosNotificacionGeneral 1..1 BackboneElement "Datos Administrativos de la Notificación" "Conjunto de datos para motivos administrativos del ESAVI que se esta notificando"
  
  * datosNotificacion 1..1 BackboneElement "Datos de quién y donde se realiza la notificación" "Datos de quien notifica, la organización donde notifica y la dirección"
   
    * organizacionNotificadora 1..1 SU string "Nombre Organización que Notifica" """
      Nombre Organización que Notifica en donde a veces lo podemos caracterizar como string 
    """
    * direccionOrganizacion 1..1 Coding "Dirección en formato de OPS de Organización que Notifica ESAVI" "Dirección en formato de OPS de Organización que Notifica ESAVI"
    * direccionOrganizacion from DirOrgNotiVS (required)
    * profesionalNotificador 1..1 SU Coding "Profesión de quien notifica ESAVI" "Profesión de quien notifica ESAVI."
    * profesionalNotificador from ProfesionalNotificadorVS (required)

  * fechas 1..1 BackboneElement "Fechas Administrativas" "Fechas de de notificacion y almacenamiento de la notificacion en repositorios"
    * fechaConsulta  1..1 SU  date "Fecha de consulta por sintómas" "Fecha en la cual el paciente consulto por sitomas ESAVI."
    * fechaNotificacion  1..1 SU  date "Fecha de nacimiento" "Fecha de nacimiento"
    * fechaLlenadoFicha  1..1 SU date "Fecha que se llenó este formulario" "Fecha en que se llenó este formulario"
    * FechaAlmacenaRepNacacional   0..1 SU date "Fecha en la que el formulario fue almacenado localmente" "Fecha en la que el formulario fue almacenado localmente"
    * FechaAlmacenaRepOPS  1..1 SU date "Fecha en la que el formulario fue almacenado en OPS" "Fecha en la que el formulario fue almacenado en OPS"

* datosPacienteCaso  1..1  BackboneElement "Datos Demográficos de Paciente ESAVI" "Datos mínimos de paciente que manifiesta síntomas de ESAVI"  
  * datosPaciente   1..1 BackboneElement "Datos del Paciente ESAVI" "Estos Datos pueden ser actualizados ante nuevo versionado de informe"
    * numeroCaso 1..1 SU string "UUID que identifica el caso" "UUID para garantizar la irepetitibilidad del registro"
    * paisOrigen-Reg 1..1 SU Coding "País en donde se originó el Registro" "País en código ISO 3166-1 (Dos Letras)"
    * paisOrigen-Reg from http://hl7.org/fhir/ValueSet/iso3166-1-N (required)
  
    * idPaciente 1..1  identifier "Número Identificación de Paciente, en UUID" "Número Unico basado en UUID"
      * value 1..1 SU string "UUID de identificación" "UUID de identificación"
  
    * residenciaHabitual 1..1 SU Coding "Residencia habitual del Paciente" "Residencia en Código en donde habitualmente reside el paciente"  
    * residenciaHabitual from DirOrgNotiVS (required)

    * sexoPaciente 1..1 SU Coding "Sexo del paciente" "Sexo del Paciente en código FHIR" 
    * sexoPaciente from 	http://hl7.org/fhir/ValueSet/administrative-gender (required) 

    * fechaNacimiento 1..1 SU date "Fecha de nacimiento del Paciente" "Fecha de nacimiento del Paciente"
    * etnia 0..1 SU string "Etnia reconcida por el paciente" "Etnia reconocida por el paciente"

* antecedentesMedicos 1..1 BackboneElement "Antecedentes médicos previos identificados por el paciente" "Aquellos antecedentes médicos que el paciente declara como relevantes al momento de declarar ESAVI"
  * antecedentesEnfermedadesPrevias 1..* BackboneElement "Antedecentes de enfermedades previas o SARS-Cov2"  "Antedecentes de enfermedades previas o SARS-Cov2"
    * descripcionEnfPrevia 1..1 SU string "Descripción de la enfermedad notificada" "Definición en texto de la enfermedad notificada"
    * codigoMedraEnfPrevia 0..1 SU Coding "Código del Antedente de la enfermedad notificada" "Enfermedad notificada en MEDRA"
    * codigoMedraEnfPrevia from http://terminology.hl7.org/CodeSystem/mdr (required)
    * otrosCodigosEnfPrevia 0..1 SU Coding "Otro Código de los antecedentes de enfermedad notificada" "Código SCT, CIE-X de la enfermedad notificada" 
    * otrosCodigosEnfPrevia from EnfermedadesPreviasCodificacionVS (required)

  * antecedentesEventosAdversos 0..1 BackboneElement "Declaración de existencia de eventos adversos previos"  "Declaración de existencia de eventos adversos previos" 
    * antecedentesAdvVacunas 1..1 SU Coding "Declaración de antecedentes de Eventos Adversos con vacunas si|no|desconoce" "Declaración de antecedentes de Eventos Adversos con vacunas si|no|desconoce" 
    * antecedentesAdvVacunas from RespuestaSiNoNosabeVS (required)
   
    * antecedentesAdvMedicamentos 1..1 SU Coding "Declaración de antecedentes de Eventos Adversos con medicamentos si|no|desconoce" "Declaración de antecedentes de Eventos Adversos con medicamentos" 
    * antecedentesAdvMedicamentos from RespuestaSiNoNosabeVS (required)
    
    * antecedentesAdvMismaVacuna 1..1 SU Coding "Declaración de antecedentes de Eventos Adversos con misma vacuna si|no|desconoce" "Declaración de antecedentes de Eventos Adversos con misma vacuna si|no|desconoce" 
    * antecedentesAdvMismaVacuna from RespuestaSiNoNosabeVS (required)

  * antecedentesSarsCov2 0..* BackboneElement "Antecedentes que Paciente ha padecido COVID-19" "Antecedentes relacionados con COVID-19 del paciente y datos relacionados"
    * asintomaticoSars 0..1 SU code "Covid-19 asintomatico?" "Covid-19 asintomatico?"
    * asintomaticoSars from RespuestaSiNoNosabeVS (required)
    * fechaSintomasCovid19 0..1 SU date "Fecha en la cual el paciente reconoce haber tenido sintomas" "Fecha en la cual el paciente reconoce haber tenido sintomas"
    * confirmacionDiagnosticoCovid19 0..1 SU boolean "¿Diagnóstico de COVID19 confirmado?" "¿Diagnóstico de COVID19 confirmado?"
    * tipoConfirmacionCovid19 0..1 SU Coding "Tipo de confirmación de diagnóstico COVID.19" "Tipo de confirmación según código local"
    * tipoConfirmacionCovid19 from ModoConfirmacionInfeccionVS (required)
    * fechaTomaMuestraCovid19 0..1 SU date "Fecha en la cual se tomó la muestra para examen de COVID-19" "Fecha en la cual se tomó la muestra para examen de COVID-19"
    * ensayoClinicoCovid19 0..1 SU boolean "Consulta si particpó en algún ensayo clínico para COVID-19" "Consulta si particpó en algún ensayo clínico para COVID-19"

* antecedentesFarmacosVacunas 0..* BackboneElement "Antecedentes si el paciente consume fármcos durante ESAVI o ha recibido otra vacunas en los ultimos 30 días previos a la vacuna con sospecha de generar ESAVI" "Antecedentes si el paciente consume fármcos durante ESAVI o ha recibido otra vacunas en los ultimos 30 días previos a la vacuna con sospecha de generar ESAVI"
  * medicamento 0..* BackboneElement "Antecedentes de medicamentos que el paciente consume al momento de generar ESAVI" "Listado de medicamentos consumidos al generar ESAVI"
    * descripcionMedicamento 1..1 SU string "Descripción del medicamento consumido" "Decripción en Texto Libre"
    * codigoMedicamento 0..1 SU Coding "Código WHO del medicamento consumido por el paciente" "Código en WhoDrug"
    * codigoMedicamento from MedicamentoGenericoVS
    * otroCodigoMedicamento 0..1 Coding "Otro código de sistema distinto a WhoDrug" "Código de otro sistema para notificar medicamentos"
    * otroCodigoMedicamento from MedicamentoOtroVS
    
    * sustanciaActiva 0..* SU Coding "Descripción de la o las susbstancias activas del medicamento consumido" "Clasificación en terminología de cada sustancia activa del medicamento"
    * sustanciaActiva from   SustanciaActivaVS (example)     
       
    * nombreGenerico 0..1 SU Coding "Nombre Genérico del Medicamento SNOMED-CT|WHODrug" "Nombre Genérico del medicamento en codificación"
    * nombreGenerico ^comment = "Debe estar este dato o el Nombre Genérico o el Nombre Comercial"
    * nombreGenerico from MedicamentoGenericoVS (example)
      
    
    * nombreComercial 0..1 SU Coding "Nombre comercial con el que se conoce el medicamento"  "Nombre comercial con el que se conoce el medicamento" 
    * nombreComercial ^comment = "Debe estar este dato o el Nombre Genérico o el Nombre Comercial"
    * nombreComercial from NombreComercialMedicamentoVS  (example)

    * formaFarmacologica 0..1 BackboneElement "Forma Farmacéutica del Medicamento" "Forma Famrmaceutica descrita en la forma, Dosis, Via de Administración y Fecha de Inicio"
      * forma 0..1 SU Coding "Forma Farmaceutica" "Forma faracéutia en código y glosa"
      * forma from FormaFarmaceuticaVS
      
      * viaAdministracion 0..1 SU Coding "Vía mediante la cual el medicamento ha sido administrado al paciente" "Vía determinada por medio de codificación"
      * viaAdministracion from ViaAdminMedicamentoVS (example)
      
  
  * vacunasUltimos30Dias 0..* BackboneElement "Descripción de Vacunas colocadas hast 30 días previos a ESAVI" "Descripción de Vacunas colocadas hast 30 días previos a ESAVI"
    * vacunasAdministradas 0..* SU string "Nombre de Vacunas Administradas según paciente" "Debe ser aquella que el paciente describe"
    * mecanismoVerificacion 0..1 SU Coding "Código del mecanismo de verificación de vacuna colocada" "Código del mecanismo de verificación de vacuna colocada"
    * mecanismoVerificacion from ModoVerificacionVacunaVS (required)
  
    * otroMecanismoVerificacion 0..1 SU string "Descripción de otro mecanismo no considerado en los códigos" "Otro mecanismo no considerado en los codigos y descrito en texto libre"
    * vacunatorioVacunaPrevia 0..1 SU string "Nombre del vacunatorio en donde se inyectó vacuna" "Nombre del vacunatorio según descripción del paciente"

* registroESAVI 1..1 BackboneElement "Registro de ESAVI desarrollado por el paciente" "Registro de ESAVI desarrollado por el paciente"
  * direccionVacunatorio 1..1 SU Coding "Dirección del vacunatorio según código OPS" "Dirección del vacunatorio según código OPS"
  * direccionVacunatorio from DirOrgNotiVS (required)
  
  * datosESAVI 1..* BackboneElement "Datos del ESAVI generado y la relevancia de este" "Datos del ESAVI generado y la relevancia de este"
    * esaviReacciones 1..1 SU string "Eventos y reacciónes manifestados por el paciente para el ESAVI descrito" "Eventos y reacciónes manifestados por el paciente para el ESAVI descrito. en texto libre"
    * esaviMedra 0..1 SU Coding "Código Medra de la reacción adversa generada por la vacuna" "Reacción Adversa en Código Medra" 
    * esaviMedra from EsaviMedraVS (required)
    * esaviOtroCodigo 0..1 SU Coding "Código no Medra de la reacción adversa generada por la vacuna" "Reacción Adversa en Código no Medra" 
    * esaviOtroCodigo from EsaviOtroVS (example)

  * embarazoESAVI 0..1 BackboneElement "Datos relacionados con paciente embarazada al momento de generar ESAVI" "Datos relacionados con paciente embarazada al momento de generar ESAVI"
    * embarazoDuranteVacuna 1..1 SU Coding "Consulta sobre la condición de embarazo al vacunarse" "Condición de Embarazo al momento de vacunarse" 
    * embarazoDuranteVacuna from  RespuestaSiNoNosabeVS (required)
    * embarazoAlDesarrolloESAVI 1..1  SU Coding "Consulta sobre la condición de embarazo al desarrolar ESAVI" "Condición de Embarazo al momento de generar ESAVI" 
    * embarazoAlDesarrolloESAVI from RespuestaSiNoNosabeVS (required)
    * fechaUltimaRegla 1..1 SU date "Fecha de la última menstruación de la Paciente"  "Fecha de la última menstruación Registrada" 
    * fechaParto 1..1 SU date "Fecha probable del parto" "Fecha probable en la cual se cumplirán las semanas para parto"
    * monitoreoPosteriorVacuna 1..1 SU Coding "Consulta sobre si se monitoreo paciente una vez vacunada" "¿Fue Paciente monitoreada una vez vacunada?"
    * monitoreoPosteriorVacuna from RespuestaSiNoNosabeVS (required)

  * complicacionesEmbarazo 0..* BackboneElement "Descripción de las complicaciones sufridas durante el embarazo" "Descripción de las complicaciones sufridas durante el embarazo"
    * complicacionDuranteEmbarazo 1..1 SU Coding "Descripción de la complicación" "Uso de codificación y glosa para describir la complicación al embarazo"
    * complicacionDuranteEmbarazo from ComplicacionEmbarazoVS (required)
    * complicacionEmbarazo 1..1 SU string "Descripción de la Complicación" "Descripción de la complicación en texto libre"
    * complicacionEmbarazoMedra 0..1 SU Coding "Código Medra Confirmación Embarazo" "Código solo en Medra"
    * complicacionEmbarazoMedra from ComplicacionEmbarazoMedraVS (required)
    * complicacionEmbarazoOtro 0..1 SU string "Código No Medra Confirmación Embarazo" "Códigos que no sean  Medra"
    * complicacionEmbarazoOtro from ComplicacionEmbarazoOtroVS (example)

  * desenlaceESAVI 1..1 BackboneElement "Determinación del estado de gravedad del ESAVI" "Determinación en base a una serie de categorías de la gravedad del ESAVI"
    * tipoGravedad 1..1 SU boolean "Definición si el ESAVI es de Gravedad o No" "Es Grave o no el ESAVI Reportado"
    * gravMuerte 0..1 SU boolean "¿Es la gravedad la muerte del paciente?" "¿Es la gravedad la muerte del paciente?"
    * gravRiesgoVida 0..1 SU boolean "¿Es la gravedad de Riesgo de Vida del paciente?" "¿Es la gravedad de Riesgo de Vida del paciente?"
    * gravDiscapacidad 0..1 SU boolean "¿Es la gravedad la discapacidad del paciente?" "¿Es la discapacidad la muerte del paciente?"
    * gravAnomaliaCongenita 0..1 SU boolean "¿Es la gravedad el gatillante de una anomalía congénita paciente?" "¿Es la gravedad el desencadenamiento de una anomalía congénita del paciente?"
    * gravAborto 0..1 SU boolean "¿Es la gravedad aborto en el paciente?" "¿Es la gravedad aborto en el paciente?"
    * gravMuerteFetal 0..1 SU boolean "¿Es la gravedad la muerte fetal en el paciente?" "¿Es la gravedad la muerte fetal en el paciente?"
    * otrosEventosImportantes 0..1 SU boolean "Otros Eventos considerados Médicamente Importantes" "Indicación si además se Generaron otros efectos considerados como Importantes desde el punto de vista Médico "
      * otrosEventosImportantesTx 0..* SU string "Definición Otros Eventos considerados Médicamente Importantes" "Listado otros efectos considerados como Importantes desde el punto de vista Médico "
    
    * desenlaceESAVI 1..1 SU Coding "Desenlace según categoría" "Desenlace del ESAVI manifestado por el paciente" 
    * desenlaceESAVI from ClasificacionDesenlaceVS

    * fechaMuerte 0..1 SU date "Fecha de muerte producida por posible ESAVI" "Fecha de muerte producida por posible ESAVI"
    * autopsia 0..1 SU boolean "Determinación si hubo o no Autopsia" "Determinación si hub autopsia en caso de muerte del paciente"
    * fechaNotificaMuerte 0..1 SU date "Fecha en la cual se notifico la muerte del paciente al registro nacional" "Fecha en la cual se notifico la muerte del paciente al registro nacional"
    * fechaNotificaMuerteFetal 0..1 SU date "Fecha en la cual se notifico la muerte del feto de paciente al registro nacional" "Fecha en la cual se notifico la muerte del feto del paciente al registro nacional"
    * autopsiaFetal 0..1 SU boolean "Determinación si hubo o no Autopsia Fetal" "Determinación si hub autopsia en caso de muerte del feto del paciente"
    * comentarios 0..1 SU string "Comentarios adicionales en cuanto al cuadro ESAVI" "Comentarios adicionales en cuanto al cuadro ESAVI"
    * fechaInicioInvestigacion 0..1 SU date "Fecha en la cual se inicia investigación" "En caso de considerarse necesaria una investigación se registra su inicio"

  
    
  
* registroVacunaCovidOtras 1..* BackboneElement "Registro de la Vacuna COVID19 colocada y de otras colocadas al mismo tiempo" "Registro de las vacunas colocadas junto a la de COVID-19"
  * descripcionVacuna 1..1 SU string "Descripción de la vacuna sospecha de generar ESAVI" "Descripción de la Vacuna en Texto Libre"
  * codigoWhoVacuna 0..1 SU Coding "Código WhoDrug de la Vacuna" "Código WhoDrug"
  * codigoWhoVacuna from CodigoWhoVacunaVS
  * codigoOtroVacuna 0..1 SU Coding "Código no WhoDrug de la Vacuna" "Código  que no sea WhoDrug"
  * codigoOtroVacuna from CodigoOtroVacunaVS

  * fechaHoraVacunacion 1..1 SU dateTime "Fecha y hora en la cual se colocó la vacuna que habria generado ESAVI" "Fecha de colocación de vacuna"
  * dosisVacuna 1..1 SU integer "1a, 2a o 3ra dosis" "Núnero de la dósis colocada" 
  * numeroLote 1..1 SU string "Númer del Lote de la Vacuna colocada" "Númer del Lote de la Vacuna colocada"
  * fechaVencimientoVacuna 1..1 SU date "Fecha de Vencimiento de vacuna" "Fecha de Vencimiento de vacuna"
  * nombreDiluyenteVacuna 0..1 SU string "Nombre del Diluyente de la Vacuna" "Nombre del Diluyente de la Vacuna"
  * numeroLoteDiluyente 0..1 SU string "Numero del lote del diluyente de la vacuna" "Numero del lote del diluyente de la vacuna"
  * fechaVencimientoDiluyente 0..1 SU date "Fecha de vencimiento del diluyente de la vacuna" "Fecha de vencimiento del diluyente de la vacuna"
  * fechaHoraReconstitucionVacuna 0..1 SU dateTime "Fecha y Hora de Reconstrucción de la Vacuna" "Fecha y Hora de Reconstrucción de la Vacuna"
  
