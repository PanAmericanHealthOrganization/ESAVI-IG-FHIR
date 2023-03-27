#!/bin/bash
for f in CodeSystem*.json
do
curl -d @"$f" https://lforms-fhir.nlm.nih.gov/baseR4/CodeSystem -H "Content-Type: application/json"
done
#
for f in ValueSet*.json
do
curl -d @"$f" https://lforms-fhir.nlm.nih.gov/baseR4/ValueSet -H "Content-Type: application/json"
done

for f in StructureDefinition*.json
do curl -d @"$f" https://lforms-fhir.nlm.nih.gov/baseR4/StructureDefinition -H "Content-Type: application/json"
done