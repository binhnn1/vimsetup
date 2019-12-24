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

echo "Installing powerline font for powerlevel10k"
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

sudo mv PowerlineSymbols.otf /usr/share/fonts/X11/misc/
fc-cache -vf /usr/share/fonts/X11/misc

mkdir -p $HOME/.config/fontconfig/conf.d
mv 10-powerline-symbols.conf $HOME/.config/fontconfig/conf.d


echo "Installing fzf"
cd plugin/fzf
./install.sh
