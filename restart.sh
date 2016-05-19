#!/bin/sh

if [ -z "$1" ]; then echo "Please, set CONTEXT name";exit 1; else
   if [ -z "$2" ]; then echo "Please, set CONTAINER name";exit 1; else
     cd src/$1 && docker-compose restart $2 && cd ..
   fi
fi


