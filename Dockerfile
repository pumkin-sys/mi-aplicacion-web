# Usa una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo package.json y package-lock.json para instalar las dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Expone el puerto 3000 para que pueda ser accedido externamente
EXPOSE 3000

# Comando para iniciar la aplicación cuando se ejecute el contenedor
CMD ["node", "app.js"]
