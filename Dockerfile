FROM node:20-slim

# Crear carpeta de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json primero (optimiza cache)
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto que Render usará
EXPOSE 3000

# Arrancar la app
CMD ["node", "index.js"]
