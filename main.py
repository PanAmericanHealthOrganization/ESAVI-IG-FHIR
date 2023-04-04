# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
import requests
import os
import json
import urllib.parse

# Cambiar variable URL_BASE #
# URL_BASE = "http://172.27.70.229:8080/fhir"
# URL_BASE = "https://fhir.cens.cl/fhir"
# URL_BASE = "http://hapi.fhir.org/baseR4"
URL_BASE = "http://fhirserver.hl7fundamentals.org/fhir"

carpeta_json = 'nada'
# path_to_st = 'StructureDefinitions/StructureDefinition'
# path_to_vs = 'StructureDefinitions/CS'
# path_to_cs = 'StructureDefinitions/VS'
# path_to_ext = 'StructureDefinitions/Extension'
headers = {
    'ContentType': 'application/fhir+json',
    'Accept': 'application/fhir+json'
}


def cargador(path):
    json_files = [pos_json for pos_json in os.listdir(
        path) if pos_json.endswith('.json')]
    json_files.sort()
    for file in json_files:
        with open(path + '/' + file,  encoding="utf8") as json_file:
            data = json.load(json_file)
            resource_id = data['id']
            resource_type = data['resourceType']
            url = '%s/%s/%s' % (URL_BASE, resource_type, resource_id)
            res = requests.put(url, json=data, headers=headers)
            if res.status_code not in [200, 201]:
                print(res.json())
            else:
                print('agregado: ' + url)


"""def eliminar(path):
    json_files = [pos_json for pos_json in os.listdir(
        path) if pos_json.endswith('.json')]
    json_files.sort()
    for file in json_files:
        with open(path + '/' + file) as json_file:
            data = json.load(json_file)
            resource_id = data['id']
            resource_type = data['resourceType']
            url = '%s/%s/%s' % (URL_BASE, resource_type, resource_id)
            res = requests.delete(url, headers=headers)
            if res.status_code not in [200, 204]:
                print('error al borrar: ' + url)
            else:
                print('borrado terminado')
"""

# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    cargador(carpeta_json)
    # cargador(path_to_st)
    # cargador(path_to_ext)
    # cargador(path_to_vs)
    # cargador(path_to_cs)
    # eliminar(path_to_st)
    # eliminar(path_to_vscs)

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
