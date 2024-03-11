#!/bin/sh

# stop anu existing running Nginx containers
docker stop mynginx1
docker rm mynginx1
docker stop mynginx1

# Launch an instance of NGINX running in a container and using the default NGINX configuration with the following command:

docker run --name mynginx1 -p 80:80 -d nginx

# where:
# mynginx1 is the name of the created container based on the NGINX image
# the -d option specifies that the container runs in detached mode: the container continues to run until stopped but does not respond to commands run on the command line.
# the -p option tells Docker to map the ports exposed in the container by the NGINX image (port 80) to the specified port on the Docker host. 
# The first parameter specifies the port in the Docker host, the second parameter is mapped to the port exposed in the container
# The command returns the long form of the container ID: fcd1fb01b14557c7c9d991238f2558ae2704d129cf9fb97bb4fadf673a58580d. This form of ID is used in the name of log files.
# Verify that the container was created and is running with the docker ps command:

docker ps
echo "use the docker ps command to view container config for mynginx1"

## Edit the default.conf file to include any location and paths:

# copy the original Nginx configuration file in the Docker container to the local folder of the host machine’s local file system\
sudo docker cp mynginx1:/etc/nginx/conf.d/default.conf "/Users/tonyodonnell/Library/Mobile Documents/com~apple~CloudDocs/Dev/Nginx-and-Keycloak"

# make any http request changes locally and copy to Docker container folder 
sudo docker cp "/Users/tonyodonnell/Library/Mobile Documents/com~apple~CloudDocs/Dev/Nginx-and-Keycloak/nginx-keycloak-default.conf" mynginx1:/etc/nginx/conf.d/default.conf



