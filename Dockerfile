FROM node:16.14.0-alpine3.15

RUN npm install -g npm
RUN npm install -g @nestjs/cli@8.2.8

USER node

WORKDIR /home/node/app