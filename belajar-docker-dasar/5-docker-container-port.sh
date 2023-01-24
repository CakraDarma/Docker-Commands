# install docker image
docker image pull nginx:latest
# create container for nginx
docker container create --name contohnginx --publish 8080:80 nginx:latest
# start container
docker container start contohnginx