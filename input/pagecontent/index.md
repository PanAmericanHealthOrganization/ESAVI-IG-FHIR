
### Introducción

La Guia AEFI está basada en [FHIR Versión R4](http://hl7.org/fhir/R4/index.html) y define los requerimientos mínimos de conformidad para comunicarse con el Centro Regional PAHO para el informe de Eventos Adversos de Vacunas (en principio, COVID-19)

Estos perfiles son la fundación para futuras guías de implementación y fueron producidos en colaboración entre PAHO y la Asociación HL7 Argentina.


### Cómo leer esta guía

Esta guía está dividida en varias páginas que se muestran en la parte superior de la página en la barra de menú..



*   [Inicio](index.html): Provee la introducción acerca de esta guía.
*   [Objetivos](objetivos.html): Describe los objetivos estratégicos y de interoperabilidad 
*   [Datos Generales](generalidades.html): Aspectos Generales respecto al proyecto y la Guía
  *   [Actores y Casos de Uso](actores_CasosUso.html): Definición de los Casos de Uso
  *   [Operaciones FHIR](operaciones.html): Operaciones Rest usadas para el proyecto
*   [Artefactos](artifacts.html): Estas páginas proveen descripciones detalladas y definiciones formales para los objetos FHIR presentes en la guía.
*   [Mapeos](descargas.html): Desarrollo de los Mapeos entre DIHS 2 y R3 con FHIR.
*   [Seguridad](seguridad.html): Explica los formatos de seguridad para la conexión con el Centro Regional
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
