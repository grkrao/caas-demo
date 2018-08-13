#Use the official image of python 2.7
FROM python:2.7-slim
MAINTAINER ramakrishna

WORKDIR /app

ADD . /app 


RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

ENV NAME World

CMD ["pytrhon", "app.py"]