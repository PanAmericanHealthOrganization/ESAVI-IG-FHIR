# Uso (Cómo llenar esta guía?)
## Nombres y códigos

Para acompañar los diferentes estadios de madurez de los sistemas de información de los países de la región, la guía ha incluído campos que admiten distintos niveles de complejidad terminológica, desde texto libre hasta codificaciones especiales (con y sin licencia de uso). 
Se espera que los países inicien el proceso de envío de datos transmitiendo la información con los mismos formatos y valores como se encuentran en sus sistemas de información. A medida que el proceso se fortalezca, estandarizando e incorporando terminologías internacionales, las mismas podrán agregarse a los reportes que se envían a OPS. 
Por ejemplo, si un país captura los nombres de las vacunas en texto libre podrá reportar este dato como un string en el campo "nombre de la vacuna", y en la medida que adopte codificaciones como WHODrug o CIE-11 podrá aportar un código en el campo correspondiente.

Los campos llamados "nombre de…" admiten un valor de string y hacen referencia a una descripción literal, que puede ser texto libre o un texto normalizado proveniente de la descripción de una codificación. Los códigos admiten un choice con valuesets o codes, los cuales varían según el campo. Como en general los campos obligatorios son los nombres (string), en caso de usar una codificación se puede aplicar la descripción del código. Por ejemplo, si se desea enviar la información del codigoDireccionOrganizacion, según el value set se deberá poner el código correspondiente y en el campo nombreDireccionOrganizacion ingresar el nombre asociado al código.

### Identificación de personas y casos

La identificación unívoca de personas en las cuales se detectó un ESAVI es fundamental para poder gestionar adecuadamente los datos. 
Sin embargo esta identificación debe ser anonimizada, es decir que no se pueda reconstruir los datos de manera de llegar a la persona real a através de la infomración vertida en un denuncia de un caso de ESAVI.
Con ese objetivo, la identificacion de persoans en la guía se hace a través de un UUID (Universally Unique Identifier) de identificación del vacunado. 
Se propone utilizar [UUID versión 5](https://www.uuidtools.com/uuid-versions-explained) para anonimizar el identificador nacional de la persona. 
Asimísmo se utilizará la misma tecnología para identificar los casos ante la posibilidad que haya mas d eun caso por persona.

### Sexo

Se ustiliza el concepto de **sexo biológico** para sexoPaciente, no el género, no el sexo administrativo.

### Vacunas

Cada vacuna puede ser informada en diferentes campos, admitiendo desde descripciones literales hasta codificaciones complejas. Como mínimo se debe completar el campo “nombre de vacuna”, que es obligatorio, el mismo admite un valor string y hace referencia a una descripción literal (texto libre).

Idealmente, se propone incluir el código WHODrug de la vacuna, campo que admite una codificación (drug code) del estándar WHODrug, aunque el mismo se encuentra limitado a quienes tienen acceso a la licencia. Para aquellos países que no poseen la licencia WHODrug se han incluído otros campos para ingresar la información pudiendo optar por la codificación utilizada en el país (por ejemplo, CIE-11, SNOMED CT, ATC) o el nombre normalizado de la vacuna (campo de tipo string).

### ESAVI

Cada ESAVI puede ser representado en diferentes campos, admitiendo desde descripciones literales hasta codificaciones complejas. Como mínimo se debe completar el campo nombre del ESAVI, que es obligatorio, admite un valor string y hace referencia a una descripción literal (texto libre). Como alternativa ideal se propone incluir el código MedDRA del ESAVI, campo que admite una codificación (LLT) del estándar MedDRA, limitado a quienes tienen acceso a la licencia. Para aquellos países que usan sistemas que permiten compartir el texto normalizado del ESAVI pero no el código, se han incluído otros campos para elegir la codificación utilizada (choice) y el nombre normalizado del ESAVI como un string. Para aquellos países que usan otros estándares de codificación de ESAVI diferentes a MedDRA (por ejemplo, CIE-10, CIE-11, SNOMED CT) existe un campo opcional que admite un código, especificando el codesystem correspondiente.

### Diagnósticos/Antecedentes médicos

Cada antecedente médico puede ser representado en diferentes campos, admitiendo desde descripciones literales hasta codificaciones complejas. Como mínimo se debe completar el campo nombre del antecedente, que es obligatorio, admite un valor string y hace referencia a una descripción literal (texto libre). Como alternativa ideal se propone incluir el código MedDRA del antecedente médico, campo que admite una codificación (LLT) del estándar MedDRA, limitado a quienes tienen acceso a la licencia. Para aquellos países que usan sistemas que permiten compartir el texto normalizado del antecedente médico pero no el código, se han incluído otros campos para elegir la codificación utilizada (choice) y el nombre normalizado del antecedente como un string. Para aquellos países que usan otros estándares de codificación de antecedentes médicos diferentes a MedDRA (por ejemplo, CIE-10, CIE-11, SNOMED CT) existe un campo opcional que admite un código, especificando el code system correspondiente.

### Medicamentos

Cada medicamento puede ser informado en diferentes campos, admitiendo desde descripciones literales hasta codificaciones complejas. Como mínimo se debe completar el campo nombre del medicamento. El mismo es obligatorio, admite un valor string y hace referencia a una descripción literal (texto libre). Como alternativa ideal se propone incluir el código WHODrug del medicamento, campo que admite una codificación (drug code) del estándar WHODrug, limitado a quienes tienen acceso a la licencia. Para aquellos países que usan sistemas que permiten compartir el texto normalizado del medicamento pero no el código, se han incluído otros campos para elegir la codificación utilizada (choice) y/o el nombre normalizado del medicamento como un string. Para aquellos países que usan otros estándares de codificación de medicamentos diferentes a WHODrug (por ejemplo, CIE-11, SNOMED CT, ATC) existe un campo opcional que admite un código, especificando el code system correspondiente.

## Fechas y horas parciales
Si bien en algunos casos son obligatorios, varios campos de fecha/hora (fecha de notificación, fecha de llenado de ficha, fecha de consulta) en la IG permiten que los componentes del campo sean desconocidos. Los campos de fecha y hora de FHIR brindan la posibilidad de dejar algunos componentes sin especificar (por ejemplo, 2018, 1973-06 o 1905-08-23 son fechas válidas). Aunque lo ideal es tener la fecha completa, como mínimo se puede especificar el año.
Sugerencia: Las fechas representadas en estos grupos se ingresan con el formato de tipo “date” yyyy-mm-dd. Para el campo “fechaSintomasCovid19”, la fecha desde tipo “DateTime” agregando el horario con el formato “año-mes-día-hora” (yyyy-mm-ddTHH:MM:SSZ).

## Nombres y Códigos de ubicación geográfica
Las direcciones FHIR admiten un valor de string para la ubicación geográfica. La guía ESAVI requiere un valor codificado adicional, definiendo un value set para este propósito que se conforman con el código de país ISO 3166-1 alfa-2 (2 letras), el código de subdivisión ISO 3166-2 (2 letras y números), y un código propio para el municipio o departamento. El value set fue creado a partir del listado de ubicaciones geográficas utilizado en el área de Inmunizaciones de OPS. El código debe seleccionarse para que coincida con el contenido literal del nombre de la ubicación geográfica. En caso que exista alguna ubicación que no esté representada se puede pedir su adición a los administradores de la guía. Un ejemplo es:

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-73oq{border-color:#000000;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-73oq">Code</th>
    <th class="tg-73oq">Display</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-73oq"><a href="https://ops.hl7chile.cl/site/CodeSystem-DirOrgNotiCS.html#DirOrgNotiCS-BR_MG_31_13305" target="_blank" rel="noopener noreferrer">BR_MG_31_13305	</a> </td>
    <td class="tg-73oq">Carangola (Municipio), Minas Gerais, Brazil</td>
  </tr>

</tbody>
</table>


## Código de país

Los países se representan consistentemente usando códigos ISO 3166-1 alfa-2 de dos letras.

## Fechas importantes

Sugerencia: Las fechas obligatorias a ser completadas son, “fecha nacimiento vacunado”, “fecha ESAVI”, “fecha última menstruación ESAVI” (en caso de embarazo). Las fechas se ingresan con el formato de tipo “date” yyyy-mm-dd.

## Embarazo

El embarazo es una situación a tener en cuenta para la vigilancia de ESAVI. Dado que la vacunación COVID-19 es prioritaria en este grupo, se hace foco en la detección de posibles efectos adversos tanto en la madre como en el embrión/feto.

La condición “Embarazo” se informa en los campos de Antecedentes y ESAVI. Ya que, en primer lugar, es necesario conocer si la persona estaba/estuvo embarazada como un antecedente personal, y en segundo lugar, si tuvo alguna complicación que podría estar vinculada a la vacunación (ESAVI), se requiere explicar más sobre el tema

### Estado de embarazo

El tiempo de gestación es un dato importante para la evaluación de los ESAVI. Para tal motivo, es fundamental ingresar la fecha de la última menstruación para calcular el tiempo de gestación al momento del ESAVI. El campo “ fechaUltimaMenstruacionESAVI” , es obligatorio si se ha aclarado que la paciente se encontraba embarazada en el campo codigoEmbarazoDuranteESAVI.

Cuando? … fechas. cuando se puede asignar o inferir cada una.

### Complicaciones del embarazo

Si hubo alguna complicación, en el campo "codigotipoComplicacionEmbarazo" se deberá elegir entre las posibles opciones del [valueset Complicación Embarazo](http://ops.hl7chile.cl/site/ValueSet-ComplicacionEmbarazoVS.html), el cual se muestra a continuación:


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-73oq{border-color:#000000;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-73oq">Code</th>
    <th class="tg-73oq">Display</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-73oq">01</td>
    <td class="tg-73oq">Del Embarazo</td>
  </tr>
  <tr>
    <td class="tg-73oq">02</td>
    <td class="tg-73oq">Del Parto</td>
  </tr>
    <tr>
    <td class="tg-73oq">03</td>
    <td class="tg-73oq">Puerperio fetal</td>
  </tr>
    <tr>
    <td class="tg-73oq">04</td>
    <td class="tg-73oq">Neonatal</td>
  </tr>
    <tr>
    <td class="tg-73oq">05</td>
    <td class="tg-73oq">Anomalía Congénita</td>
  </tr>
</tbody>
</table>

Adicionalmente se pide brindar información sobre el evento en sí mismo, completando el campo "descripcioncomplicacionEmbarazo", que es obligatorio, admite un valor string y hace referencia a una descripción literal (texto libre). Como alternativa ideal se propone incluir el código MedDRA de la complicación del embarazo en el campo "ComplicacionEmbarazoMedDRA", campo que admite una codificación del estándar MedDRA, limitado a quienes tienen acceso a la licencia. Para aquellos países que usan otros estándares de codificación de antecedentes médicos diferentes a MedDRA (por ejemplo, CIE-10, CIE-11, SNOMED CT) existe un campo opcional llamado "ComplicacionEmbarazoOtro"  (se debería cambiar el nombre del linkID a "otrosCodigosComplicacionEmbarazo" para ser consistente con la denominación de otros linkID. La descripción del Text debería decir: Código SnomedCT/CIE-10/CIE-11 de la complicación del embarazo),que admite un código, especificando el code system correspondiente.