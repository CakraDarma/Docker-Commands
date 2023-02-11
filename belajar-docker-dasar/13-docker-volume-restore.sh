
docker volume create mongorestore

# extract from localhost backup-lagi.tar.gz and restore it to mongorestore
docker container run --rm --name ubunturestore --mount "type=bind,source=C:\Users\Cakra\Desktop\00-my learning\2022\docker\belajar-docker-dasar\backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup-lagi.tar.gz --strip 1"

docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=cakra --env MONGO_INITDB_ROOT_PASSWORD=123 mongo:latest

docker container start mongorestore
