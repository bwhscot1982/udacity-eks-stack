# Comment
FROM python:3.7.7-stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install flask

# Adapted from https://stackoverflow.com/questions/43925487/how-to-run-gunicorn-on-docker

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
