FROM node:16-alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY ./dist /usr/src/app/dist
COPY package.json ./

RUN npm install glob rimraf

EXPOSE 3000

CMD ["node", "dist/main"]
