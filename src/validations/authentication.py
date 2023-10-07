# -*- encoding: utf-8 -*-

import requests

class Authentication:

    def __init__(self, server: str, client_id: str, client_secret: str):
        self.server = server
        self.client_id = client_id
        self.client_secret = client_secret

    def get_token(self) -> str:
        payload = {
            "client_id": self.client_id,
            "client_secret": self.client_secret,
            "grant_type": "client_credentials"
        }
        response = requests.post(self.server, data=payload)
        return response.json()["access_token"]
    