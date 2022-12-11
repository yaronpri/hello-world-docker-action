#!/bin/sh -l
acruri=$(echo "$1")
clientid=$(echo "$2")
tenantid=$(echo "$3")
if [ -z "$clientid" ]
then
  aadtoken=$(python3 /main.py)
else
  aadtoken=$(python3 /main.py $clientid)
fi
data="grant_type=access_token&service=$acruri&access_token=$aadtoken"
if ! [ -z "$tenantid" ]
then
  data=data + "&tenant=$tenantid"
fi 
url="https://$acruri/oauth2/exchange"
result=$(curl --header 'application/x-www-form-urlencoded' -s --request POST --data $data $url | jq -r '.refresh_token')
echo "$result" >> $GITHUB_OUTPUT