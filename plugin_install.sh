#plugin manager
#cd /usr/local/share/vim
git clone https://github.com/VundleVim/Vundle.vim  ~/.vim/bundle/Vundle.vim

echo "cp"

#force replace vimrc
#cp -f  vimrc  /etc/vimrc
cp -f  vimrc  ~/.vim/vimrc

#vim :PluginInstall
vim +PluginInstall +qall


