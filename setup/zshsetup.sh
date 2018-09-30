#!/bin/bash
#install zsh
sudo apt install -y zsh fonts-powerline curl 
cd $HOME
#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#install spaceship
git clone https://github.com/denysdovhan/spaceship-prompt.git "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt"
ln -s "$HOME/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/themes/spaceship.zsh-theme"

#install the .zshrc
cwd=$(pwd)
zshrcPath="$cwd/../zsh/.zshrc"
#remove files if they already exist
rm -rf $HOME/.zshrc
ln -s $zshrcPath $HOME/.zshrc