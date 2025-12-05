FROM node:18-alpine

WORKDIR /app

# копируем пакетный файл (ускорит сборку)
COPY package*.json /app/

RUN npm install

# теперь копируем весь проект включая server.js и index.html
COPY . /app/

EXPOSE 3000

CMD ["npm", "start"]
