# to backup data in volume, we need using container to backup data into archve (zip/tar.gz)
# first stop mongovolume to make container cannot change data
docker container stop mongovolume
# create new container with two mount, volume we want to backup will store in new container and bind mount to file in system host
# free to use docker image anything to create new container
# first mount is destination to save in local host and second mount is source data in volume
docker container create --name nginxbackup --mount "type=bind,source=C:\Users\Cakra\Desktop\00-my learning\2022\docker\belajar-docker-dasar\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

tar cvf /backup/backup.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume

# simplest commands to backup data without create and remove temporary
docker image pull ubuntu:latest

docker container stop mongovolume

docker container run --rm --name ubuntubackup --mount "type=bind,source=C:\Users\Cakra\Desktop\00-my learning\2022\docker\belajar-docker-dasar\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

docker container start mongovolume
