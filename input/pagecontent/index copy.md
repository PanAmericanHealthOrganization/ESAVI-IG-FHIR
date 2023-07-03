# Introducción
La Guía de Implementación FHIR de ESAVI (IG) brinda orientación sobre el uso de los recursos FHIR como mecanismo para compartir datos sobre Eventos Supuestamente Atribuibles a Vacunación e Inmunización (ESAVI) entre cada estado miembro de la región de las Américas hacia la Organización Panamericana de la Salud (OPS).

La guía de implementación FHIR de ESAVI brinda orientación para el uso de los recursos FHIR estándar como mecanismo para compartir los datos requeridos por el [Manual Regional de Vigilancia de ESAVI](https://iris.paho.org/handle/10665.2/55384). Se espera que el uso de FHIR como plataforma para la estandarización y automatización de reportes de ESAVI mejore la calidad y oportunidad de la información sobre seguridad de vacunas.

Esta guía de implementación de FHIR es producto del trabajo para el proyecto "Fortalecimiento del Sistema Regional de Seguridad de Vacunas en contexto de la Emergencia COVID-19".

La Guía está basada en [FHIR Versión R4](http://hl7.org/fhir/R4/index.html) y define los requerimientos mínimos de conformidad para que cada estado miembro pueda reportar individualmente a OPS los ESAVI de cualquier vacuna, priorizando aquellas contra COVID-19.

La guía de implementación se inspira en el enfoque de las [Guías SMART](https://www.who.int/teams/digital-health-and-innovation/smart-guidelines) de la Organización Mundial de la Salud para ayudar a los países a integrar los datos globales y las recomendaciones de salud de la OMS/OPS en los sistemas digitales de manera precisa y consistente.

Estos perfiles son la base para futuras guías de implementación y fueron producidos en colaboración entre OPS y la Asociación HL7 Argentina.

## Cómo leer esta guía

Esta guía está dividida en varias secciones que se muestran en la barra de menú ubicada en la parte superior de la página
- [Inicio](index.html): Provee la introducción acerca de esta guía.
- [Objetivos](objetivos.html): Describe los objetivos estratégicos y de interoperabilidad
- [Datos Generales](generalidades.html): Aspectos Generales respecto al proyecto y la Guía
- [Actores y Casos de Uso](actores_CasosUso.html): Definición de los Casos de Uso.
- [Operaciones FHIR](operaciones.html): Operaciones Rest usadas para el proyecto.
- [Artefactos](artifacts.html): Estas páginas proveen descripciones detalladas y definiciones formales para los objetos FHIR presentes en la guía.    
- [Mapeos](descargas.html): Desarrollo de los Mapeos entre DHIS2 y E2B XML(R3) con FHIR.
- [Uso](uso_como_llenar_esta_guia.html): Explica las interpretaciones e intenciones de la semántica de los recursos.
- [Seguridad](seguridad.html): Explica los formatos de seguridad para la conexión con el Sistema Regional.    
- [Descargas](descargas.html): Agrupa las descargas disponibles como perfiles, paquete de validación, ejemplos, etc.

## Del modelo lógico a la implementación
El modelo lógico está basado en las recomendaciones del [Manual Regional de Vigilancia de ESAVI](https://iris.paho.org/handle/10665.2/55384) para el reporte individual de casos, donde cada estado miembro informa hacia el Sistema Regional de Vacunación Segura de la OPS. Como paso previo se estructuró un Diccionario de Datos para Notificación de ESAVI ES en formato tabular. Este modelo lógico se encuentra mapeado a un recurso [Questionnaire] (https://build.fhir.org/ig/PanAmericanHealthOrganization/OPS-ESAVI/StructureDefinition-ESAVIQuestionnaireResponse.html) 

## Requerimientos de Conformidad

Los requerimientos de conformidad describen las expectativas sobre la funcionalidad de las aplicaciones servidor/cliente, identificando los perfiles específicos y las interacciones que deben implementar. Los perfiles individuales identifican los requerimientos estructurales y terminológicos. Las definiciones de parámetros de búsqueda y operaciones especifican cómo son implementados por los servidores.

# Definiciones
## ESAVI 
Se denomina ESAVI (Eventos Supuestamente Atribuibles a Vacunación o Inmunización, también conocidos como Eventos Adversos Posteriores a Vacunación, EAPV, o Adverse Event Following Immunization, AEFI en inglés) como cualquier situación de salud (signo, hallazgo anormal de laboratorio, síntoma o enfermedad) desfavorable y no intencionada que ocurra luego de la vacunación o inmunización y que no necesariamente tiene una relación causal con el proceso de vacunación o con la vacuna. 

La vigilancia de ESAVI es uno de los elementos más importantes para garantizar que las vacunas sean seguras y que se administren de manera segura. Las reacciones graves posteriores a la inmunización son muy poco frecuentes, por lo que su detección exige agrupar datos de ESAVI de múltiples países en bases de datos regionales y/o globales.
Durante la pandemia de COVID-19, el proceso de detección y reporte de datos de seguridad de vacunas ha resultado ser un desafío, especialmente en las Américas.
En noviembre de 2020, el Grupo Técnico Asesor (TAG) de la OPS sobre Enfermedades Prevenibles por Vacunación, apoya el establecimiento de un sistema de vigilancia regional para el control de la seguridad de las vacunas contra COVID-19.
Esto refleja la alta prioridad que tiene, para la región de las Américas, el fortalecimiento de la vigilancia de los ESAVI, tanto para las vacunas contra COVID-19 como en general. Entendiendo al sistema de información, desde un abordaje holístico de la transformación digital, como una pieza clave para dicho fortalecimiento en los niveles nacional, regional y global.

Uno de los desafíos más importantes es la estandarización tanto de las bases de datos como de las codificaciones incluidas y los mecanismos para compartir y agregar toda la información en la Base Regional de ESAVI de OPS, con el objetivo de minimizar la carga de trabajo que se requiere por parte de los países.

## Situación actual
Según la encuesta de sistemas de información realizada por OPS en 2020, el 83% de los países de la región NO tenían sistemas de información lo suficientemente maduros para la vigilancia de ESAVI. Un grupo de países basaba la vigilancia en formularios en papel, y los agregaba en planillas de cálculo. En otros se encontraron sistemas con datos fragmentados en múltiples instituciones nacionales y una ausencia en la implementación de estándares para el registro preciso de las vacunas involucradas y de los eventos adversos asociados.
La estrategia de la OPS se basó en apoyar a los países según su nivel de desarrollo, buscando fortalecer progresivamente sus capacidades y promoviendo una estrategia de digitalización de todas las actividades de la vigilancia. Esto incluye promover la adopción nacional de sistemas como DHIS2 (District Health Information System 2), un software open-source que fue adaptado para permitir el seguimiento de casos de ESAVI.

## Racionalidad del uso de FHIR en ESAVI
En este contexto, surge la propuesta de adoptar FHIR (Fast Healthcare Interoperability Resources), el estándar abierto de intercambio de datos en salud creado por HL7 Internacional. Países como Estados Unidos, Canadá, Argentina, Brasil, Chile, entre otros, ya se encuentran utilizándolo como estándar de intercambio de datos en salud pública. La Organización Mundial de la Salud promueve FHIR como estándar para estructurar los certificados digitales de vacunación contra la COVID-19, entre otros casos de uso.
