FROM python:3.7.7-stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install jwt
RUN pip install flask
RUN pip install gunicorn

ENV GUNICORN_CMD_ARGS="--bind=0.0.0.0"
COPY . .

EXPOSE 8080

ENTRYPOINT gunicorn main:APP
