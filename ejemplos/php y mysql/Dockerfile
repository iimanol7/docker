# Usamos la imagen oficial PHP con Apache
FROM php:8.2-apache

# Instalamos extensiones necesarias para MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiamos el código fuente al directorio del servidor Apache
COPY . /var/www/html/

# Establecemos permisos (opcional, según necesidades)
RUN chown -R www-data:www-data /var/www/html

# Exponemos el puerto 80
EXPOSE 80
