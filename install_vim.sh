# install from source  do not use yum install as that doen't include all futures

#http://www.vim.org/git.php
root=`pwd`
yum -y install ncurses-devel

git clone https://github.com/vim/vim.git 
cd vim
#git pull
cd src
make distclean
./configure --with-features=huge --enable-multibyte  --enable-pythoninterp  --with-luajit --enable-luainterp=yes
make
sudo make install


vim --version
#vim --version | grep python

