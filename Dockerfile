FROM composer:1.6.4

MAINTAINER dev.ahmed.abbas@gmail.com

RUN apk add --no-cache curl

RUN apk update && apk add --no-cache unzip curl

COPY ./download-laravel.sh /

WORKDIR /

RUN chmod u+x download-laravel.sh && mv ./download-laravel.sh /usr/local/bin

ENTRYPOINT [ "download-laravel.sh" ]