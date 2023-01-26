# sharing file/folder from host to docker or otherwise in realtime
docker container create --name mongodata --mount "type=bind,source=C:\Users\Cakra\Desktop\00-my learning\2022\docker\belajar-docker-dasar\mount,destination=/data/db" --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=cakra --env MONGO_INITDB_ROOT_PASSWORD=123 mongo:latest
