#!/bin/env bash

NAME="kali"
IMAGE="kalilinux"

# options
case $1 in
	commit) docker commit $NAME $IMAGE;;
	reboot) docker commit $NAME $IMAGE && docker stop $NAME && docker container rm $NAME;;
	fast-reboot) docker stop $NAME && docker container rm $NAME;;
esac

function boot() {
	docker run -td \
		--privileged \
		--net host \
		--name $NAME \
		--gpus all \
		--security-opt apparmor=unconfined \
		-e DISPLAY=$DISPLAY \
		-e DBUS_SESSION_BUS_ADDRESS=$DBUS_SESSION_BUS_ADDRESS \
		-e QT_QPA_PLATFORMTHEME=$QT_QPA_PLATFORMTHEME \
		-u yudi \
		-v /hdd:/hdd \
		-v /run/user/1000:/run/user/1000 \
		-v dev/environment:/etc/environment \
		-v dev/hosts:/etc/hosts \
		-v $HOME/.config/zsh:$HOME/.config/zsh:ro \
		-v $HOME/.config/xfce4:$HOME/.config/xfce4:ro \
		-v $HOME/.gnupg:$HOME/.config/.gnupg:ro \
		-v $HOME/.p10k.zsh:$HOME/.config/.p10k.zsh:ro \
		-v $HOME/.themes:$HOME/.config/.themes:ro \
		-v $HOME/.zshrc:$HOME/.config/.zshrc:ro \
		-v $HOME/.Xauthority:$HOME/.Xauthority \
		-v /tmp/:/tmp/ \
		$IMAGE
}

# if container doesn't exist
[[ -z `docker ps -aqf name=$NAME` ]] && boot

# if container stopped
[[ -z `docker ps -qf name=$NAME` ]] && docker start $NAME

# Start the necessary services
docker exec -du root $NAME service binfmt-support start

docker exec -ti \
	-w "`pwd`" \
	$NAME \
	/usr/bin/zsh
