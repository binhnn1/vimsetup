cd ~
git clone https://github.com/binhnn1/vimsetup.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule update --init --recursive
