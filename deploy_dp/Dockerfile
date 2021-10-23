FROM node:12.13-alpine

RUN apk add git

RUN apk add docker

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

CMD ["node", "./index.js"]