# Kobra

TODO: Describe what kobra is

## API

TODO: Describe the API.

## Docker

This application is only targeted for running in docker and images are available at https://hub.docker.com/r/kolibreorg/kobra.

### Run

Running the image requires setting the follwing environmemnt variables

- SECRET_KEY
  - A password to encrypt user password
- STORAGE_PATH
  - File path for storing uploaded files
- DATABASE_URL
  - How to connect to the database
  - Supported database are SQLite3, Mysql and PostgreSQL

The provided docker-compose file illustrates an example how to run the application with a PostgresSQL datbase and a Nginx serving uploaded files. It's not recommended to use the example for production use.

`docker-compose up -d`

### Build production image

`docker build -t kobra .`

### Build development image

`docker build -t kobra:dev . -f Dockerfile.dev`