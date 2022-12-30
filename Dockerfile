FROM httpd:2.4-alpine
COPY ./subfiles/createindex.py /tmp
RUN apk update
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools
RUN python3 /tmp/createindex.py