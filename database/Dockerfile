FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=seriesdb

# Copia el archivo init.sql al contenedor para inicializar la base de datos
COPY bd/init.sql /docker-entrypoint-initdb.d/
