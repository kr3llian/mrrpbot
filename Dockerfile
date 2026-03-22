FROM node:20

WORKDIR /usr/local/mrrpbot

COPY package*.json ./
RUN npm install

COPY . .

RUN npm rebuild better-sqlite3

CMD ["node", "main.js"]