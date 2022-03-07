### Aspectos a Considerar
<br>

Esta sección describe definiciones, interpretaciones y requisitos importantes comunes a todos los actores del Core-CL, utilizados en esta guía. Los verbos de conformidad - **SHALL** *(Debe)*, **SHOULD** *(Debería Si Condición)*, **MAY** *(Podría)* - utilizados en esta guía se definen en las reglas de conformidad de FHIR.
<br>
### Definiciones Para comprender la Guía

Los perfiles contienen ciertos elementos que son importantes de comprender a la hora de usarlos para implementación
<br>

#### Vistas de los perfiles
<br>

Al revisar un perfil nos encontramos con la posibilidad de ver múltiples vistas de este.

##### Resumen de Texto

Esta vista permite ver un resumen del Perfil como de que recurso proviene elementos *mandatorios*, *eliminados* y que deben ser *soportados*. Además, resume las *extensiones* y *slices* generados en el diseño.
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="Resumen.png"> 
  <p>Visión Resumen de un Perfil</p>
</div>
<br>

##### Vista Diferencial 

Esta vista permite observar todos aquellos elmentos de un recurso que han sido modificadas o adecuadas para la realidad local. Esto incluye cambios como cardinalidad, explicaciones, MS o cualquier otro. Los elementos que se han mantenido tal cual en el recurso madre no figuran en esta vista. 

*Por razon de lenguaje, toda traducción de la descripción de un elemento se considera un cambio y figura en esta vista.*

<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="Diferencial.png"> 
  <p>Vista Diferencial de un Perfil</p>
</div>
<br>

##### Vista Snapshot 

En la vista de la **Snapshot Table**, todos los elementos obligatorios definidos para el perfil, y cualquier elemento obligatorio o que deba ser apoyado heredado de un perfil base, están marcados con una **S**. 



<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="Snap.png"> 
  <p>Vista Snapshot Table de un perfil</p>
</div>
<br>

##### Vista Snapshot (Must Support) 

En la vista **Snapshot Table (Must Support)**, todos los elementos presentados en la vista son obligatorios o deben ser compatibles con el perfil.


<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="SnapMS.png"> 
  <p>Vista Snapshot (Must Support) de un perfil</p>
</div>

### Definición del Conjunto Mínimo de Datos
<br>

El CMD definido para cada recurso se deja caracterizado por la bandera **MS** que significa *Must Support*. Este indicador determina que el sistema que recibe ese elemento de un recurso **DEBE** soportar el poder procesarlo y almacenarlo.

La existencia de un elemento o ruta con **MS** no determina la obligatoriedad de que un recurso generado contenga el dato. Esto se define mediante la obligatoriedad del dato lo cual **DEBE** estar especificado en la cardinalidad
<br>

<div align="center" >
  <img  style="border: 1px solid; color: black;" src="MS.png"> 
  <p>Definición de elementos Must Support</p>
</div>


### Cardinalidad
<br>

La cardinalidad define dos aspectos de un elemento dentro de un perfil 

* Cantidad de veces que un elemento se **Puede** repetir.
* La minima cantidad de veces que un elemento **Debe** ser decrito al generar un recurso

De esta forma nos encontramos con varias situaciones

~~~
 
 {0..1} : El elemento se Puede no ser descrito en el recurso (valor 0 inicial), pero de usarse Debe ser desarrollado solo una vez (1 final)
 {1..1} : El elemento es obligatorio pero solo se puede desplegar 1 sola vez
 {0..3} : Elemento no obligatorio que se puede repetir hasta 3 veces
 {1..3} : Elemento obligatorio que puede repetirse hasta 3 veces
 {1..*} : Elemento obligatorio que se puede repetir infintas veces

~~~

### Bindings
<br>

La vinculación obligatoria a una definición de conjunto de valores significa que SE **DEBE** utilizar uno de los códigos del conjunto de valores especificado. En el caso de +CodeableConcept+, no es válido utilizar sólo texto, pero se permiten múltiples codificaciones (traducciones).

La *vinculación extensible* a una definición de conjunto de valores significa que uno de los códigos del conjunto de valores especificado **SE DEBE USAR** si existe un concepto aplicable, pero si no existe un código adecuado en el conjunto de valores, se **PUEDE** proporcionar un código o códigos alternativos en su lugar. Para *CodeableConcept* se permiten múltiples codificaciones y esta regla se aplica a una de ellas. También en el caso de *CodeableConcept*, si sólo se dispone de texto, se puede utilizar sólo el texto.

<br>

<div align="center" >
  <img  style="border: 1px solid; color: black;" src="binding.png"> 
  <p>Definición de Vinculaciones en Códigos</p>
</div>
<br>


### Ejemplos
<br>

La guía desarrolla una serie de ejemplos por perfil desarrollado. Este ejemplo muestra en código como un sistema hace uso de un perfil para generar un recurso. Estos ejemplos se acceden desde la página ejemplos o desde la lengüeta ejemplo de cada perfil
<br>
<div align="center" >
  <img  style="border: 1px solid; color: black;" src="ejemplo.png"> 
  <p>Acceso a Ejemplo desde perfil</p>
</div>
<br>

<br>
Además cada ejemplo viene descrito en 4 formatos:
<br>

* Narrativa del ejemplo: Texto Legible
* Código en JSON
* Código en XML
* Código en Representación TTL
<br>

~~~
{
  "resourceType" : "Patient",
  "id" : "PacienteCL",
  "meta" : {
    "profile" : [
      "http://core.hl7chile.cl/StructureDefinition/CorePacienteCl"
    ]
  },
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative</b></p><p><b>identifier</b>: NNCH: 15.236.327-k (OFFICIAL)</p><p><b>active</b>: true</p><p><b>name</b>: Marietta María Ximena Rosales (OFFICIAL), Xime </p><p><b>telecom</b>: ph: 943561833(MOBILE), <a href=\"mailto:mariRosal@mimail.com\">mariRosal@mimail.com</a></p><p><b>gender</b>: female</p><p><b>birthDate</b>: 1983-03-24</p><p><b>address</b>: Av Los Chirimoyos, 32, casa 4 5101 5 152 (HOME)</p></div>"
  },
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "extension" : [
          {
            "url" : "http://core.hl7chile.cl/StructureDefinition/CodigoPaises",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "code" : "152",
                  "display" : "Chile"
                }
              ]
            }
          }
        ],
        "coding" : [
          {
            "code" : "NNCH"
          }
        ]
      },
      "value" : "15.236.327-k"
    }
  ],
  "active" : true,
  "name" : [
    {
      "use" : "official",
      "family" : "Rosales",
      "_family" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/humanname-mothers-family",
            "valueString" : "Bosh"
          }
        ]
      },
      "given" : [
        "Marietta",
        "María",
        "Ximena"
      ]
    },
    {
      "use" : "usual",
      "given" : [
        "Xime"
      ]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "943561833",
      "use" : "mobile"
    },
    {
      "system" : "email",
      "value" : "mariRosal@mimail.com",
      "use" : "work"
    }
  ],
  "gender" : "female",
  "birthDate" : "1983-03-24",
  "address" : [
    {
      "use" : "home",
      "line" : [
        "Av Los Chirimoyos, 32, casa 4"
      ],
      "city" : "5101",
      "district" : "051",
      "state" : "5",
      "country" : "152"
    }
  ]
}

~~~
