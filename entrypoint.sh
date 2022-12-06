#!/bin/sh -l
pwd
ls -l
python3 /main.py
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT