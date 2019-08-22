FROM node:alpine

WORKDIR '/app'

COPY ./client/package.json ./

RUN npm install

COPY . .

CMD ["npm", "run", "start"]
