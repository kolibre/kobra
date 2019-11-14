# Kobra

TODO: Describe what kobra is

## API

TODO: Describe the API.

## Docker

This application is only targeted for running in docker and images are available at https://hub.docker.com/r/kolibreorg/kobra.

### Run

Running the image requires setting the follwing environmemnt variables

- SECRET_KEY (string)
  - A password to encrypt user password
- STORAGE_PATH (string)
  - File path for storing uploaded files
- DATABASE_URL (string)
  - How to connect to the database
  - Supported database are SQLite3, MySQL and PostgreSQL
    - Examples:
      - sqlite3:/usr/src/app/db/prod.sqlite3 (ex)
      - mysql2://root:password@mysql:3306/kobra?pool=5
      - postgres://postgres:password@postgres:5432/kobra

The provided docker-compose file illustrates an example how to run the application with a PostgresSQL datbase and a Nginx serving uploaded files. It's not recommended to use the example for production use.

`$ docker-compose up -d`

### Build image

`$ docker build -t kobra .`

### Run image with SQLite3 database

`$ docker run -it --rm -e SECRET_KEY=your-own-secret STORAGE_PATH=/tmp DATABASE_URL=sqlite3:/usr/src/app/db/prod.sqlite3 kobra`

### Development

Start by deleting the `.dockerignore` file. This is needed so tests are added to the image and can be executed inside the image. In future version of docker it will be supported to declare ignore files for a specific Dockerfile and this step won't be needed.

`$ docker build -t kobra:dev . -f Dockerfile.dev`

Now run the image and mount the current directory inside the image

`$ docker run -it --rm -v ${PWD}:/usr/src/app -p 127.0.0.1:3000:3000 kobra:dev`

You can now edit files in your editor on the docker host and run tests, migrations etc inside the image. You can also start the application inside the image and connect to it from the docker host using http://localhost:3000