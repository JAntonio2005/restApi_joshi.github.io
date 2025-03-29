# Usa una imagen base de Debian
FROM debian:bullseye

# Actualiza el sistema
RUN apt-get update

# Instala dependencias necesarias
RUN apt-get install -y curl make g++

# Agrega el repositorio de Node.js y lo instala
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash
RUN apt-get install -y nodejs

# Copia el archivo package.json y luego instala las dependencias de npm
ADD package.json /package.json
RUN npm install

# Define el directorio de trabajo en el contenedor
WORKDIR /src

# Expone el puerto en el que tu API estará corriendo (ajusta el puerto según el puerto de tu API)
EXPOSE 8080

# Ejecuta el archivo index.js con Node.js
CMD ["node", "/src/index.js"]

