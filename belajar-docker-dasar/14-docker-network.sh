# show all networks
docker network ls
# create new network
docker network create --driver bridge contohnetwork
# remove network (cannot delete network if has been already used by container
docker network rm contohnetwork
