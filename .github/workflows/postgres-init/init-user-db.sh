#!/bin/bash
set -e

exit 1

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER chainlink;
    CREATE DATABASE chainlink_test;
    GRANT ALL PRIVILEGES ON DATABASE chainlink_test TO chainlink;
EOSQL
