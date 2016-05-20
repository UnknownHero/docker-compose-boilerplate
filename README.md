# Docker Compose Boilerplate

# Setup

 - Install [Docker](https://docs.docker.com/engine/installation/) and [Docker Compose](https://docs.docker.com/compose/install/)
 - Copy example and set your CONTEXT name. ``` cp -r src/example src/CONTEXT ```
 - For exampe ( 'local' is your CONTEXT name ):    ``` cp -r src/example src/local ```
 - [Set your config](https://docs.docker.com/compose/compose-file/) for COMMON compose ( /src/common ) and CONTEXT compose ( for example /src/local ) 
 - [Set your env](https://docs.docker.com/compose/compose-file/#env-file) files if need
 
# Usage
 - Run docker for building images and running containers for your CONTEXT: ``` ./run.sh CONTEXT``` 
 - Get container output: ``` ./output.sh CONTEXT CONTAINER ```
 - Get shell access to container:  ``` ./shell.sh CONTEXT CONTAINER ```
 - Restart container:  ``` ./restart.sh CONTEXT CONTAINER ```
 - Remove containers: ```./remove.sh CONTEXT ```