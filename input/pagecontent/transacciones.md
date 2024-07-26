### Descripción general

En esta página se definiran los casos de uso de intercambio de datos, que se pueden generar entre los Centros de Notificación Nacionales y el Sistema de Registros de ESAVI de OPS. Para cada caso de uso se indica los actores que partricipan, las secuencias de intercambio de datos, los recursos FHIR involucrados y la operación a implementar:

#### Caso 1: Envío de Caso 

*  Diagrama
<br>

<div align="center" >
  {% include Caso1.svg %}
</div>
<br clear="all"/>

<br>

* Detalle
  * El Sistema **de Notificación Nacional** solicita Token de acceso al  **Sistema de Registro OPS**
  * El **Sistema de Registro OPS** envía *Token*
  * El sistema de **Notificación Nacional** envía la Notificación al **Sistema de Registro OPS**

* Recursos
  * Envío: QuestionnaireResponse/Bundle 
  * Respuesta: QuestionnaireResponse/OperationOutcome

* Operaciones
  La operación usada será POST para el recurso.

  ```
  POST: {BaseURL}/QuestionnaireResponse
  ```

  <br>
  En caso de transar con *Bundle*

  ```
  POST: {BaseURL}/
  ```


#### Caso 2: Actualización de Notificación

*  Diagrama

<br>

<div align="center" >
  {% include Caso2.svg %}
</div>
<br clear="all"/>

<br>

* Detalle
  * El Sistema **de Notificación Nacional** solicita Token de acceso al  **Sistema de Registro OPS**.
  * El **Sistema de Registro OPS** envía *Token*.
  * El Sistema **de Notificación Nacional** envía la Notificación con las respuestas o elementos modificados  al **Sistema de Registro OPS**.

* Recursos
  * Envío: QuestionnaireResponse
  * Respuesta: QuestionnaireResponse/OperationOutcome

* Operaciones
  Dada las características de una respuesta de cuestionario la única operación de actualización es PUT

  ```
  PUT: {BaseURL}/QuestionnaireResponse/{id_QuestREsp}
  ```

  El recurso enviado debe contener el *id* con valor del que se desea modificar, como también la operación debe contener el valor del *id*



#### Caso 3: Consulta de Solicitud

*  Diagrama

<br>

<div align="center" >
  {% include Caso3.svg %}
</div>
<br clear="all"/>

<br>

* Detalle
  * El Sistema **de Notificación Nacional** solicita al  **Sistema de Registro OPS** una Notificación, basado en el *id* del recurso o en el *número de caso*
  * El **Sistema de Registro de OPS** devuelve la consulta con el recurso asociado al caso solicitado
  
* Recursos
  * Envío: Sin recurso
  * Resuesta: Bundle searchSet


* Operaciones
  Dado que se especifican dos posibles tipos de búsqueda se verá cada una de ellas

  * Opción 1: Por *id*

  ```
  GET: {urlBase}/QuestionnaireResponse/{id_QuestionnaireResponse}
  ```

  * Opción 2: Por *Número de Caso*

  Bajo el concepto que el identifier contiene el *Número de Caso* (situación que no siempre es asi), la búsqueda paramétrica sería como sigue

  ```
  GET: {urlBase}/QuestionnaireResponse?identifier={numeroCaso}
  ```


#### Caso 4: Búsqueda por Versión

*  Diagrama
<br>

<div align="center" >
  {% include Caso4.svg %}
</div>
<br clear="all"/>

<br>

* Detalle
  * El Sistema **de Notificación Nacional** solicita al  **Sistema de Registro OPS** una Notificación, que podría haber sido actualizada, consultando por una de sus versiones específicas
  * El **Sistema de Registro de OPS** devuelve la consulta con el recurso asociado al caso solicitadola notifición con la versión solicitada
  * En caso de no existir la vesrión solicitada el **Sistema de Registro OPS** devolverá un error.

* Recursos
  * Envío: Solicitud de Versiones
  * Resuesta: QuestionnaireResponse/Bundle searchSet/OperationOutcome

* Operaciones
 El sistema hara una operación *_history* sobre el servidor

   * Opción 1: Consultar por todas las versiones

     El Sistema responde con un *Bundle* de tipo searchSet 

    ```
    GET: {baseURL}/QuestionnaireResponse/{id}/_history
    ```

    * Opción 2: Consultar por una versión en particular

     El Sistema responde con un el recurso cosultado

    ```
    GET: {baseURL}/QuestionnaireResponse/{id}/_history/{#version}
    ```


