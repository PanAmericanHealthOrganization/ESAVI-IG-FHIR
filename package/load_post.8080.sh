#!/bin/bash
#SERVER1="http://192.168.3.4"
SERVER1="localhost"
PORT1="8080"
PATH_FHIR="/fhir/CodeSystem/"

## Define la URL del servidor y la ruta del directorio
SERVER_URL="${SERVER1}:${PORT1}/fhir/CodeSystem/"
DIRECTORY_PATH="/Users/jorgemansilla/IGs/OPS-ESAVI/package/cs/"
#
## Recorre todos los archivos JSON en el directorio
for FILE in $DIRECTORY_PATH*.json
do
  ID=$(jq -r '.id' "$FILE")
  echo $SERVER_URL$ID
#  # Usa curl para enviar cada archivo al servidor
  curl --location --request PUT "$SERVER_URL$ID" --header 'Content-Type: application/json' --data "@$FILE"
done
#

SERVER_URL="${SERVER1}:${PORT1}/fhir/ValueSet/"
DIRECTORY_PATH="/Users/jorgemansilla/IGs/OPS-ESAVI/package/vs/"
# Recorre todos los archivos JSON en el directorio
for FILE in $DIRECTORY_PATH*.json
do
  ID=$(jq -r '.id' "$FILE")
  echo $SERVER_URL$ID
  # Usa curl para enviar cada archivo al servidor
  curl --location --request PUT "$SERVER_URL$ID" --header 'Content-Type: application/json' --data "@$FILE"
done

curl --location --request PUT "${SERVER1}:${PORT1}/fhir/Questionnaire/CuestionarioESAVI" --header 'Content-Type: application/json' --data '@/Users/jorgemansilla/IGs/OPS-ESAVI/package/example/Questionnaire-CuestionarioESAVI.json'
curl --location --request PUT "${SERVER1}:${PORT1}/fhir/StructureDefinition/ESAVIQuestionnaireResponse" --header 'Content-Type: application/json' --data '@/Users/jorgemansilla/IGs/OPS-ESAVI/package/StructureDefinition-ESAVIQuestionnaireResponse.json'

curl --location --request PUT localhost:8080/fhir/Questionnaire/CuestionarioESAVI --header 'Content-Type: application/json' --data '@/Users/jorgemansilla/IGs/OPS-ESAVI/package/example/Questionnaire-CuestionarioESAVI.json'
curl --location --request PUT localhost:8080/fhir/StructureDefinition/ESAVIQuestionnaireResponse --header 'Content-Type: application/json' --data '@/Users/jorgemansilla/IGs/OPS-ESAVI/package/StructureDefinition-ESAVIQuestionnaireResponse.json'
