FROM node:lts-alpine as build-stage

WORKDIR ./socket.io/

COPY package*.json ./

RUN npm install

COPY . ./

CMD ["npm", "start"]