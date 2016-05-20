#!/bin/sh

CONTEXT_NAME="default"

if [ -z "$1" ]; then CONTEXT_NAME="default"; else
    CONTEXT_NAME=$1;
fi

cd src/$CONTEXT_NAME &&  docker-compose stop && docker-compose rm && cd ..