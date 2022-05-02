# Objetivos
## ESAVI (pregunta: no deberia estar en el apartado de introduccion?)
Se denomina ESAVI (Eventos Supuestamente Atribuibles a Vacunación o Inmunización, también conocidos como Eventos Adversos Posteriores a Vacunación, EAPV, o Adverse Event Following Immunization, AEFI en inglés) como cualquier situación de salud (signo, hallazgo anormal de laboratorio, síntoma o enfermedad) desfavorable y no intencionada que ocurra luego de la vacunación o inmunización y que no necesariamente tiene una relación causal con el proceso de vacunación o con la vacuna. (pregunta: se referencia bibliograficamente? si es asi, se utilizan notas al pie? o se referencia entre paréntesis [1])

La vigilancia de ESAVI es uno de los elementos más importantes para garantizar que las vacunas sean seguras y que se administren de manera segura. Las reacciones graves posteriores a la inmunización son muy poco frecuentes, por lo que su detección exige agrupar datos de ESAVI de múltiples países en bases de datos regionales y/o globales.
Durante la pandemia de COVID-19, el proceso de detección y reporte de datos de seguridad de vacunas ha resultado ser un desafío, especialmente en las Américas.
En noviembre de 2020, el Grupo Técnico Asesor (TAG) de la OPS sobre Enfermedades Prevenibles por Vacunación, apoya el establecimiento de un sistema de vigilancia regional para el control de la seguridad de las vacunas contra COVID-19.
Esto refleja la alta prioridad que tiene, para la región de las Américas, el fortalecimiento de la vigilancia de los ESAVI, tanto para las vacunas contra COVID-19 como en general. Entendiendo al sistema de información, desde un abordaje holístico de la transformación digital, como una pieza clave para dicho fortalecimiento en los niveles nacional, regional y global.

Uno de los desafíos más importantes es la estandarización tanto de las bases de datos como de las codificaciones incluidas y los mecanismos para compartir y agregar toda la información en la Base Regional de ESAVI de OPS, con el objetivo de minimizar la carga de trabajo que se requiere por parte de los países.

## Situación actual

Según la encuesta de sistemas de información realizada por OPS en 2020, el 83% de los países de la región NO tenían sistemas de información lo suficientemente maduros para la vigilancia de ESAVI. Un grupo de países basaba la vigilancia en formularios en papel, y los agregaba en planillas de cálculo. En otros se encontraron sistemas con datos fragmentados en múltiples instituciones nacionales y una ausencia en la implementación de estándares para el registro preciso de las vacunas involucradas y de los eventos adversos asociados.
La estrategia de la OPS se basó en apoyar a los países según su nivel de desarrollo, buscando fortalecer progresivamente sus capacidades y promoviendo una estrategia de digitalización de todas las actividades de la vigilancia. Esto incluye promover la adopción nacional de sistemas como DHIS2 (District Health Information System 2), un software open-source que fue adaptado para permitir el seguimiento de casos de ESAVI.

E2B XML y beneficios y limitaciones de su uso. Complementariedad de FHIR

## Racionalidad del uso de FHIR en ESAVI
En este contexto, surge la propuesta de adoptar FHIR (Fast Healthcare Interoperability Resources), el estándar abierto de intercambio de datos en salud creado por HL7 Internacional. Países como Estados Unidos, Canadá, Argentina, Brasil, Chile, entre otros, ya se encuentran utilizándolo como estándar de intercambio de datos en salud pública. La Organización Mundial de la Salud promueve FHIR como estándar para estructurar los certificados digitales de vacunación contra la COVID-19, entre otros casos de uso.

Justificación del uso de FHIR en este caso de uso. Impacto potencial. Agrega variables que no están codificadas en E2B.
(Ver ppt)
El objetivo es facilitar el envío de datos sobre casos individuales y anonimizados de ESAVI desde cada país a la OPS de forma estandarizada y automatizada usando FHIR.
Cada uno de los elementos de la guía (artefactos) pueden ser reutilizados: LinkId, Valuesets, CodeSystems, Extensiones, ...
El perfil QuestionnaireResponse de ESAVI puede extenderse (sumando items faltantes) para crear guías locales que permitan su uso interno a nivel de cada país.
Externalidades/beneficios secundarios para otros casos de uso/actores. (adopción de estándares semánticos, sintácticos) "Si tengo FHIR puedo tener E2B?" Si ud quiere E2B tiene que llenar estos campos como mínimo (texto aparte).
## Business case de FHIR en Salud

(César y Jorge)

XXX
Sugerencia
- Implementación de un servidor FHIR en OPS, para el intercambio de datos de salud desde los países.
- Envío de datos sobre casos individuales y anonimizados de ESAVI desde cada país a la OPS de forma estandarizada y automatizada usando FHIR