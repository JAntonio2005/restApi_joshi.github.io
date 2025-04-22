# Usar la imagen oficial de Node.js
FROM node:20

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar el archivo package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias de Node.js
RUN npm install

# Copiar el resto de los archivos del proyecto
COPY . .

# Exponer el puerto que usará tu aplicación
EXPOSE 3000

# Definir el comando para iniciar la aplicación
CMD ["npm", "start"]
