#!/bin/sh
echo "Updating environment"

echo "Update vim plugins"
vim +PluginUpdate +q +q

echo "Update powerlevel10k"
cd ~/.vim/zsh/powerlevel10k
git pull origin master
