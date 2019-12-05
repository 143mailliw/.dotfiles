#! /usr/bin/fish

set_color green
echo Installing Symlinks
set_color normal
ln -sf ~/.dotfiles/.config/* ~/.config/

set_color green
echo Install OMF
set_color normal
curl -L https://get.oh-my.fish | fish

set_color green
echo Installing bobthefish
set_color normal
omf install bobthefish

set_color green
echo Installing Hello theme
set_color normal
wget https://raw.githubusercontent.com/143mailliw/install-tool/patch-1/install.sh
bash install.sh
rm install.sh
