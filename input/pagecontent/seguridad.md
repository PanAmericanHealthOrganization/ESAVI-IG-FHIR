### Autorización/Autenticación
El centro regional implementa seguridad basada en oAuth2 con tokens, por lo cual la primera llamada de las aplicaciones autorizadas debe realizarse a la url que provee el token ([auth]).

{%include diagrama_autenticacion.svg%} 

### Registro de Aplicaciones

Previo al uso del servicio de autenticación, la aplicación que realiza el pedido debe solicitar a los administradores del centro regional :

Registrar una URI fija para la aplicación en el Centro Regional
En el caso de utilizar firma digital: Registrar una clave pública RSA (SHA-256)
Una vez registrada la aplicación, se establece una relación de confianza entre la aplicación y el centro regional, esto es, la aplicación se considera ‘pre-autorizada’ para registrar en AEFI


El Centro Regional asignará al cliente un identificador denominado client_id

En tiempo de ejecución, el servicio debe obtener un token de acceso para poder acceder a la información. 
Estos tokens de acceso pueden ser generados automáticamente, sin necesidad de intervención humana, con una expiración recomendada de 15 minutos.   

### Generación del Token de Autenticación

[SecretWord] Palabra clave otorgada por el centro regional
[urlAuth] URL de Autorización

#### Paso 1: Generación de Token JWT

La aplicación cliente debe generar un token JWT firmado con la palabra clave otorgada por la DNSIS con la siguiente información


Ejemplo de Código JS


```
function CreateJWTToken()
{
   var jwt =   require('jsonwebtoken');
   c       =   authc.authConfig();
   var myTokenContent=
   {
       iss:    c.iss,
       iat:    Date.now(),
       exp:    Date.now()  +  6000000 ,
       aud:    c.aud,
       sub:    c.sub,
       name:   c.name,
       ident:  c.ident,
       role:   c.role
   }
   var token = jwt.sign(myTokenContent, c.secretWord);
   return token;
}
```


### Paso 2 : Post AuthorizationRequest

La aplicación cliente debe realizar un POST a [urlAuth] del JSON del AuthorizationRequest

AuthorizationRequest
<table>
  <tr>
   <td>
  <code>elemento</code>
   </td>
   <td><code>contenido</code>
   </td>
   <td><code>ejemplo</code>
   </td>
  </tr>
  <tr>
   <td><code>grantType</code>
   </td>
   <td><code>clientCredentials</code>
   </td>
   <td><code>valor fijo</code>
   </td>
  </tr>
  <tr>
   <td><code>scope</code>
   </td>
   <td><code>VER Tabla de Scopes</code>
   </td>
   <td><code>Bundle.write</code>
   </td>
  </tr>
  <tr>
   <td><code>clientAssertionType</code>
   </td>
   <td><code>urn:ietf:params:oauth:client-assertion-type:jwt-bearer</code>
   </td>
   <td><code>valor fijo</code>
   </td>
  </tr>
  <tr>
   <td><code>clientAssertion</code>
   </td>
   <td><code>[token jwt creado en el paso 1]</code>
   </td>
   <td>
   </td>
  </tr>
</table>

### Tabla de Scopes
<table>
  <tr>
   <td>
   <code>Operación</code>
   </td>
   <td><code>Scopes</code>
   </td>
  </tr>
  <tr>
   <td><code>Registro AEFI</code>
   </td>
   <td><code>Bundle/*.write</code>
   </td>
  </tr>
  <tr>
   <td><code>Consulta Terminologica</code>
   </td>
   <td><code>ValueSet/*.read,CodeSystem/*.read,ConceptMap/*.read</code>
   </td>
  </tr>
  
</table>



### AuthorizationRequest: Ejemplo de Código JS

```
   tokenInicial=CreateJWTToken();
   var authRequest={
       "grantType": "client_credentials",
       "scope": "Bundle/*.write",
       "clientAssertionType": "urn:ietf:params:oauth:client-assertion-type:jwt-bearer",
       "clientAssertion": tokenInicial
   };
```

### Respuesta a AuthorizationRequest

La respuesta será un objeto JSON con las siguientes propiedades 
AuthorizationResponse


<table>
  <tr>
   <td>
<code>elemento</code>
   </td>
   <td><code>descripción</code>
   </td>
   <td><code>detalles</code>
   </td>
  </tr>
  <tr>
   <td><code>scope</code>
   </td>
   <td><code>Nivel de Acceso Otorgado</code>
   </td>
   <td><code>Ver tabla scopes</code>
   </td>
  </tr>
  <tr>
   <td><code>access_token</code>
   </td>
   <td><code>Token Otorgado por el Servidor</code>
   </td>
   <td><code>Este es el token que debe incluir en todas las solicitudes al CER</code>
   </td>
  </tr>
  <tr>
   <td><code>expires_in</code>
   </td>
   <td><code>Cantidad de segundos de expiración del token</code>
   </td>
   <td><code>Se sugiere 900 (quince minutos)</code>
   </td>
  </tr>
  <tr>
   <td><code>token_type</code>
   </td>
   <td><code>Tipo de Token</code>
   </td>
   <td><code>Valor fijo: bearer</code>
   </td>
  </tr>
</table>



Ejemplo de Respuesta JSON

```

{ "access_token": "m7rt6i7s9nuxkjvi8vsx", "token_type": "bearer", "expires_in": 900, "scope": "Bundle/write" }

```

###  Inclusión del Token en el Encabezado de las Solicitudes HTTPS

En todas las invocaciones al Centro Regional debe incluirse el token obtenido como encabezado (header) de la solicitud HTTPS.

Nombre: Authorization Valor: Bearer: [access_token]


El token será validado por el Centro Regional 