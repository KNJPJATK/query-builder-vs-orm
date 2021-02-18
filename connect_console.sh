#!/bin/bash
set -e

CONTAINER_NAME="my_database"
DB_USER="root"
DB_NAME="data"
POSTGRES_PASS="$1"

if [ -z $POSTGRES_PASS ]; then
  echo "No args. Expected postgres password"
  exit -1
fi

docker container exec -it \
  "$CONTAINER_NAME" \
  psql --username "$DB_USER" --dbname "$DB_NAME"
