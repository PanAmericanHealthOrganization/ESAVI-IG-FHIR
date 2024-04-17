#!/bin/bash


#curl --location 'http://192.168.3.4:8086/fhir/CodeSystem/' \
#--header 'Content-Type: application/json' \
#--data '@/Users/jorgemansilla/IGs/OPS-ESAVI/output/package/CodeSystem-ComplicacionEmbarazoCS.json'

# Define la URL del servidor y la ruta del directorio
SERVER_URL="http://192.168.3.4:8086/fhir/CodeSystem/"
DIRECTORY_PATH="/Users/jorgemansilla/IGs/OPS-ESAVI/output/package/cs/"

# Recorre todos los archivos JSON en el directorio
for FILE in $DIRECTORY_PATH*.json
do
  # Usa curl para enviar cada archivo al servidor
  curl --location "$SERVER_URL" --header 'Content-Type: application/json' --data "@$FILE"
done


SERVER_URL="http://192.168.3.4:8086/fhir/ValueSet/"
DIRECTORY_PATH="/Users/jorgemansilla/IGs/OPS-ESAVI/output/package/vs/"

# Recorre todos los archivos JSON en el directorio
for FILE in $DIRECTORY_PATH*.json
do
  # Usa curl para enviar cada archivo al servidor
  curl --location "$SERVER_URL" --header 'Content-Type: application/json' --data "@$FILE"
done

curl --location 'http://192.168.3.4:8086/fhir/Questionnaire/' \
--header 'Content-Type: application/json' \
--data '@/Users/jorgemansilla/IGs/OPS-ESAVI/output/package/example/Questionnaire-CuestionarioESAVI.json'

curl --location 'http://192.168.3.4:8086/fhir/StructureDefinition/' \
--header 'Content-Type: application/json' \
--data '@/Users/jorgemansilla/IGs/OPS-ESAVI/output/package/StructureDefinition-ESAVIQuestionnaireResponse.json'