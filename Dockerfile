FROM node:lts-alpine

WORKDIR /usr/app

RUN apk update

COPY package.json .
RUN yarn install --quiet

COPY . .
