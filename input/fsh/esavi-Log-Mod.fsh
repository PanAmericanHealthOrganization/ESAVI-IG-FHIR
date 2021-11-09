Logical: NotificacionESAVIOPS
Title: "Modelo Lógico Notificación ESAVI Para OPS"
Description: "Modelo Lógico de Notificaciones de Evento Adverso generado eventualmente por vacuna por Covid-19, para ESAVI-Notificación_ESAVI_OPS"

* Datos-Notificacion 1..1 BackboneElement "Datos Administrativos de la Notificación" "Conjunto de datos para motivos administrativos del ESAVI que se esta notificando"
  
  * Dat-Notif 1..1 BackboneElement "Datos de quién y donde se realiza la notificación" "Datos de quien notifica, la organización donde notifica y la dirección"
   
    * OrgNotifica 1..1 SU string "Nombre Organización que Notifica" """
      Nombre Organización que Notifica en donde a veces lo podemos caracterizar como string 
    """
    * Direccion-OrgNotifica 1..1 Coding "Dirección en formato de OPS de Organización que Notifica ESAVI" "Dirección en formato de OPS de Organización que Notifica ESAVI"
    * Direccion-OrgNotifica from DirOrgNotiVS (required)
    * Prof-Notificador 1..1 SU Coding "Profesión de quien notifica ESAVI" "Profesión de quien notifica ESAVI."
    * Prof-Notificador from ProfNotificadorVS (required)

  * Fechas 1..1 BackboneElement "Fechas Administrativas" "Fechas de de notificacion y almacenamiento de la notificacion en repositorios"
    * Fecha-Consulta  1..1 SU  date "Fecha de consulta por sintómas" "Fecha en la cual el paciente consulto por sitomas ESAVI."
    * Fecha-Notificacion  1..1 SU  date "Fecha de nacimiento" "Fecha de nacimiento"
    * Fecha-llenado-ficha  1..1 SU date "Fecha que se llenó este formulario" "Fecha en que se llenó este formulario"
    * Fecha-Alma-Rep-Nac   0..1 SU date "Fecha en la que el formulario fue almacenado localmente" "Fecha en la que el formulario fue almacenado localmente"
    * Fecha-Alma-Rep-OPS  1..1 SU date "Fecha en la que el formulario fue almacenado en OPS" "Fecha en la que el formulario fue almacenado en OPS"

* Datos-Paciente-Caso  1..1  BackboneElement "Datos Demográficos de Paciente ESAVI" "Datos mínimos de paciente que manifiesta síntomas de ESAVI"  
  * Datos-Paciente   1..1 BackboneElement "Datos del Paciente ESAVI" "Estos Datos pueden ser actualizados ante nuevo versionado de informe"
    * NoCaso 1..1 SU string "UUID que identifica el caso" "UUID para garantizar la irepetitibilidad del registro"
    * Pais-Origen-Reg 1..1 SU Coding "País en donde se originó el Registro" "País en código ISO 3166-1 (Dos Letras)"
    * Pais-Origen-Reg from http://hl7.org/fhir/ValueSet/iso3166-1-N (required)
  
    * Id_Paciente 1..1  identifier "Número Identificación de Paciente, en UUID" "Número Unico basado en UUID"
      * value 1..1 SU string "UUID de identificación" "UUID de identificación"
  
    * Residencia-Habitual 1..1 SU Coding "Residencia habitual del Paciente" "Residencia en Código en donde habitualmente reside el paciente"  
    * Residencia-Habitual from DirOrgNotiVS (required)

    * Sexo-Pac 1..1 SU Coding "Sexo del paciente" "Sexo del Paciente en código FHIR" 
    * Sexo-Pac from 	http://hl7.org/fhir/ValueSet/administrative-gender (required) 

    * Fecha-Nacimiento 1..1 SU date "Fecha de nacimiento del Paciente" "Fecha de nacimiento del Paciente"
    * Etnia 0..1 SU string "Etnia reconcida por el paciente" "Etnia reconocida por el paciente"

* Antecedentes-Medicos 1..1 BackboneElement "Antecedentes médicos previos identificados por el paciente" "Aquellos antecedentes médicos que el paciente declara como relevantes al momento de declarar ESAVI"
  * Antecedentes-Enf_Previas 1..1 BackboneElement "Antedecentes de enfermedades previas o SARS-Cov2"  "Antedecentes de enfermedades previas o SARS-Cov2"
    * Antecedentes-Enf 0..* SU Coding "Listado de enfermedades declaradas por el paciente" "Enfermedades crónicas, mórbidas o co-morbidas declaradas por el pacientes"
    * Antecedentes-Enf from EnfermedadesPreviasCodificacionVS (required)

    * Antecedentes-SARS 1..1 SU code "Declaración de haber tenido Covid-19" "Declaración si paciente ha tenido Covid-19"
    * Antecedentes-SARS from RespuestaSiNoNosabeVS

  * Antecedentes-Ev-Ad 0..1 BackboneElement "Declaración de existencia de eventos adversos previos"  "Declaración de existencia de eventos adversos previos" 
    * Antecedentes-Vacuna 1..1 SU Coding "Declaración de antecedentes de Eventos Adversos con vacunas si|no|desconoce" "Declaración de antecedentes de Eventos Adversos con vacunas si|no|desconoce" 
    * Antecedentes-Vacuna from RespuestaSiNoNosabeVS (required)
    
    * Antecedentes-Ev-Medicamentos 1..1 SU Coding "Declaración de antecedentes de Eventos Adversos con medicamentos si|no|desconoce" "Declaración de antecedentes de Eventos Adversos con medicamentos" 
    * Antecedentes-Ev-Medicamentos from RespuestaSiNoNosabeVS (required)
    
    * Antecedentes-misma-vacuna 1..1 SU Coding "Declaración de antecedentes de Eventos Adversos con misma vacuna si|no|desconoce" "Declaración de antecedentes de Eventos Adversos con misma vacuna si|no|desconoce" 
    * Antecedentes-misma-vacuna from RespuestaSiNoNosabeVS (required)

  * Antecedentes-SARS-Cov2 0..* BackboneElement "Antecedentes que Paciente ha padecido COVID-19" "Antecedentes relacionados con COVID-19 del paciente y datos relacionados"
    * Asintomatico-SARS 0..1 SU code "Covid-19 asintomatico?" "Covid-19 asintomatico?"
    * Asintomatico-SARS from RespuestaSiNoNosabeVS (required)
    * Fecha-Sintomas-COVID19 0..1 SU date "Fecha en la cual el paciente reconoce haber tenido sintomas" "Fecha en la cual el paciente reconoce haber tenido sintomas"
    * Confirmacion-Diagnostico-Covid19 0..1 SU boolean "¿Diagnóstico de COVID19 confirmado?" "¿Diagnóstico de COVID19 confirmado?"
    * Tipo-Confirmacion-COVID19 0..1 SU Coding "Tipo de confirmación de diagnóstico COVID.19" "Tipo de confirmación según código local"
    * Tipo-Confirmacion-COVID19 from ModoConfirmacionInfeccionVS (required)
    * Fecha-TomaMuestra-COVID19 0..1 SU date "Fecha en la cual se tomó la muestra para examen de COVID-19" "Fecha en la cual se tomó la muestra para examen de COVID-19"
    * Ensayo-Clinico-COVID19 0..1 SU boolean "Consulta si particpó en algún ensayo clínico para COVID-19" "Consulta si particpó en algún ensayo clínico para COVID-19"

* Antecedentes-Farma-vacunas 0..* BackboneElement "Antecedentes si el paciente consume fármcos durante ESAVI o ha recibido otra vacunas en los ultimos 30 días previos a la vacuna con sospecha de generar ESAVI" "Antecedentes si el paciente consume fármcos durante ESAVI o ha recibido otra vacunas en los ultimos 30 días previos a la vacuna con sospecha de generar ESAVI"
  * Medicamento 0..* BackboneElement "Antecedentes de medicamentos que el paciente consume al momento de generar ESAVI" "Listado de medicamentos consumidos al generar ESAVI"
 
    * Sust-Activa 0..* SU Coding "Descripción de la o las susbstancias activas del medicamento consumido" "Clasificación en terminología de cada sustancia activa del medicamento"
    * Sust-Activa from   SustanciaActivaVS (example)     
    * Sust-Activa ^comment = "Debe estar este dato o el Nombre Genérico o el Nombre Comercial"
    
    * Nomb-Generico 0..1 SU Coding "Nombre Genérico del Medicamento SNOMED-CT|WHODrugs" "Nombre Genérico del medicamento en codificación"
    * Nomb-Generico ^comment = "Debe estar este dato o el Nombre Genérico o el Nombre Comercial"
    * Nomb-Generico from MedicamentoGenericoVS (example)
      
    
    * Nomb-Comercial 0..1 SU Coding "Nombre comercial con el que se conoce el medicamento"  "Nombre comercial con el que se conoce el medicamento" 
    * Nomb-Comercial ^comment = "Debe estar este dato o el Nombre Genérico o el Nombre Comercial"
    * Nomb-Comercial from NombreComercialMedicamentoVS  (example)

    * Forma-Farma 0..1 BackboneElement "Forma Farmacéutica del Medicamento" "Forma Famrmaceutica descrita en la forma, Dosis, Via de Administración y Fecha de Inicio"
      * Forma 0..1 SU Coding "Forma Farmaceutica" "Forma faracéutia en código y glosa"
      * Forma from FormaFarmaceuticaVS
      * Dosis-Forma 0..1 SU SimpleQuantity "Numero de dosis consumidad al momento del ESAVI" "Cantidad de dosis medicadas consumidas al momento de generar el ESAVI"
      * Via-Administracion 0..1 SU Coding "Vía mediante la cual el medicamento ha sido administrado al paciente" "Vía determinada por medio de codificación"
      * Via-Administracion from ViaAdministracionMedicamentoVS (example)
      * Fecha-Inicio-Consumo 0..1 SU date "Fecha en la cual se inicio el consumo del medicamento indicado" "Fecha en la cual se inicio el consumo del medicamento indicado"
      
 
  * Consulta-Vacunas_Previas 1..1 BackboneElement "Consulta si se han colocado otras vacunas 30 días previos a la supuesta que desencadenó ESAVI" "Consulta previa sobre vacunas colocadas 30 días antes"
    * Consulta-Vac-Prev 1..1 SU boolean "Consulta por vacunas previas en 30 días o menos colocadas" "Consulta por vacunas previas en 30 días o menos colocadas"

  * Vacunas-30Dias 0..* BackboneElement "Descripción de Vacunas colocadas hast 30 días previos a ESAVI" "Descripción de Vacunas colocadas hast 30 días previos a ESAVI"
    * Vacunas-Administradas 0..* SU string "Nombre de Vacunas Administradas según paciente" "Debe ser aquella que el paciente describe"
    * Mecanismo-Verificacion 0..1 SU Coding "Código del mecanismo de verificación de vacuna colocada" "Código del mecanismo de verificación de vacuna colocada"
    * Mecanismo-Verificacion from ModoVerificacionVacunaVS (required)
  
    * Otro-Mecanismo-Verif 0..1 SU string "Descripción de otro mecanismo no considerado en los códigos" "Otro mecanismo no considerado en los codigos y descrito en texto libre"
    * Vacunatorio-30Dias 0..1 SU string "Nombre del vacunatorio en donde se inyectó vacuna" "Nombre del vacunatorio según descripción del paciente"

* Registro-ESAVI 1..1 BackboneElement "Registro de ESAVI desarrollado por el paciente" "Registro de ESAVI desarrollado por el paciente"
  * Direccion-Vacunatorio 1..1 SU Coding "Dirección del vacunatorio según código OPS" "Dirección del vacunatorio según código OPS"
  * Direccion-Vacunatorio from DirOrgNotiVS (required)
  
  * Datos-ESAVI 1..* BackboneElement "Datos del ESAVI generado y la relevancia de este" "Datos del ESAVI generado y la relevancia de este"
    * Eventos-Reacciones 1..1 SU Coding "Eventos y reacciónes manifestados por el paciente para el ESAVI descrito" "Eventos y reacciónes manifestados por el paciente para el ESAVI descrito. Su Set de Valores debe ser determinado"
    * Eventos-Reacciones from EventoAdversoVacunaVS 
    * Evento-Princpal 1..1 SU boolean "Determinación si el Evento descrito es principal o no" "Determinación si el Evento descrito es principal o no"
    * Fecha-Hora-ESAVI 1..1 SU dateTime "Hora y fecha en la cual sucedió el ESAVI Reportado" "Hora y fecha en la cual sucedió el ESAVI Reportado"

  * Embarazo-ESAVI 0..1 BackboneElement "Datos relacionados con paciente embarazada al momento de generar ESAVI" "Datos relacionados con paciente embarazada al momento de generar ESAVI"
    * Embarazo-Vacuna 1..1 SU Coding "Consulta sobre la condición de embarazo al vacunarse" "Condición de Embarazo al momento de vacunarse" 
    * Embarazo-Vacuna from  RespuestaSiNoNosabeVS (required)
    * Embarazo-ESAVI 1..1  SU Coding "Consulta sobre la condición de embarazo al desarrolar ESAVI" "Condición de Embarazo al momento de generar ESAVI" 
    * Embarazo-ESAVI from  RespuestaSiNoNosabeVS (required)
    * Fecha-Ultima-Regla 1..1 SU date "Fecha de la última menstruación de la Paciente"  "Fecha de la última menstruación Registrada" 
    * Fecha-Parto 1..1 SU date "Fecha probable del parto" "Fecha probable en la cual se cumplirán las semanas para parto"
    * Monitoreo-Posterior-Vacuna 1..1 SU Coding "Consulta sobre si se monitoreo paciente una vez vacunada" "¿Fue Paciente monitoreada una vez vacunada?"
    * Monitoreo-Posterior-Vacuna from RespuestaSiNoNosabeVS (required)

  * Complicaciones-Embarazo 0..* BackboneElement "Descripción de las complicaciones sufridas durante el embarazo" "Descripción de las complicaciones sufridas durante el embarazo"
    * Complica-Embar 1..1 SU Coding "Descripción de la complicación" "Uso de codificación y glosa para describir la complicación al embarazo"
    * Complica-Embar from ComplicacionEmbarazoVS
    * Diagnostico-Complicacion 1..1 SU Coding "Diagnóstico confirmado de la complicación al embarazo" "Código y glosa de complicación al embarazo"
    * Diagnostico-Complicacion from DiagComplicacionEmbarazoVS
    * Descripcion-Complicacion 1..1 SU string "Descripción en texto libre de la complicación sufrida durante el embarazo" "Descripción en texto libre de la complicación sufrida durante el embarazo"
      

  * Desenlace-ESAVI 1..1 BackboneElement "Determinación del estado de gravedad del ESAVI" "Determinación en base a una serie de categorías de la gravedad del ESAVI"
    * Tipo-Gravedad 1..1 SU boolean "Definición si el ESAVI es de Gravedad o No" "Es Grave o no el ESAVI Reportado"
    * Grav-Muerte 0..1 SU boolean "¿Es la gravedad la muerte del paciente?" "¿Es la gravedad la muerte del paciente?"
    * Grav-RiesgoVida 0..1 SU boolean "¿Es la gravedad de Riesgo de Vida del paciente?" "¿Es la gravedad de Riesgo de Vida del paciente?"
    * Grav-Discapacidad 0..1 SU boolean "¿Es la gravedad la discapacidad del paciente?" "¿Es la discapacidad la muerte del paciente?"
    * Grav-AnomaliaCongenita 0..1 SU boolean "¿Es la gravedad el gatillante de una anomalía congénita paciente?" "¿Es la gravedad el desencadenamiento de una anomalía congénita del paciente?"
    * Grav-Aborto 0..1 SU boolean "¿Es la gravedad aborto en el paciente?" "¿Es la gravedad aborto en el paciente?"
    * Grav-MuerteFetal 0..1 SU boolean "¿Es la gravedad la muerte fetal en el paciente?" "¿Es la gravedad la muerte fetal en el paciente?"
    * Otros-Eventos-Importantes 0..1 SU boolean "Otros Eventos considerados Médicamente Importantes" "Indicación si además se Generaron otros efectos considerados como Importantes desde el punto de vista Médico "
      * Otros-Eventos-ImportantesTx 0..* SU string "Definición Otros Eventos considerados Médicamente Importantes" "Listado otros efectos considerados como Importantes desde el punto de vista Médico "
    
    * Desenlace-ESAVI 1..1 SU Coding "Desenlace según categoría" "Desenlace del ESAVI manifestado por el paciente" 
    * Desenlace-ESAVI from ClasificacionDesenlaceVS

    * Fecha-Muerte 0..1 SU date "Fecha de muerte producida por posible ESAVI" "Fecha de muerte producida por posible ESAVI"
    * Autopsia 0..1 SU boolean "Determinación si hubo o no Autopsia" "Determinación si hub autopsia en caso de muerte del paciente"
    * Fecha-Notif-Muerte 0..1 SU date "Fecha en la cual se notifico la muerte del paciente al registro nacional" "Fecha en la cual se notifico la muerte del paciente al registro nacional"
    * Fecha-Notif-Muerte-Fetal 0..1 SU date "Fecha en la cual se notifico la muerte del feto de paciente al registro nacional" "Fecha en la cual se notifico la muerte del feto del paciente al registro nacional"
    * Autopsia-Fetal 0..1 SU boolean "Determinación si hubo o no Autopsia Fetal" "Determinación si hub autopsia en caso de muerte del feto del paciente"
    * Comentarios 0..1 SU string "Comentarios adicionales en cuanto al cuadro ESAVI" "Comentarios adicionales en cuanto al cuadro ESAVI"
    * Fecha-Inicio-Investigacion 0..1 SU date "Fecha en la cual se inicia investigación" "En caso de considerarse necesaria una investigación se registra su inicio"

  
    
  
* Registro-Vacuna-Covid-Otras 1..* BackboneElement "Registro de la Vacuna COVID19 colocada y de otras colocadas al mismo tiempo" "Registro de las vacunas colocadas junto a la de COVID-19"
  * Nombre-Generico 0..1 SU Coding "Nombre Genérico de la Vacuna" "Nombre Genérico de la vacuna según sistema de codificación"
  * Nombre-Generico from NombGenericoVacunaVS (example)
  * Nombre-Generico ^comment = "Debe ir Nombre Genérico o Nombre no Clasificado o Nombre Comercial, al menos uno de ellos"
  * Nombre-No-Clasificado 0..1 SU string "Descripción del nombre no clasificado de la vacuna" "Descripción del nombre no clasificado de la vacuna"
  * Nombre-No-Clasificado ^comment = "Debe ir Nombre Genérico o Nombre no Clasificado o Nombre Comercial, al menos uno de ellos"
  * Nombre-Comercial 0..1 SU CodeableConcept "Nombre Comercial de la Vacuna" "Nombre Comercial de la vacuna según sistema de codificación"
  * Nombre-Comercial from NombreComercialVacunaVS (example)
  * Nombre-Comercial ^comment = "Debe ir Nombre Genérico o Nombre no Clasificado o Nombre Comercial, al menos uno de ellos"
  * Fabricante-Vacuna 0..1 SU string "Fabricante de la vacuna colocada" "Fabricante de la vacuna colocada"
  * Fecha-Vacunacion 1..1 SU date "Fecha en la cual se colocó la vacuna que habria generado ESAVI" "Fecha de colocación de vacuna"
  * Dosis-Vacuna 1..1 SU integer "1a, 2a o 3ra dosis" "Núnero de la dósis colocada" 
  * Num_Lote 1..1 SU string "Númer del Lote de la Vacuna colocada" "Númer del Lote de la Vacuna colocada"
  * Fecha-Vencimiento-Vacuna 1..1 SU date "Fecha de Vencimiento de vacuna" "Fecha de Vencimiento de vacuna"
  * Nombre-Diluyente-Vacuna 0..1 SU string "Nombre del Diluyente de la Vacuna" "Nombre del Diluyente de la Vacuna"
  * Num-Lote-Diluyente 0..1 SU string "Numero del lote del diluyente de la vacuna" "Numero del lote del diluyente de la vacuna"
  * Fecha-Vencimiento-Diluyente 0..1 SU date "Fecha de vencimiento del diluyente de la vacuna" "Fecha de vencimiento del diluyente de la vacuna"
  * FechaHora-Reconstruccion-Vacuna 0..1 SU dateTime "Fecha y Hora de Reconstrucción de la Vacuna" "Fecha y Hora de Reconstrucción de la Vacuna"
  
