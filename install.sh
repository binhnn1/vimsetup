echo "Installing vim setup"

VIM_PATH=$HOME/.vim
git clone https://github.com/binhnn1/vimsetup.git $VIM_PATH

echo "Install Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git $VIM_PATH/bundle/Vundle.vim

echo "Installing zsh"
sudo apt install zsh

echo "Installing ohmyzsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing powerlevel10k theme for ohmyzsh"
sudo ln -sf $VIM_PATH/zsh/powerlevel10k/ 		$HOME/.oh-my-zsh/themes/powerlevel10k

sudo ln -sf $VIM_PATH/vimrc 							$HOME/.vimrc
sudo ln -sf $VIM_PATH/gitconf/gitconfig  		$HOME/.gitconfig
sudo ln -sf $VIM_PATH/gitconf/git_commit_msg 	$HOME/.git_commit_msg

#Run this after restart shell
#sudo ln -sf ~/.vim/zsh/zshrc ~/.zshrc

echo "Installing Meslo Nerd Font patched for powerlevel10k"
FONT_PATH=/usr/share/fonts/truetype/
sudo mkdir -p $FONT_PATH
sudo cp $VIM_PATH/zsh/MesloFont/*.ttf $FONT_PATH
sudo fc-cache -f
#Use Meslo font by Open Terminal → Preferences and click on the selected profile under Profiles. Check Custom font under Text Appearance and select MesloLGS NF Regular

sudo apt install build-essential python3-dev
echo "Installing fzf"
$VIM_PATH/bundle/fzf/install

echo "Installing YouCompleteMe"
python3 $VIM_PATH/bundle/YouCompleteMe/install.py --clang-completer

#Run p10k configure after installation
