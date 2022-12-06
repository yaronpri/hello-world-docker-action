#!/bin/sh -l
pwd
ls -l
var1=$(python3 /main.py  2>&1)   
echo $var1
echo "$var1" >> $GITHUB_OUTPUT
