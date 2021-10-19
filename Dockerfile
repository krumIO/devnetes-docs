# Devnetes Docs Site
FROM python:3.7.2-alpine3.9
LABEL maintainer="Colin Griffin <colin@krum.io>"

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
