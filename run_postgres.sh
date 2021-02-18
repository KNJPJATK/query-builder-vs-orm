#!/bin/bash

set -e

CONTAINER_NAME="my_database"
DB_USER="root"
DB_PASS=$(LC_CTYPE=C tr -dc A-Za-z0-9 < /dev/urandom | head -c 32)
DB_NAME="data"

if [ $(docker container ls -aqf name="$CONTAINER_NAME" | wc -l) -ne 0 ]; then
  docker container stop "$CONTAINER_NAME"
  docker container rm "$CONTAINER_NAME"
fi

docker container run -d \
  --name "$CONTAINER_NAME" \
  -e POSTGRES_USER="$DB_USER" \
  -e POSTGRES_PASSWORD="$DB_PASS" \
  -e POSTGRES_HOST_AUTH_METHOD=trust \
  -e POSTGRES_DB="$DB_NAME" \
  -v $(pwd)/data:/var/lib/postgresql/data \
  -v $(pwd)/init:/docker-entrypoint-initdb.d \
  -p 5432:5432 \
   postgres:13.2

echo "Postgres is up and running with password: $DB_PASS"