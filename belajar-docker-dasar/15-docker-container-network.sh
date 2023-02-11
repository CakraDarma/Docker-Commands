# create new network
docker network create --driver bridge mongonetwork
# create container into new network
# if the container will be published the port cannot same outside the network
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=cakra --env MONGO_INITDB_ROOT_PASSWORD=123 mongo:latest
# mongo-express is web based mongo db admin
docker image pull mongo-express:latest
# create container and configuration to connect with the network
# the port in cakra... is port container not to publish
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://cakra:123@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodbexpress
# delete container from network
docker network disconnect mongonetwork mongodb
# add container to network if container no have network
docker network connect mongonetwork mongodb
