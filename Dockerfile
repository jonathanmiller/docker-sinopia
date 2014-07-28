# DOCKER-VERSION 0.10.0

FROM ubuntu:14.04

RUN apt-get update && \
    apt-get -y install git && \
    apt-get -y install build-essential libssl-dev curl wget python && \
    apt-get -y install nodejs npm && \
    ln -s /usr/bin/nodejs /usr/local/bin/node

RUN npm install -g sinopia

EXPOSE 4873

CMD cd config && "/usr/local/bin/sinopia"

