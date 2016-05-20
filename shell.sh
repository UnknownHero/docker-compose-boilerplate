#!/bin/sh

CONTAINER_NUMBER=1;
CONTEXT_NAME="default"
CONTAINER_NAME="none"

if [ $# -eq 0 ]
then
    echo "Please, provide all arguments. Check README"
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

if [ $# -eq 3 ]
then
    CONTEXT_NAME=$1
    CONTAINER_NAME=$2
    CONTAINER_NUMBER=$3
fi

if ! [ -d "$CONTEXT_NAME" ]; then
    echo "CONTEXT '$CONTEXT_NAME' not exists. Please, check README";
    exit 1;
fi

docker exec -it $CONTEXT_NAME_$CONTAINER_NAME_$CONTAINER_NUMBER bash
