### General Description

This page defines the data exchange use cases that can be generated between the National Notification Centres and the PAHO ESAVI Registration System. For each use case, the actors involved, the data exchange sequences, the FHIR resources involved and the operation to be implemented are indicated:

#### Case 1: Case submission

*  Diagram
<br>

<div>{% include Case1.svg %}</div>
<br clear="all"/>

<br>

* Detail
  * The **National Notification System** requests access token to the **PAHO Registration System**.
  * The **PAHO Registration System** sends *Token*.
  * The **National Notification** system sends the Notification to the **PAHO Registry System**.

* Resources
  * Sending: QuestionnaireResponse
  * Response: QuestionnaireResponse/OperationOutcome

* Operations
  The operation used will be POST for the resource

  ```
  POST: {BaseURL}/QuestionnaireResponse
  ```


#### Case 2: Notification Update

*  Diagram

<br>

<div align="center" >
  {% include Case2.svg %}
</div>
<br clear="all"/>

<br>

* Detail
  * The **National Notification System** requests access token to the **PAHO Registration System**.
  * The **PAHO Registration System** sends *Token*.
  * The **National Notification System** sends the Notification with the responses or modified elements to the **PAHO Registry System**.

* Resources
  * Sending: QuestionnaireResponse
  * Response: QuestionnaireResponse/OperationOutcome

* Operations
  Given the characteristics of a questionnaire response the only update operation is PUT.

  ```
  PUT: {BaseURL}/QuestionnaireResponse/{id_QuestREsp}
  ```

  The resource sent must contain the *id* with value of the one to be modified, as well as the operation must contain the value of the *id*.



#### Case 3: Case Search

*  Diagram

<br>

<div align="center" >
  {% include Case3.svg %}
</div>
<br clear="all"/>

<br>

* Detail
  * The **National Notification System** requests a Notification from the **PAHO Registry System**, based on the *id* of the resource or the *case number*.
  * The **PAHO Registry System** returns the query with the resource associated with the requested case.
  
* Resourses
  * Sending: No resourse
  * Response: Bundle searchSet/OperationOutcome


* Operations
  Since two possible types of search are specified, each of them will be considered

  * Option 1: By *id*

  ```
  GET: {BaseURL}/QuestionnaireResponse/{id_QuestionnaireResponse}
  ```

  * Option 2: By  *Case Number*

  Under the concept that the identifier contains the *Case Number* (which is not always the case), the parametric search would be as follows

  ```
  GET: {BaseURL}/QuestionnaireResponse?identifier={CaseNumber}
  ```


#### Case 4: Search by Version

*  Diagram
<br>

<div align="center" >
  {% include Case4.svg %}
</div>
<br clear="all"/>

<br>

* Detail
  * The **National Notification System** requests the **PAHO Registry System** for a Notification, which may have been updated, by querying for one of its specific versions.
  * The **PAHO Registry System** returns the query with the resource associated with the requested case and the notification with the requested version.
  * In case the requested vesrion does not exist the **PAHO Registration System** will return an error.

* Resourses
  * Sending: Request for Versions
  * Response: QuestionnaireResponse/Bundle searchSet/OperationOutcome

* Operations
 The system will perform a *_history* operation on the server.

   * Option 1: Query for all versions

     The System responds with a *Bundle* of type searchSet 

    ```
    GET: {baseURL}/QuestionnaireResponse/{id}/_history
    ```

    * Option 2: Enquire about a particular version

     The System responds with a resultant resource

    ```
    GET: {baseURL}/QuestionnaireResponse/{id}/_history/{#version}
    ```


