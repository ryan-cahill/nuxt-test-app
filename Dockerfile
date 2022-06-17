FROM node:14-alpine

ENV NUXT_HOST=0.0.0.0

RUN apk add --update --no-cache python3 make g++

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY nuxt.config.js jsconfig.json ./
COPY src src

CMD ["npm", "run", "dev"]
