#!/usr/bin/env bash

# Create a postgress container with database and user and password
docker run --name activity-1-1 -e POSTGRES_PASSWORD=trekking -e POSTGRES_USER=panoramic -d postgres

# Attach a terminal to the container
docker exec -it activity-1-1 bin/bash

# list all databases
# psql -U panoramic
# \l
# \q
# exit
