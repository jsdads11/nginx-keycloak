#!/bin/sh

# SIMPLE RUN INSTALL 1 LINE (NON_DOCKER) 
# ---------------------------------------------------------------------------------------------------------------------------
# docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:24.0.1 start-dev
# ---------------------------------------------------------------------------------------------------------------------------

docker stop mykeycloak
docker rm mykeycloak

docker build -f Dockerfile.keycloak -t mykeycloak .

docker run -d--name mykeycloak -p 8088:8088 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:latest start-dev

docker ps

echo "now execute $KCADM to see options"

# Launch Keyclaok admin console in Chrome Browser
# "/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --enable-speech-input http:\\localhost:8088"
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --enable-speech-input http:\\localhost:8080




