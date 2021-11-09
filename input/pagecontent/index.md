
### Introducción

La Guia AEFI está basada en [FHIR Versión R4](http://hl7.org/fhir/R4/index.html) y define los requerimientos mínimos de conformidad para comunicarse con el Centro Regional PAHO para el informe de Eventos Adversos de Vacunas (en principio, COVID-19)

Estos perfiles son la fundación para futuras guías de implementación y fueron producidos en colaboración entre PAHO y la Asociación HL7 Argentina.


### Cómo leer esta guía

Esta guía está dividida en varias páginas que se muestran en la parte superior de la página en la barra de menú..



*   [Home](index.html): Provee la introducción acerca de esta guía.
*   [Objetivos](objetivos.html): Describe los objetivos estratégicos y de interoperabilidad 
*   [Actores](actores.html): Describen a los actores (sistemas) participantes en las operaciones
*   [Operaciones](operaciones.html): Casos de uso y descripción de las operaciones disponibles
*   [Artefactos](artifacts.html): Estas páginas proveen descripciones detalladas y definiciones formales para los objetos FHIR definidos en la guía.
*   [Recomendaciones](recomendaciones.html): Esta página provee recomendaciones generales sobre cómo usar los perfiles y transacciones definidas en esta guía.
*   [Terminología](terminologia.html): Describe el vocabulario externo utilizado  y las definiciones terminológicas locales.
*   [Seguridad](seguridad.html): Explica cómo conectarse al Centro Regional de manera segura
*   [Sandbox](sandbox.html): En esta sección se brinda una colección y documentación Postman que ejemplifica todas las operaciones descriptas en esta guía
*   [Descargas](descargas.html): Agrupa las descargas disponibles: perfiles, paquete de validación, ejemplos, etc.

### Del modelo logico a la implementacion

El modelo logico esta basado en el Codebook para Notificacion ESAVI V2 ES
Este modelo logico se mapeó a perfiles de recursos definidos en FHIR R4 y agrupados en un recurso Bundle

Bundle (EAFI_Mensaje)
->
MessageHeader   (ESAVI_Encabezado)
Patient         (ESAVI_Persona_Afectada)
Practitioner    (ESAVI_Persona_Notificadora)
Questionnaire   (ESAVI_Antecedentes)
Immunization    (ESAVI_DatosVacunacion)
AdverseEvent    (ESAVI_EventoAdverso)


### Requerimientos de Conformidad

Los requerimientos de conformidad describen las expectativas sobre la funcionalidad de las aplicaciones servidor/cliente, identificando los perfiles específicos y las interacciones que deben implementar. Los perfiles individuales identifican los requerimientos estructurales y terminológicos. Las definiciones de parámetros de búsqueda y operaciones especifican cómo son implementados por los servidores.



---


Autores Primarios: Daniel Rizatto (PAHO),Jose Donis Vasquez (PAHO),Luis Benavidez (PAHO),Carlos Aguilar (PAHO),Victor Osorio (PAHO)

Autores Secundarios: Diego Kaminker (HL7 Argentina), Fernando Campos (HL7 Argentina) 
