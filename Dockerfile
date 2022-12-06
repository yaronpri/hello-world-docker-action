FROM python:3.9-slim-bullseye 
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
COPY entrypoint.sh .
COPY main.py .
CMD ["/app/entrypoint.sh"]
