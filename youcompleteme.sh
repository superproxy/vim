git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
yum install cmake
yum install python-devel
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
#./install.py --clang-completer

