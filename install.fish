#! /usr/bin/fish

set_color green
echo Installing Symlinks
set_color normal
ln -sf ~/.dotfiles/.config/* ~/.config/

set_color green
echo Installing Hello theme
set_color normal
wget https://raw.githubusercontent.com/143mailliw/install-tool/patch-1/install.sh
bash install.sh
rm install.sh
