import os
import requests
from json import loads
from urllib.parse import urlencode
from azure.identity import ManagedIdentityCredential

#tenant = os.environ.get("TENANT_ID", "")
#service = os.environ.get("ACR_URI", "")
#service_full_uri = "https://{0}".format(service)

arm_audience = "https://management.azure.com"
container_audience = "https://containerregistry.azure.net"

cred = ManagedIdentityCredential()
aad_access_token = cred.get_token(container_audience)

#headers = {'Metadata': 'true'}
#response = requests.get('http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource={}'.format(container_audience), headers=headers, timeout=5)
#if response.status_code not in [200]:
#  print('Error-getmids.{}.{}'.format(response.status_code, response.text))
#else:
#  access_token = loads(response.content.decode("utf-8"))["access_token"]
#  headers = {'Content-Type': 'application/x-www-form-urlencoded'}
#  content = {
#        'grant_type': 'access_token',
#        'service': service,
#        'tenant': tenant,
#        'access_token': access_token
#  }
#  response = requests.post(service_full_uri, urlencode(content), headers=headers)
#  if response.status_code not in [200]:
#    print('Error.{}.{}'.format(response.status_code, response.text))
#  else:
#    print(loads(response.content.decode("utf-8")))

print(aad_access_token.token)
#response = requests.post(authhost, urlencode(content), headers=headers)
#print(os.environ["OUTPUT_TOKEN"])