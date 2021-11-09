### Informe de Efectos Adversos

#### Registro de Efecto Adverso

Para registrar un efecto adverso deberá enviarse un mensaje de tipo 
[Efecto Adverso AEFI] conforme al perfil que se especifica aquí: 
*   [Bundle_EfectoAdverso_esavi](StructureDefinition-Bundle_EfectoAdverso-esavi.html)  
`POST [base]/$process-message`

En caso de ser exitosa, la operación devolverá una respuesta OperationResponse 
con el resultado. Caso contrario, se retornará el detalle de los errores.

#### Recomendaciones / Aclaraciones

* El set de datos mínimos de AEFI debe incluirse dentro de los recursos definidos por esta guía

#### Ejemplo Completo

Ver ejemplo completo en
[EfectoAdverso_esavi](Bundle-UV-EfectoAdverso.html)  

