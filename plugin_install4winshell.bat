rem plugin manager
set VIM_HOME=%WIN_SHELL_APPS%\vim
if not exist %VIM_HOME%\vimfiles\bundle\Vundle.vim  git clone https://github.com/VundleVim/Vundle.vim  %VIM_HOME%\vimfiles/bundle/Vundle.vim
copy /y _vimrc %VIM_HOME%
%VIM_HOME%\vim80\vim +PluginInstall +qall
