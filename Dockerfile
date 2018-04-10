FROM alpine

MAINTAINER sahsu.mobi@gmail.com

RUN apk add --update nodejs nodejs-npm && \
      rm /var/cache/apk/*
RUN npm install -g webpagetest

WORKDIR /usr/bin
ENTRYPOINT ["webpagetest"]

