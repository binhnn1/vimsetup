echo "Installing vim setup"
cd ~
git clone https://github.com/binhnn1/vimsetup.git ~/.vim

cd ~/.vim
git submodule update --init --recursive

echo "Installing zsh"
sudo apt install zsh

echo "Installing ohmyzsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing powerlevel10k theme for ohmyzsh"
ln -sf ~/.vim/zsh/powerlevel10k/ ~/.oh-my-zsh/custom/themes/powerlevel10k

ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/gitconf/gitconfig  ~/.gitconfig

#Run this after restart shell
#ln -sf ~/.vim/zsh/zshrc ~/.zshrc

echo "Installing powerline font for powerlevel10k"
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

sudo mv PowerlineSymbols.otf /usr/share/fonts/X11/misc/
fc-cache -vf /usr/share/fonts/X11/misc

mkdir -p ~/.config/fontconfig/conf.d
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d
