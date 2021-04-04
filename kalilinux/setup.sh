#!/bin/env bash

NAME="kali"
IMAGE="kalilinux/kali-rolling"

docker pull $IMAGE
docker run -tid --name $NAME --net host $IMAGE
docker exec -ti $NAME apt update
docker exec -ti $NAME apt upgrade -y
docker exec -ti $NAME apt install -y sudo zsh kitty curl git bat trash-cli zsh-syntax-highlighting fzf
docker exec -ti $NAME useradd -ms /usr/bin/zsh yudi
docker exec -ti $NAME gpasswd -a yudi sudo
echo "New password for root"
docker exec -ti $NAME passwd root
echo "New password for yudi"
docker exec -ti $NAME passwd yudi
# install oh my zsh
docker exec -tiu yudi $NAME sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
docker exec -tiu root $NAME ln -s $HOME/.oh-my-zsh /usr/share/oh-my-zsh
docker exec -tiu yudi $NAME ln -s /usr/share/zsh/plugins $HOME/.config/oh-my-zsh
# install powerlevel10k theme
docker exec -tiu yudi $NAME git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
docker exec -tiu yudi $NAME ln -s $HOME/.config/oh-my-zsh/themes/powerlevel10k/powerlevel10k.zsh-theme /usr/share/oh-my-zsh/themes
# install zsh-syntax-highlighting
docker exec -tiu yudi $NAME ln -s /usr/share/zsh-syntax-highlighting $HOME/.config/oh-my-zsh/plugins
docker exec -tiu root $NAME ln -s $HOME/.config/oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh $HOME/.config/oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
