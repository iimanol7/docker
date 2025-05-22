# ✅ Imagen base (puede ser oficial como node, python, nginx, etc.)
FROM node:20

# ✅ CREA EL DIRECTORIO DEL CONTENEDOR DONDE SE COPIARAN LOS ARCHIVOS Y SE EJECUTARÁN LOS COMANDOS A CONTINUACION
WORKDIR /app

# ✅ Copiar archivos locales al contenedor (COPY <origen> <destino>). 
# Desde el especificado en el compose o en el build (context)
# A el relativo al workdir
COPY package*.json ./

# ✅ Instalar dependencias y las guarda en la imagen. solo se ejecuta 1 vez, al crear la imagen
RUN npm install

# ✅ Copiar el resto del código de la app
COPY . .

# ✅ Comando por defecto cada vez que inicia el contenedor. para ejecutar scripts por ejemplo
CMD ["npm", "start"]
# CMD ["npm", "run", "dev"] 


# Otros posibles:
# RUN apt-get update && apt-get install -y curl   # Instalar paquetes
# ARG VERSION=1.0   # Argumentos para el build
# USER node         # Cambiar el usuario
# VOLUME ["/data"]  # Definir un volumen (opcional)