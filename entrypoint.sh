#!/bin/sh -l
printenv
aadtoken=$(python3 main.py)
data="grant_type=access_token&service=testmanagedyp.azurecr.io&access_token=$aadtoken"
result=$(curl --header 'application/x-www-form-urlencoded' -s --request POST --data $data https://testmanagedyp.azurecr.io/oauth2/exchange | jq -r '.refresh_token')
echo $result