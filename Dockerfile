FROM postgres:12

COPY /tools/scripts/db_init.sh /docker-entrypoint-initdb.d/1-init.sh