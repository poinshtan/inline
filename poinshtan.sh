#!/usr/bin/env bash

cd $HOME/PoinshhtanHelper

install() {
		sudo apt-get update
		sudo apt-get upgrade
sudo apt-get install lua5.1 luarocks lua-socket lua-sec redis-server curl 
sudo luarocks install oauth 
sudo luarocks install redis-lua 
sudo luarocks install lua-cjson 
sudo luarocks install ansicolors 
sudo luarocks install serpent 
}

red() {
  printf '\e[1;32m%s\n\e[0;39;49m' "$@"
}
update() {
	git pull
}

if [ "$1" = "install" ]; then
	install
elif [ "$1" = "update" ]; then
	update
	exit 1
else
	red "تسارجا لاحرد نیالنیا..."
	#sudo service redis-server restart
	lua ./bot/bot.lua
fi
