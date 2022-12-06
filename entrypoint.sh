#!/bin/sh -l
pwd
ls -l
python3 /main.py
var1 = $OUTPUT_TOKEN
curl --header 'application/x-www-form-urlencoded' --request POST --data 'grant_type=access_token&service=$1&access_token=$var1' https://$1/oauth2/exchange
