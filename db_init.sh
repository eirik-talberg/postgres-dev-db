#!/usr/bin/env sh

# This script automates setting up a new database environment with environment variables, suitable for docker setup.

user=$DB_USER
password=$DB_PASSWORD
database=$DB_NAME

psql  -c "CREATE DATABASE $database;"
psql  -c "CREATE USER $user WITH ENCRYPTED PASSWORD '$password';"
psql  -c "GRANT ALL PRIVILEGES ON DATABASE $database TO $user;"