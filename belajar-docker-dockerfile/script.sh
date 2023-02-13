# filter docker image
docker image ls | grep cakradarma

# FROM Instruction
docker build -t cakradarma/from 1-from

docker image ls

# RUN Instruction
docker build -t cakradarma/run 2-run

docker build -t cakradarma/run 2-run --progress=plain --no-cache

# CMD Instruction
docker build -t cakradarma/command 3-command

docker image inspect cakradarma/command

docker container create --name command cakradarma/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t cakradarma/label 4-label

docker image inspect cakradarma/label

# ADD Instruction
docker build -t cakradarma/add 5-add

docker container create --name add cakradarma/add

docker container start add

docker container logs add

# COPY Instruction
docker build -t cakradarma/copy 6-copy

docker container create --name copy cakradarma/copy

docker container start copy

docker container logs copy

# .dockerignore
docker build -t cakradarma/ignore 7-ignore

docker container create --name ignore cakradarma/ignore

docker container start ignore

docker container logs ignore

# EXPOSE Instruction
docker build -t cakradarma/expose 8-expose

docker image inspect cakradarma/expose

docker container create --name expose -p 8080:8080 cakradarma/expose

docker container start expose

docker container ls

docker container stop expose

# ENV Instruction
docker build -t cakradarma/env 9-env

docker image inspect cakradarma/env

docker container create --name env --env APP_PORT=9090 -p 9090:9090 cakradarma/env

docker container start env

docker container ls

docker container logs env

docker container stop env

# VOLUME Instruction
docker build -t cakradarma/volume 10-volume

docker image inspect cakradarma/volume

docker container create --name volume -p 8080:8080 cakradarma/volume

docker container start volume

docker container logs volume

docker container inspect volume

# 36022a58cacddbd8d6adaa69c284fe6b5f034f70b9b5c30ae5f1c2dbc7f45d1a

docker volume ls

# WORKDIR Instruction
docker build -t cakradarma/workdir workdir

docker container create --name workdir -p 8080:8080 cakradarma/workdir

docker container start workdir

docker container exec -i -t workdir /bin/sh

# USER Instruction
docker build -t cakradarma/user user

docker container create --name user -p 8080:8080 cakradarma/user

docker container start user

docker container exec -i -t user /bin/sh

# ARG Instruction
docker build -t cakradarma/arg arg --build-arg app=pzn

docker container create --name arg -p 8080:8080 cakradarma/arg

docker container start arg

docker container exec -i -t arg /bin/sh

# HEALTHCHECK Instruction
docker build -t cakradarma/health health

docker container create --name health -p 8080:8080 cakradarma/health

docker container start health

docker container ls

docker container inspect health

# ENTRYPOINT Instruction
docker build -t cakradarma/entrypoint entrypoint

docker image inspect cakradarma/entrypoint

docker container create --name entrypoint -p 8080:8080 cakradarma/entrypoint

docker container start entrypoint

# Multi Stage Build
docker build -t cakradarma/multi multi

docker image ls

docker container create --name multi -p 8080:8080 cakradarma/multi

docker container start multi

# Docker Push
docker tag cakradarma/multi registry.digitalocean.com/programmerzamannow/multi

docker --config /Users/cakradarma/.docker-digital-ocean/ push registry.digitalocean.com/programmerzamannow/multi

docker --config /Users/cakradarma/.docker-digital-ocean/ pull registry.digitalocean.com/programmerzamannow/multi