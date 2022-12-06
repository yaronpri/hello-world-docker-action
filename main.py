import os
from azure.identity import ManagedIdentityCredential


audience = "https://management.azure.com"
container_audience = "https://containerregistry.azure.net"

cred = ManagedIdentityCredential()
aad_access_token = cred.get_token(container_audience)

os.environ.set("OUTPUT_TOKEN", aad_access_token.token)
