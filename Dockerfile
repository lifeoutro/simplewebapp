FROM php:apache
RUN apt update
RUN apt install dnsutils -y
RUN apt install telnet -y
#RUN mkdir /var/www/html
COPY ./subfiles/index.php /var/www/html/
#ENTRYPOINT php -S 0.0.0.0:80 -t /app
#
#FROM httpd:2.4-alpine
#COPY ./subfiles/createindex.py /tmp
#RUN apk update
#RUN apk add php
#ENV PYTHONUNBUFFERED=1
#RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
#RUN python3 -m ensurepip
#RUN pip3 install --no-cache --upgrade pip setuptools
#RUN python3 /tmp/createindex.py
