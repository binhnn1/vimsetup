#!/bin/sh
echo "Installing gcc-8, g++-8"
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt install -y gcc-8 g++-8
sudo apt install -y build-essential cmake vim-nox python3-dev

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 700 --slave /usr/bin/g++ g++ /usr/bin/g++-7
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800 --slave /usr/bin/g++ g++ /usr/bin/g++-8

echo "Installing vim"
sudo apt install -y vim
sudo apt install -y vim-gnome
sudo apt install -y neovim

echo "Installing vim-plugin"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing vim setup"
VIM_PATH=$HOME/vimsetup
git clone https://github.com/binhnn1/vimsetup.git $VIM_PATH

echo "Installing zsh"
sudo apt install -y zsh
sudo chsh -s $(which zsh)

echo "Installing ohmyzsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing powerlevel10k theme for ohmyzsh"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $VIM_PATH/zsh/powerlevel10k
sudo ln -sf $VIM_PATH/zsh/powerlevel10k/ $HOME/.oh-my-zsh/custom/themes/powerlevel10k

echo "Customizing aliases for zsh"
sudo ln -sf $VIM_PATH/custom/aliases.zsh $ZSH_CUSTOM/aliases.zsh

sudo ln -sf $VIM_PATH/vimrc $HOME/.vimrc
sudo ln -sf $VIM_PATH/gitconf/gitconfig $HOME/.gitconfig
sudo ln -sf $VIM_PATH/gitconf/git_commit_msg $HOME/.git_commit_msg


#echo "Installing dracula theme for terminal"
#sudo apt install -y dconf-cli
#git clone https://github.com/dracula/gnome-terminal $VIM_PATH/gnome-terminal
#cd $VIM_PATH/gnome-terminal
#./install.sh

#echo "Installing Meslo Nerd Font patched for powerlevel10k"
#FONT_PATH=/usr/share/fonts/truetype/
#sudo mkdir -p $FONT_PATH
#sudo cp $VIM_PATH/zsh/MesloFont/*.ttf $FONT_PATH
#sudo fc-cache -f
##Use Meslo font by Open Terminal → Preferences and click on the selected profile under Profiles. Check Custom font under Text Appearance and select MesloLGS NF Regular


echo "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Install xclip"
sudo apt install -y xclip

echo
echo
echo **************************************
echo "Finished Installing. Run the Following:"
echo "1. sudo ln -sf ~/.vim/zsh/zshrc ~/.zshrc"
echo "2. Log out / Log in"
echo "3. sudo vim. :PlugInstall"
echo "4. p10k configure"
echo **************************************
echo
echo
echo "TODO: Install coc, ccls"
