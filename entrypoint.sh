#!/bin/sh -l
export ACR_URI=$1
export TENANT_ID=$2
python3 ./app/main.py
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT