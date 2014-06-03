#!/bin/bash
BASEDIR=`dirname $0`
sudo apt-get install realpath
BASEDIR=`realpath $BASEDIR`

git clone https://github.com/gmarik/vundle.git bundle/vundle
sudo apt-get install python-pip
sudo pip install git+git://github.com/Lokaltog/powerline

if [ ! -h ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc.old
fi
if [ ! -h ~/.vim ]
then
    mv ~/.vim ~/.vim.old
fi

ln -s $BASEDIR ~/.vim
ln -s $BASEDIR/vimrc ~/.vimrc

vim +BundleInstall +qall

mkdir -p ~/.fonts/ ~/.fonts.conf.d/ ~/.config/fontconfig/conf.d/
cp $BASEDIR/bundle/powerline/font/PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
cp $BASEDIR/bundle/powerline/font/10-powerline-symbols.conf ~/.fonts.conf.d/
cp $BASEDIR/bundle/powerline/font/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
pushd $BASEDIR/gnome-terminal-colors-solarized
./install.sh -s dark -p Solarized
./set_dark.sh
popd

mkdir -p $BASEDIR/undodir
