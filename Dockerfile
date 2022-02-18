FROM node:14

WORKDIR /app

COPY vue-map/package*.json ./

# Probar a grabar versión especifica con: RUN apt-get install npm=4.0.0-1chl1~precise1
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]