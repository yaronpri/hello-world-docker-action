FROM python:3.9-slim-bullseye 
RUN apt-get update && apt-get install -y curl &&  apt-get install -y jq
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
COPY entrypoint.sh /entrypoint.sh
COPY main.py main.py
ENTRYPOINT ["/entrypoint.sh"]
