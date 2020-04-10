#!/bin/bash
RELATIVE_DIR=`dirname "$0"`
CUR_PATH=`readlink -f $RELATIVE_DIR`

sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4AB0F789CBA31744CC7DA76A8CF63AD3F06FC659
sudo apt update
sudo apt install -y vim clang-format

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cat $CUR_PATH/vimrc >> ~/.vimrc
cat $CUR_PATH/plugin_list >> ~/.vimrc

vim +slient +VimEnter +PlugInstall +qall
