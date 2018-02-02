FROM alpine:edge

RUN apk add --update --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted pulseaudio-utils
RUN apk add php5-cli php5-json

WORKDIR /code
COPY source ./
EXPOSE 8080
ENV PULSE_SERVER=pulse

CMD php5 -S "[::]:8080" -t .
