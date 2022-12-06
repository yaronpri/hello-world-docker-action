import os
from azure.identity import ManagedIdentityCredential
from json import loads

acr_uri = os.environ.get("ACR_URI", "")
tenant_id = os.environ.get("TENANT_ID", "")

audience = "https://management.azure.com"
container_audience = "https://containerregistry.azure.net"

cred = ManagedIdentityCredential()
token = cred.get_token(container_audience)

print(token)