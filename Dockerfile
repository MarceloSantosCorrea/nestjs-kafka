FROM node:16.14.0-alpine3.15

RUN apk add --no-cache bash curl && \
  curl https://raw.githubusercontent.com/eficode/wait-for/v2.1.3/wait-for --output /usr/bin/wait-for && \
  chmod +x /usr/bin/wait-for

RUN npm install -g npm
RUN npm install -g @nestjs/cli@8.2.8

USER node

WORKDIR /home/node/app