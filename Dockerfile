FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "app.js"]