# create docker volume
docker volume create mongodata
# crate container, source is a place in volume, 
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=cakra --env MONGO_INITDB_ROOT_PASSWORD=123 mongo:latest
# stop container
docker container stop mongovolume
# remove container
docker container rm mongovolume
# when container mongovolume deleted, data will store into docker volume and when container is created in the same source was created, data will be recovered 
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest
