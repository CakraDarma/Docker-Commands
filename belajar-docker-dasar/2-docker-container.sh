# show all docker container 
docker container ls -a
# show all running docker container
docker container ls
# install docker container
docker container create --name contohredis redis:latest
# run docker container
docker container start contohredis
# stop runing docker container
docker container stop contohredis
# delete docker container
docker container rm contohredis
