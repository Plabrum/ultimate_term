#!/usr/bin/env bash
# Must Run as Root

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


# Installer Script for new systems
unameOut="$(uname -s)"

case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

read -p "Run installer for $machine (y/n)? " answer
case ${answer:0:1} in
    y|Y|Yes|yes )
        echo Yes 
    ;;
    * )
        echo Exiting ...
        exit
    ;;
esac

if [[$machine == "Linux"]]; then
    p_man="apt"
elif [[$machine == "Mac"]]; then
    # curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
    # p_man="brew"
else 
    echo "haven't written anything not linux or mac yet"
    exit
fi

$p_man install zsh
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
source ~/.zshrc
$p_man install vim
mkdir ~/.vim
cp vim/vimrc ~/.vim/vimrc
mkdir ~/.vim/colors
cp vim/monokai.vim ~/.vim/colors/monokai.vim
