echo "Installing vim setup"

VIM_PATH=$HOME/.vim
git clone https://github.com/binhnn1/vimsetup.git $VIM_PATH

cd $VIM_PATH
git submodule update --init --recursive

echo "Installing zsh"
sudo apt install zsh

echo "Installing ohmyzsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing powerlevel10k theme for ohmyzsh"
ln -sf $VIM_PATH/zsh/powerlevel10k/ 		$HOME/.oh-my-zsh/themes/powerlevel10k

ln -sf $VIM_PATH/vimrc 				$HOME/.vimrc
ln -sf $VIM_PATH/gitconf/gitconfig  		$HOME/.gitconfig
ln -sf $VIM_PATH/gitconf/git_commit_msg 	$HOME/.git_commit_msg

#Run this after restart shell
#ln -sf ~/.vim/zsh/zshrc ~/.zshrc

echo "Installing Meslo Nerd Font patched for powerlevel10k"
FONT_PATH=/usr/share/fonts/truetype/
sudo mkdir -p $FONT_PATH
sudo cp $VIM_PATH/zsh/MesloFont/*.ttf $FONT_PATH
sudo fc-cache -f
#Use Meslo font by Open Terminal → Preferences and click on the selected profile under Profiles. Check Custom font under Text Appearance and select MesloLGS NF Regular

echo "Installing fzf"
$VIM_PATH/plugin/fzf/install

#Run p10k configure after installation
