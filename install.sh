echo "Installing vim setup"
cd ~
git clone https://github.com/binhnn1/vimsetup.git ~/.vim

cd ~/.vim
git submodule update --init --recursive

echo "Installing zsh"
sudo apt install zsh

echo "Installing ohmyzsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing powerlevel9k theme for ohmyzsh"
ln -sf ~/.vim/zsh/powerlevel9k/ ~/.oh-my-zsh/custom/themes/powerlevel9k

ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/gitconf/gitconfig  ~/.gitconfig

#Run this after restart shell
#ln -sf ~/.vim/zsh/zshrc ~/.zshrc
