#!/bin/bash
echo "begin"

set -e

psql -v ON_ERROR_STOP=0 --username $POSTGRES_USER --dbname $POSTGRES_DB <<-EOSQL
        CREATE TABLE  weblogs (
               day    date,
               status varchar(3),
               source text
               );
EOSQL

echo "end"