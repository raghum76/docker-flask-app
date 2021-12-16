#Base python docker image
FROM python:3.7.12-buster

#import code
ADD . /code

#changing the directory
WORKDIR /code

#Installing lib
RUN pip install flask

# Exposing the port
EXPOSE 5001

#Running python file
CMD python main.py