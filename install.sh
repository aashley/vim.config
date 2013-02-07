#!/bin/bash
git clone https://github.com/gmarik/vundle.git bundle/vundle
sudo apt-get install python-pip
pip install --user git+git://github.com/Lokaltog/powerline
vim +BundleInstall +qall

mkdir -p ~/.fonts/ ~/.fonts.conf.d/ ~/.config/fontconfig/conf.d/
cp bundle/powerline/font/PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
cp bundle/powerline/font/10-powerline-symbols.conf ~/.fonts.conf.d/
cp bundle/powerline/font/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
pushd gnome-terminal-colors-solarized
./solarize
popd
