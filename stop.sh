#!/bin/sh

. ./default.sh;

CONTEXT_NAME=$DEFAULT_CONTEXT_NAME;
CONTAINER_NAME="none"

if [ $# -eq 0 ]
then
    echo "Please, provide all arguments. Check README"
    exit 1;
fi

if [ $# -eq 1 ]
then
    CONTAINER_NAME=$1
fi

if [ $# -eq 2 ]
then
    CONTEXT_NAME=$1
    CONTAINER_NAME=$2
fi

if ! [ -d "contexts/$CONTEXT_NAME" ]; then
    echo "CONTEXT '$CONTEXT_NAME' not exists. Please, check README";
    exit 1;
fi

cd contexts/$CONTEXT_NAME && docker-compose stop $CONTAINER_NAME && cd ..


