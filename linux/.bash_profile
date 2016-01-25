# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
export PATH

ip="http://10.24.51.208:8888" 
alias md=mkdir
alias vi=vim
http_proxy="$ip"
https_proxy="$ip"
git config --global http.proxy "$ip"
export http_proxy
export https_proxy



export JAVA_HOME=/root/jdk1.8.0_66
path=$JAVA_HOME/bin:$path
