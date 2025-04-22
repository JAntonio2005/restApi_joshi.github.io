# Usar la imagen oficial de Node.js para evitar instalarlo manualmente
FROM node:20-bullseye

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar solo los archivos de configuración de dependencias primero
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto de los archivos del proyecto
COPY . .

# Exponer el puerto que usará tu aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["node", "index.js"]
