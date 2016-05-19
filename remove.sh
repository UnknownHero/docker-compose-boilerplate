#!/bin/sh

if [ -z "$1" ]; then echo "Please, set CONTEXT name";exit 1; else
   cd src/$1 &&  docker-compose stop && docker-compose rm && cd ..
fi