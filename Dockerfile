# Update certificates

# Devnetes Docs Site
FROM python:3-alpine
LABEL maintainer="Colin Griffin <colin@krum.io>"

RUN update-ca-certificates
# RUN apk update
# RUN apk upgrade
# RUN wget https://dl-cdn.alpinelinux.org/alpine/v3.14/main/x86_64/APKINDEX.tar.gz
RUN apk add ca-certificates
RUN apk add build-base bash

RUN pip3 install --upgrade pip \
	&& pip3 install mkdocs \
	&& pip3 install click-man \ 
	&& pip3 install mkdocs-material \
    && pip3 install pymdown-extensions

RUN mkdir /src \
    && mkdir /temp

COPY . /src/

WORKDIR /src

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
