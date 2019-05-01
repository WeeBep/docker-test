FROM node:10

WORKDIR /usr/src/app

# Con el asterisco mueve tanto el package como el package-lock
COPY package*.json ./

# Instalamos los node modules
RUN npm install

# Los ponemos en el container
COPY . .

# El puerto en el que corre nuestro servidor
EXPOSE 3000

# El comando para iniciar la app, en forma de array
CMD ["npm", "start"]