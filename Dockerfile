FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python python-pip

RUN pip install flask

COPY demo.py /opt/

ENTRYPOINT FLASK_APP/opt/demo.py flask run --host=0.0.0.0