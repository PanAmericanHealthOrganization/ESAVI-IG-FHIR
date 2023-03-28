# This is a sample Python script.
import sys

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.
import requests
import os
import json
import argparse
import urllib.parse


parser = argparse.ArgumentParser()
parser.add_argument("-p", "--pathtodefinitions",
                    help="Ruta a Definiciones", required=True)
parser.add_argument("-b", "--baseurl",
                    help="Base Url del servidor FHIR", required=True)
parser.add_argument("-o",
                    "--operation",
                    choices=['delete', 'create', 'verify'],
                    help="Operación",
                    default='create',
                    required=True)
args = parser.parse_args()

headers = {
    'ContentType': 'application/fhir+json',
    'Accept': 'application/fhir+json'
}


def cargador(path, base):
    json_files = [pos_json for pos_json in os.listdir(
        path) if pos_json.endswith('.json')]
    json_files.sort()
    for file in json_files:
        with open(path + '/' + file, encoding="utf8") as json_file:
            data = json.load(json_file)
            resource_id = data['id']
            resource_type = data['resourceType']
            url = '%s/%s/%s' % (base, resource_type, resource_id)
            res = requests.put(url, json=data, headers=headers)
            if res.status_code not in [200, 201]:
                print(res.json())
            else:
                print('Agregado: ' + url)
    print('Carga terminada')


def eliminar(path, base):
    json_files = [pos_json for pos_json in os.listdir(
        path) if pos_json.endswith('.json')]
    json_files.sort()
    for file in json_files:
        with open(path + '/' + file, encoding="utf8") as json_file:
            data = json.load(json_file)
            resource_id = data['id']
            resource_type = data['resourceType']
            url = '%s/%s/%s' % (base, resource_type, resource_id)
            res = requests.delete(url, headers=headers)
            if res.status_code == 404:
                print('no existe recurso: ' + url)
            elif res.status_code not in [200, 204]:
                print('error al borrar: ' + url)
    print('Borrado terminado')


def verify(path, base):
    json_files = [pos_json for pos_json in os.listdir(
        path) if pos_json.endswith('.json')]
    json_files.sort()
    for file in json_files:
        with open(path + '/' + file, encoding="utf8") as json_file:
            data = json.load(json_file)
            resource_id = data['id']
            resource_type = data['resourceType']
            url = '%s/%s/%s' % (base, resource_type, resource_id)
            res = requests.get(url, headers=headers)
            if res.status_code == 404:
                print('No existe recurso: ' + url)
            elif res.status_code == 200:
                print('Existe Recurso: ' + url)
    print('Verificación terminada')


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    if args.operation == 'create':
        cargador(args.pathtodefinitions, args.baseurl)
    elif args.operation == 'delete':
        eliminar(args.pathtodefinitions, args.baseurl)
    elif args.operation == 'verify':
        verify(args.pathtodefinitions, args.baseurl)


# See PyCharm help at https://www.jetbrains.com/help/pycharm/
