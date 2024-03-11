#!/bin/sh

## need to use Dockerfile to compile the addition of a new model into Nginx ngx_http_js_moduke ti perform authorisation of http requests

# we have already created a Dockerfile with the contents as 
# FROM nginx
# COPY static-html-directory /usr/share/nginx/html

# now buid the nginx container image from the Dockerfile (.)
echo 'docker build -t some-content-nginx .'
docker build -t some-content-nginx .

# now run the container 
echo 'docker run --name mynginx2 -d some-content-nginx'
#### docker run --name mynginx2 -d some-content-nginx

# now expose an external port 
docker run --name myngninx2 -d -p 8080:80 some-content-nginx

# Launch Keyclaok admin console in Chrome Browser
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --enable-speech-input http:\\localhost:8080

