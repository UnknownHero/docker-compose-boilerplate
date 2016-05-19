#!/bin/sh

if [ -z "$1" ]; then echo "Please, set CONTEXT name";exit 1; else
   docker logs -f $1_$1_1
fi