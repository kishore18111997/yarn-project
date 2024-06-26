FROM node:latest

MAINTAINER Kishore

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
