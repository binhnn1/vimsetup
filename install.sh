echo "Installing vim setup"
cd ~
git clone https://github.com/binhnn1/vimsetup.git $HOME/.vim

cd $HOME/.vim
git submodule update --init --recursive

echo "Installing zsh"
sudo apt install zsh

echo "Installing ohmyzsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing powerlevel10k theme for ohmyzsh"
ln -sf $HOME/.vim/zsh/powerlevel10k/ 		$HOME/.oh-my-zsh/themes/powerlevel10k

ln -sf $HOME/.vim/vimrc 			$HOME/.vimrc
ln -sf $HOME/.vim/gitconf/gitconfig  		$HOME/.gitconfig
ln -sf $HOME/.vim/gitconf/git_commit_msg 	$HOME/.git_commit_msg

#Run this after restart shell
#ln -sf ~/.vim/zsh/zshrc ~/.zshrc

echo "Installing Meslo Nerd Font patched for powerlevel10k"
sudo mkdir -p /usr/share/fonts/truetype/
sudo cp $HOME/.vim/zsh/MesloFont/*.ttf /usr/share/fonts/truetype/
sudo fc-cache -f
#Use Meslo font by Open Terminal → Preferences and click on the selected profile under Profiles. Check Custom font under Text Appearance and select MesloLGS NF Regular

echo "Installing fzf"
cd plugin/fzf
./install.sh

#Run p10k configure after installation
