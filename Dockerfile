FROM node:10

WORKDIR /usr/src/app

COPY package*.json ./
COPY . .

RUN npm install

EXPOSE 8081

CMD [ "npm", "start", "--", "--hostname", "0.0.0.0" ]
