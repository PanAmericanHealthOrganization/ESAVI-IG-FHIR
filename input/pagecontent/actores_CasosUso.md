### Caso de Uso Proyecto

El proyecto involucra el intercambio de formularios de registros de ESAVI entre los reposito nacionales y el repositorio de la OPS, po del uso del estandar **FHIR**. Si bien este proyecto puede consirar varios casos de uso, en primera instancia se desarrollará aquel relacionado con la tributación de reportes desde el/los **Repositorios Nacionales**, hacia el de la **OPS**.

### Caso de Uso 1: Envío de Notifcación ESAVI a Repositorio OPS
<br>

Este caso de uso describe la generación de un **formulario FHIR** diseñado para la notificacón de ESAVI entre un Repositorio Nacional y el Repositorio OPS. La transacción debe ser relizada por medio del uso del estándar indicado por lo que de no tener generado el formulario en FHIR, deberá haber una transfortmación para poder generar la transacción. Este caso de uso presenta la siguiente secuenciación:
<br>

* **Repositorio Nacional Genenera Questionnaire Response** 

*  El Repositorio Nacional genera la Respuesta de Questionario según el **perfil** desarrollado en esta Guía, y basado en el **Questionario ESAVI** de esta Guía.
*  El recurso generado debe contener un **id**, en formato de **UUID**, cuyo esquema de generación se indica en el perfil
*  El **Recurso QuestionnaireResponse** generado se tributa al **Repositorio OPS** por medo de una operación *POST* al endpoint determinado como el del repositorio de destino
* El servcio de repositorio responde al sistema que ha enviado el recurso, indicando: estado de recepción, eventuales errores, id del recurso en caso de recepción excitosa
<br>


<br>
<br>


<div align="center">
  <img src="CU1ESAVI.png"> 
  <p>Tributación Informe ESAVI a Repositorio OPS</p>
</div>

<br>


