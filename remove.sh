#!/bin/sh

CONTEXT_NAME="default"

if [ $# -eq 0 ]
then
    echo "Please, provide all arguments. Check README"
    exit 1;
fi

if [ $# -eq 1 ]
then
    CONTEXT_NAME=$1
fi
if ! [ -d "contexts/$CONTEXT_NAME" ]; then
    echo "CONTEXT '$CONTEXT_NAME' not exists. Please, check README";
    exit 1;
fi

cd contexts/$CONTEXT_NAME &&  docker-compose stop && docker-compose rm && cd ..