docker ps
docker ps -a


Imágenes

docker build -t nombreImagen .	 Construye una imagen desde un Dockerfile en la ruta especificada(.).
docker build -t mi-imagen -f dockerfiles/Dockerfile.custom app/ (contexto)
docker images	                Lista todas las imágenes descargadas.
docker rmi nombre/ID	        Elimina una imagen.
docker pull nombre	           Descarga una imagen desde Docker Hub.

Contenedores

docker run -d imagen          Crea y ejecuta en segundo plano (detached)
docker run --name Nombre imagen             Crear con nombre personalizado
docker run -e MI_VAR=valor imagen           Crear con variable de entorno
docker run -e VAR1=123 -e VAR2=abc ubuntu   Crear con múltiples variables de entorno 
docker run -p 8080:80 nginx                 Crear mapeando puertos (PUERTO_LOCAL:PUERTO_CONTENEDOR)
docker run -it alpine sh/bash                    crea y se mete dentro
docker stop NOMBRE_O_ID
docker start NOMBRE_O_ID
docker kill NOMBRE_O_ID
docker rm nombre_o_id                 elimina el contenedor


docker run -v mi_volumen:/ruta/en/contenedor imagen
docker run --network=mi_red ...         

docker exec -it nombre bash
docker logs nombre              Muestra los logs del contenedor.
docker inspect nombre_o_id      Muestra información detallada en formato JSON del contenedor o imagen.
docker system prune             Limpia lo que no se esté usando (imágenes sin uso, contenedores parados, etc.)


compose

docker-compose up	       Levanta los contenedores definidos en docker-compose.yml.
docker-compose up -d	   Lo mismo, pero en segundo plano (modo "detached").
docker-compose up -d --build       fuerza reconstruir la imagen (Dockerfile) antes de levantar los contenedores.
docker-compose down	     Detiene y elimina contenedores, red y volúmenes temporales.
docker-compose build	   Construye imágenes desde los Dockerfile.
docker-compose stop	     Detiene los contenedores sin eliminarlos.
docker-compose logs	     Muestra logs de los servicios.
docker-compose ps	       Lista contenedores creados por Docker Compose.
docker-compose down -v      Elimnina todo más los volumenes

Volúmenes

docker volume ls	            Lista los volúmenes existentes.
docker volume create nombre	  Crea un volumen.
docker volume rm nombre	      Elimina un volumen.
docker volume inspect nombre	Muestra detalles de un volumen.
docker volume prune	          Elimina todos los volúmenes no utilizados.

Redes

docker network ls	            Lista redes creadas.
docker network create nombre	Crea una red personalizada.
docker network rm nombre	    Elimina una red.
docker network inspect nombre	Muestra detalles de la red.

Conocer los puertos por defecto de servicios comunes

Nginx/Apache	80
MySQL	        3306
phpMyAdmin	  80
PostgreSQL	  5432
Redis	        6379