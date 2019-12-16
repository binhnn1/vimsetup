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

echo "Installing powerline font for powerlevel9k"
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

FONT_PATH=/usr/share/fonts/X11/misc
FONT_CONFIG=~/.config/fontconfig/conf.d

sudo mv PowerlineSymbols.otf FONT_PATH
fc-cache -vf FONT_PATH

mkdir -p FONT_CONFIG
mv 10-powerline-symbols.conf FONT_CONFIG
