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

echo "Installing vim setup"
VIM_PATH=$HOME/.vim
git clone https://github.com/binhnn1/vimsetup.git $VIM_PATH

echo "Install Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git $VIM_PATH/bundle/Vundle.vim

echo "Installing zsh"
sudo apt install -y zsh
sudo chsh -s $(which zsh)

echo "Installing ohmyzsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing powerlevel10k theme for ohmyzsh"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $VIM_PATH/zsh/powerlevel10k
sudo ln -sf $VIM_PATH/zsh/powerlevel10k/ 		$HOME/.oh-my-zsh/custom/themes/powerlevel10k

sudo ln -sf $VIM_PATH/vimrc 							$HOME/.vimrc
sudo ln -sf $VIM_PATH/gitconf/gitconfig  			$HOME/.gitconfig
sudo ln -sf $VIM_PATH/gitconf/git_commit_msg 	$HOME/.git_commit_msg


echo "Installing dracula theme for terminal"
sudo apt install -y dconf-cli
git clone https://github.com/dracula/gnome-terminal $VIM_PATH/gnome-terminal
cd $VIM_PATH/gnome-terminal
./install.sh

echo "Installing Meslo Nerd Font patched for powerlevel10k"
FONT_PATH=/usr/share/fonts/truetype/
sudo mkdir -p $FONT_PATH
sudo cp $VIM_PATH/zsh/MesloFont/*.ttf $FONT_PATH
sudo fc-cache -f
#Use Meslo font by Open Terminal → Preferences and click on the selected profile under Profiles. Check Custom font under Text Appearance and select MesloLGS NF Regular


echo "Installing fzf"
$VIM_PATH/bundle/fzf/install

echo "Installing YouCompleteMe"
python3 $VIM_PATH/bundle/YouCompleteMe/install.py --clang-completer --clangd-completer

#echo "Installing ctags"
#sudo apt install -y ctags


echo
echo
echo **************************************
echo "Finished Installing. Run the Following:"
echo "1. sudo ln -sf ~/.vim/zsh/zshrc ~/.zshrc"
echo "2. Log out / Log in"
echo "3. sudo vim. :PluginInstall"
echo "4. p10k configure"
echo "5. run ctags -R in project dir"
echo **************************************
echo
echo
