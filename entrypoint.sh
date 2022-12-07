#!/bin/sh -l
python3 /main.py
echo "Success exec main.py"
curl --header 'application/x-www-form-urlencoded' --request POST --data 'grant_type=access_token&service=$1&access_token=ssss' https://$1/oauth2/exchange
