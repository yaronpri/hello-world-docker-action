import os
from azure.identity import ManagedIdentityCredential
from json import loads

audience = "https://management.azure.com"
container_audience = "https://containerregistry.azure.net"

cred = ManagedIdentityCredential()
token = cred.get_token(container_audience)

print(token)