# Terminologías externas

Esta página proporciona detalles sobre las terminologías utilizadas en la guía ESAVI FHIR de OPS, pero que son propiedad y están regidas por otras organizaciones externas a HL7.

Los implementadores y evaluadores que utilicen o hagan referencia a cualquiera de estos code systems para cualquier artefacto de contenido terminológico en una especificación HL7 **deberán** cumplir con los requisitos de licencia específicos para la terminología relevante. Las licencias de terminología **deberán** obtenerse del propietario del sistema de códigos para cada sistema de códigos y/u otro artefacto específico utilizado. Es responsabilidad exclusiva de cada organización que implemente o pruebe cualquier especificación HL7 para garantizar que sus implementaciones cumplan con los requisitos de licencia de cada terminología externa utilizada.

Más información sobre [Terminologías externas](https://confluence.hl7.org/display/TA/External+Terminologies+-+Information)


## WHODrug

WHODrug es una base de datos estándar de referencia internacional sobre medicamentos, desarrollada y mantenida por el Centro de Monitoreo de Uppsala (UMC). WHODrug facilita el registro, análisis e intercambio de información sobre medicamentos, principalmente  para registrar y analizar datos de seguridad y eficacia de medicamentos en ensayos clínicos, estudios postcomercialización y actividades de farmacovigilancia. WHODrug proporciona una terminología uniforme y estructurada para describir los ingredientes activos de los medicamentos, sus formas farmacéuticas, rutas de administración y otras características relevantes. Esta herramienta facilita el intercambio de información entre diferentes organizaciones y países, mejorando la calidad de los datos y la comparabilidad de los resultados.

WHODrug incluye diferentes identificadores dentro de su estructura. Para la presente guía ESAVI FHIR se puede incluir alguno de los siguientes, haciendo referencia a los codesystems correspondientes:

1. **Drug Code:** el Código de Medicamento identifica de forma única el nombre de una droga y su(s) sustancia(s) activa(s), o un término general. Es una agregación del Número de Registro de Medicamento (DrugRecNo), el Número de Secuencia 1 (Seq1) y el Número de Secuencia 2 (Seq2). Al estar formado por tres códigos tiene significado per se y puede ser utilizado para diferenciar o agrupar medicamentos por distintos criterios. Posee un Drug name asociado, que puede ser usado como descripción.
2. **Medicinal Product Identifier (MPID) o identificador del producto medicinal**, es un número de serie sin significado intrínseco que identifica de forma única una combinación específica de los siguientes datos:
    1. Nombre del medicamento (Drug name)
    2. Especificador de nombre (Name Specifier)
    3. Sustancia activa (Active substance)
    4. País de ventas (Country of sales)
    5. Titular de la autorización de comercialización (Marketing authorisation holder)
    6. Forma farmacéutica (Pharmaceutical form)
    7. Concentración (Strength)

Como WHODrug no tiene fachada FHIR oficial, se brindan las siguientes URI para cada codesystem:

Drug Code URI: XXX

MPID URI: XXX

URI retirado: [http://terminology.hl7.org/CodeSystem/W1-W2](http://terminology.hl7.org/CodeSystem/W1-W2) 

Más info en:

[http://build.fhir.org/ig/HL7/UTG/CodeSystem-W1-W2.html](http://build.fhir.org/ig/HL7/UTG/CodeSystem-W1-W2.html) (retirado)

[https://who-umc.org/whodrug/whodrug-global/implementing-whodrug/](https://who-umc.org/whodrug/whodrug-global/implementing-whodrug/) 


## MedDRA

MedDRA es una terminología médica internacional estandarizada multilingüe que se puede utilizar para la comunicación reglamentaria y la evaluación de datos relacionados con medicamentos para uso humano. MedDRA está diseñado para su uso en el registro, la documentación y el seguimiento de la seguridad de los medicamentos en todas las fases del ciclo de desarrollo (es decir, desde los ensayos clínicos hasta la vigilancia posterior a la comercialización).

MedDRA está estructurado como una jerarquía de cinco niveles. Las clases de órganos del sistema (SOC) son los términos más amplios (p. ej., trastornos cardíacos, investigaciones). El nivel más bajo de la terminología es el nivel Término de nivel más bajo (LLT). Hay 26 SOC y más de 60 000 LLT.

MedDRA fue desarrollado como una iniciativa de ICH y es mantenido y distribuido por la Organización de Servicios de Apoyo y Mantenimiento de MedDRA (MSSO).

Versiones: las versiones se publican dos veces al año y se identifican con 2 números separados por un punto decimal (por ejemplo, 7.0, 7.1, 8.0 y 8.1). Las versiones .0 pueden contener cambios en la jerarquía. Las versiones .1 solo contendrán adiciones, movimientos y modificaciones de términos de concepto médico (Términos preferidos, PT) y términos de nivel de codificación (Términos de nivel más bajo, LLT).

Conceptos: los conceptos se representan mediante un código MedDRA y un nombre de término MedDRA. El código MedDRA es un código numérico de ocho dígitos. Los códigos MedDRA son únicos y nunca se reutilizan. El nombre del término MedDRA es un campo alfanumérico de 100 caracteres que se utiliza para describir el concepto o término.

Más información en: 

[https://confluence.hl7.org/display/TA/MedDRA](https://confluence.hl7.org/display/TA/MedDRA) 

[https://terminology.hl7.org/CodeSystem-mdr.html](https://terminology.hl7.org/CodeSystem-mdr.html) 

Canonical URI: [https://terminology.hl7.org/CodeSystem-mdr.html](https://terminology.hl7.org/CodeSystem-mdr.html) o [https://www.meddra.org](https://www.meddra.org/) ??


## ICD 11

La Clasificación Internacional de Enfermedades y Problemas de Salud Relacionados (CIE, o ICD en inglés) en su versión 11, es una herramienta para registrar, informar y agrupar condiciones y factores que influyen en la salud. Contiene categorías para enfermedades, condiciones relacionadas con la salud y causas externas de enfermedad o muerte. El propósito de la CIE es permitir el registro, análisis, interpretación y comparación sistemáticos de los datos de mortalidad y morbilidad recopilados en diferentes países o áreas y en diferentes momentos. La CIE se utiliza para traducir diagnósticos de enfermedades y otros problemas de salud en un código alfanumérico, que permite el almacenamiento, la recuperación y el análisis de los datos. La CIE se ha convertido en la clasificación diagnóstica estándar internacional para todos los fines epidemiológicos generales y de gestión de la salud. Estos incluyen el análisis de la situación general de salud de los grupos de población, el seguimiento de la incidencia y prevalencia de enfermedades y otros problemas de salud en relación con otras variables, como las características y circunstancias de los individuos afectados. ICD también es adecuado para estudios de aspectos financieros de un sistema de salud, como la facturación o la asignación de recursos. Incluye códigos para medicamentos y vacunas, independientemente de su autorización por parte de la OMS.

Más info en: [https://confluence.hl7.org/pages/viewpage.action?pageId=97481986](https://confluence.hl7.org/pages/viewpage.action?pageId=97481986) 

Foundation Canonical URL:  [http://id.who.int/icd/entity](http://id.who.int/icd/entity)

Mortality and Morbidity Statistics (MMS) Canonical URL: [http://id.who.int/icd/release/11/mms](http://id.who.int/icd/release/11/mms) (Updated 20210524)


## ICD 10

La Clasificación Internacional de Enfermedades en su versión 10 es un sistema de categorías mutuamente excluyentes a las cuales se asignan enfermedades, lesiones y motivos de consulta de acuerdo con criterios previamente establecidos. La clasificación abarca todo el rango de enfermedades existentes en la terminología médica (nomenclatura internacional de enfermedades).

No incluye medicamentos.

Más info en:

[https://terminology.hl7.org/ICD.html](https://terminology.hl7.org/ICD.html) 

[https://terminology.hl7.org/CodeSystem-icd10.html](https://terminology.hl7.org/CodeSystem-icd10.html) 

Canonical URI: [http://hl7.org/fhir/sid/icd-10](http://hl7.org/fhir/sid/icd-10) 


## SNOMED CT

SNOMED CT es una terminología básica de atención médica clínica que contiene conceptos con significados únicos y definiciones basadas en lógica formal organizadas en jerarquías.

La edición internacional incluye el contenido fundamental de SNOMED CT del cual todos los demás módulos de SNOMED CT deben tener dependencias.

SNOMED International identifica actualmente el |módulo central de SNOMED CT (concepto central de metadatos)| como módulo de enfoque para la edición internacional. Sólo el |módulo de componentes del modelo SNOMED CT| se especifica actualmente como una dependencia.

La Edición Internacional puede complementarse con extensiones, mantenidas y distribuidas por Miembros y Afiliados, para cumplir con requisitos adicionales nacionales, locales y organizacionales.

Más info en:

[https://confluence.hl7.org/display/TA/SNOMED+CT+International+Edition](https://confluence.hl7.org/display/TA/SNOMED+CT+International+Edition) 

[https://terminology.hl7.org/SNOMEDCT.html](https://terminology.hl7.org/SNOMEDCT.html) 

Canonical URI:  [http://snomed.info/sct](http://snomed.info/sct) 


## ATC

La Clasificación Anatómica Terapéutica Química (ATC) es una clasificación jerárquica de 5 niveles de principios activos utilizados en medicamentos. Está diseñado para servir como una herramienta para el seguimiento de la utilización de medicamentos y la investigación con el fin de mejorar la calidad del uso de medicamentos. Un componente de esto es la presentación y comparación de estadísticas de consumo de drogas a nivel internacional y otros. El sistema tiene catorce grupos anatómicos/farmacológicos principales o 1ros niveles. Cada grupo principal de ATC se divide en 2.º nivel, que pueden ser grupos farmacológicos o terapéuticos. Los niveles 3 y 4 son subgrupos químicos, farmacológicos o terapéuticos y el nivel 5 es la sustancia química. Los niveles 2, 3 y 4 se utilizan a menudo para identificar subgrupos farmacológicos cuando se considera más apropiado que los subgrupos terapéuticos o químicos.

Más info en: [https://confluence.hl7.org/display/TA/Anatomical+Therapeutic+Chemical+%28ATC%29+Classification](https://confluence.hl7.org/display/TA/Anatomical+Therapeutic+Chemical+%28ATC%29+Classification) 

[https://terminology.hl7.org/CodeSystem-v3-WC.html](https://terminology.hl7.org/CodeSystem-v3-WC.html) 

Canonical URI: [http://www.whocc.no/atc](http://www.whocc.no/atc) 

