#Use the official image of python 2.7
FROM python:2.7-slim
MAINTAINER ramakrishna

#Set working directory to /app under home directory
WORKDIR /app

#Copy current directory content to container /home/app
ADD . /app 

#Installing required modules using pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#Exposing 80 port to the world
EXPOSE 80

#Creating an environment valiable
ENV NAME World

#Running python and app services whne container launches
CMD ["pytrhon", "app.py"]