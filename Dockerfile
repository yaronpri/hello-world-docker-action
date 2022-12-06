FROM python:3.9-slim-bullseye 
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
COPY entrypoint.sh /entrypoint.sh
COPY main.py /main.py
CMD ["/entrypoint.sh"]
