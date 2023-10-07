import unittest
import sys
sys.path.append('..')

from src.validations.authentication import Authentication

class TestAuthentication(unittest.TestCase):

    server: str = "https://paho-keycloak.azurewebsites.net/auth/realms/paho-realm/protocol/openid-connect/token"
    client_id: str = "ArgentinaClient"
    client_secret: str = "khiHParkGP42SMtUEhkKfq1gXGAlmFi2"

    def test_get_token(self):
        auth = Authentication(self.server, self.client_id, self.client_secret)
        token = auth.get_token()
        self.assertIsNotNone(token)


if __name__ == '__main__':
    unittest.main()
