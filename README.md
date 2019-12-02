# Kobra

Kobra is a database backend for [Kolibre-KADOS](https://github.com/kolibre/Kolibre-KADOS) with a REST API for managing the database. The database models created by Kobra has been designed to support both versions of the Daisy Online Devlivert Protocol and all features of the protocals. Kolibre-KADOS togethet with Kobra can thus act as isolated solution to deliver content to clients.

Supported database are:
- PostgreSQL
- MySQL
- SQLite3

## API

The REST API is a JSON based with standard return codes. For examples on how to use the API with curl, see the [script](https://github.com/kolibre/kados-demo/blob/master/add-demo-data.sh) in [kados-demo]https://github.com/kolibre/kados-demo.

### Authentication

Kobra does not offer any authentication for the endpoints. Instead it's recommended to only expose the REST API on a private network. If that is not possible, authentication such as IP whitelisting or basic authentication is recommended to configure on top of Kobra.

### Constants

The database is setup with a set of constant values required when interacting with other endpoints.

#### GET /categories

Returns the available categories for daisy books.

#### GET /daisy_formats

Returns the availble daisy formats for daisy books.

#### GET /content_lists

Returns the available content lists.

#### GET /states

Returns the available states for a content.

#### GET /question_types

Retuns the available questions types for dynamic menus.

### User management

Endpoints to add/update users and show status.

#### POST /users

Add a new user.

#### GET /users/<id>

Returns info about the user as well as it's current bookshelf.

### Content management

Endpoint to add/delete content. Kobra does not provide any validation on contents so the user is expceted to validate daisy book before adding it and uploading resources.

#### POST /contents

Add a new content.

#### DELETE /contents/<id>

Delete a content and all its metadata, audios and resouces.

#### POST /content_metadata

Add metadata for a content.

#### POST /contents/<id>/audio

Upload an audio file for a content.

#### POST /contents/<id>/resource

Upload a resource for a content.

### Bookshelf management

#### POST /user_contents

Add a content to a user's bookshelf.

#### POST /user_contents/add

Add a content to one more more users' bookshelf.

#### POST /user_contents/remove

Remove a content from one more more users' bookshelf.

### Terms of service

The endpoints to manage terms of service are not yet implemented.

### Annnouncement management

The endpoints to manage announcements are not yet implemented.

### Bookmark management

The endpoints to manage bookmarks are not yet implemented.

### Dynamic menus

The endpoints to manage dynamic menus are not yet implemented.

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

The provided docker-compose file illustrates an example how to run the application with a PostgresSQL database and a Nginx serving uploaded files. It's not recommended to use the example for production use.

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