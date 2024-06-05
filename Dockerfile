FROM node:20-buster-slim

EXPOSE 8081 19006 19001 19002

RUN mkdir /usr/app && chown root:root /usr/app

WORKDIR /usr/app/cliniquenative

COPY package*.json ./

RUN npm install -g npm@10.8.1

RUN npm install

RUN mkdir node_modules/.cache && chmod -R 777 node_modules/.cache

COPY . .

CMD ["npx","expo", "start"]

# EXPOSE 3000

# CMD ["npm", "start"]