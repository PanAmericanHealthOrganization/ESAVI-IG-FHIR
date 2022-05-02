# Introducción
La Guía de Implementación FHIR de ESAVI (IG) brinda orientación sobre el uso de los recursos FHIR como mecanismo para compartir datos sobre Eventos Supuestamente Atribuibles a Vacunación e Inmunización (ESAVI) entre cada estado miembro de la región de las Américas hacia la Organización Panamericana de la Salud (OPS).

La guía de implementación FHIR de ESAVI brinda orientación para el uso de los recursos FHIR estándar como mecanismo para compartir los datos requeridos por el [Manual Regional de Vigilancia de ESAVI](https://iris.paho.org/handle/10665.2/55384). Se espera que el uso de FHIR como plataforma para la estandarización y automatización de reportes de ESAVI mejore la calidad y oportunidad de la información sobre seguridad de vacunas.

Esta guía de implementación de FHIR es producto del trabajo para el proyecto "Fortalecimiento del Sistema Regional de Seguridad de Vacunas en contexto de la Emergencia COVID-19".

La Guía está basada en [FHIR Versión R4](http://hl7.org/fhir/R4/index.html) y define los requerimientos mínimos de conformidad para que cada estado miembro pueda reportar individualmente a OPS los ESAVI de cualquier vacuna, priorizando aquellas contra COVID-19.

La guía de implementación se inspira en el enfoque de las [Guías SMART](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) de la Organización Mundial de la Salud para ayudar a los países a integrar los datos globales y las recomendaciones de salud de la OMS/OPS en los sistemas digitales de manera precisa y consistente.

Estos perfiles son la base para futuras guías de implementación y fueron producidos en colaboración entre OPS y la Asociación HL7 Argentina.

## Cómo leer esta guía

Esta guía está dividida en varias secciones que se muestran en la barra de menú ubicada en la parte superior de la página
- [Inicio](http://ops.hl7chile.cl/site/index.html): Provee la introducción acerca de esta guía.
- [Objetivos](http://ops.hl7chile.cl/site/objetivos.html): Describe los objetivos estratégicos y de interoperabilidad
- [Datos Generales](http://ops.hl7chile.cl/site/generalidades.html): Aspectos Generales respecto al proyecto y la Guía
- [Actores y Casos de Uso](http://ops.hl7chile.cl/site/actores_CasosUso.html): Definición de los Casos de Uso.
- [Operaciones FHIR](http://ops.hl7chile.cl/site/operaciones.html): Operaciones Rest usadas para el proyecto.
- [Artefactos](http://ops.hl7chile.cl/site/artifacts.html): Estas páginas proveen descripciones detalladas y definiciones formales para los objetos FHIR presentes en la guía.    
- [Mapeos](http://ops.hl7chile.cl/site/descargas.html): Desarrollo de los Mapeos entre DHIS2 y E2B XML(R3) con FHIR.
- [Seguridad](http://ops.hl7chile.cl/site/seguridad.html): Explica los formatos de seguridad para la conexión con el Sistema Regional.    
- [Descargas](http://ops.hl7chile.cl/site/descargas.html): Agrupa las descargas disponibles como perfiles, paquete de validación, ejemplos, etc.

## Del modelo lógico a la implementación
El modelo lógico está basado en las recomendaciones del [Manual Regional de Vigilancia de ESAVI](https://iris.paho.org/handle/10665.2/55384) para el reporte individual de casos, donde cada estado miembro informa hacia el Sistema Regional de Vacunación Segura de la OPS. Como paso previo se estructuró un Diccionario de Datos para Notificación de ESAVI ES en formato tabular. Este modelo lógico se encuentra mapeado a un recurso Questionnaire. (CREAR LINK AL QUESTIONNAIRE DEFINITIVO, CUANDO ESTÉ DISPONIBLE)

## Requerimientos de Conformidad

Los requerimientos de conformidad describen las expectativas sobre la funcionalidad de las aplicaciones servidor/cliente, identificando los perfiles específicos y las interacciones que deben implementar. Los perfiles individuales identifican los requerimientos estructurales y terminológicos. Las definiciones de parámetros de búsqueda y operaciones especifican cómo son implementados por los servidores.
ESAVI (pregunta: no deberia estar en el apartado de introduccion?)**
