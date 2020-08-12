FROM postgres:12

COPY /db_init.sh /docker-entrypoint-initdb.d/1-init.sh