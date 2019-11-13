#!/bin/bash

set -e

# build image
# docker build -t kobra:test .

for testcase in 01_constants.frank 02_user_management.frank 03_content_management.frank 04_bookshelf_management.frank
do
    echo "running testcase ${testcase}"
    echo "starting container kobra:test ..."
    docker run -d --rm -e SECRET_KEY=testing -e STORAGE_PATH=/tmp -e DATABASE_URL=sqlite3:/usr/src/app/db/prod.sqlite3 --name kobratest -p 127.0.0.1:3000:3000 kobra:test
    sleep 5
    frank -c ./testcases/${testcase}
    echo "cleaning up after test"
    echo "stopping container kobra:test ..."
    docker stop kobratest
    sleep 2
done