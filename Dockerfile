FROM openjdk:8-alpine

RUN apk add pulseaudio-utils npm
RUN npm install -g grunt-cli

WORKDIR /code
COPY . ./
EXPOSE 8000
ENV PULSE_SERVER=pulse

RUN npm install
RUN npm run build
CMD npm run start
