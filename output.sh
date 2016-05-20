#!/bin/sh

if [ -z "$1" ]; then echo "Please, set CONTEXT name";exit 1; else
   if [ -z "$2" ]; then echo "Please, set CONTAINER name";exit 1; else
      docker logs -f $1_$2_1
   fi
fi