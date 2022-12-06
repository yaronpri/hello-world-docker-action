from azure.identity import ManagedIdentityCredential

audience = "https://management.azure.com"
container_audience = "https://containerregistry.azure.net"

cred = ManagedIdentityCredential()
aad_access_token = cred.get_token(container_audience)

print( aad_access_token.token)