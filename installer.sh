#!/usr/bin/env bash
# Must Run as Root

# if [ "$EUID" -ne 0 ]
#   then echo "Please run as root"
#   exit
# fi


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

if [[ $machine == "Linux" ]]
then
    p_man="apt"
elif [[ $machine == "Mac" ]]
then
    # curl -fsSLO https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
    # source install.sh
    # rm install.sh # this doesnt work
    sh -c "$(curl -fsSLO https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/phil/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/phil/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    p_man="brew"
else
    echo "haven't written anything not linux or mac yet"
    exit
fi


$p_man install zsh
chsh -s /bin/zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc
$p_man install vim
mkdir ~/.vim
cp vim/vimrc ~/.vim/vimrc
mkdir ~/.vim/colors
cp vim/monokai.vim ~/.vim/colors/monokai.vim
cd ~
echo "Successful Setup"


'''
Other installs on a new computer
spotify

'''