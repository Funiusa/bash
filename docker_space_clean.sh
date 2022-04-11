#!/bin/bash

let cont=`docker ps -aq | wc -m`

# container free
if [[ $cont == 0 ]]; then
	printf "Containers are already removed\n\n";
else
	yes | docker container prune;
	printf "Containers have just been removed\n\n";
fi

# images
let img=`docker images -aq | wc -m`
if [[ $img == 0 ]]; then
	printf "Images are already removed\n\n";
else
	yes | docker images prune;
	printf "Images have been removed\n\n";
fi

# volumes
let vol=`docker volume ls -q | wc -m`

if [[ $vol == 0 ]]; then
	printf "Volumes are already removed\n\n";
else
	yes | docker volume prune 2> /dev/null;
	printf "Volumes have been removed\n\n";
fi

# network
let net=`docker network ls -q | wc -m`

if [[ $net == 0 ]]; then 
	printf "Network connections are already removed\n\n";
else
	docker network disconnect -f $(docker network ls -q) 2> /dev/null;
	yes | docker network prune > /dev/null;
	printf "All network conntctions are disconnect and removed\n\n";
fi

# system
yes | docker system prune > /dev/null
docker system df
