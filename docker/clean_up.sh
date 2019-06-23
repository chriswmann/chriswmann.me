#!/bin/bash

# Simple file to clean up the local environment after running docker.
docker ps -q | xargs docker kill
rm -r ./code/
docker system prune -a