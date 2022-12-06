#!/bin/sh -l
pwd
ls -l
python3 /main.py >> $GITHUB_OUTPUT
echo $GITHUB_OUTPUT