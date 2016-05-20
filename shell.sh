#!/bin/sh

CONTAINER_NUMBER=3;

if [ -z "$3" ]; then CONTAINER_NUMBER=1; else
        CONTAINER_NUMBER=$3
fi

if [ -z "$1" ]; then echo "Please, set CONTEXT name";exit 1; else
    echo "";
fi

if [ -z "$2" ]; then echo "Please, set CONTAINER name";exit 1; else
    docker exec -it $1_$2_$CONTAINER_NUMBER bash
fi
