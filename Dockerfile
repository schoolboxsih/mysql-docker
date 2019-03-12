FROM mysql:5.7.24

ENV MYSQL_DATABASE radius

COPY ./schema.sql /docker-entrypoint-initdb.d/
COPY ./setup.sql /docker-entrypoint-initdb.d/
