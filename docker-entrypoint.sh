#!/bin/bash

if [ "${SECRET_KEY}" == "" ]
then
    echo "environment variable SECRET_KEY must be specified"
    exit 1
fi

if [ "${DATABASE_URL}" == "" ]
then
    echo "environment variable DATABASE_URL must be specified"
    exit 1
fi

export SECRET_KEY_BASE=${SECRET_KEY}
rake db:create
rake db:migrate
if [ "${DATBASE_SEED}" == 1 ]
then
    rake db:seed
fi
rails server -b 0.0.0.0