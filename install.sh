#!/bin/bash
git clone https://github.com/gmarik/vundle.git bundle/vundle
sudo apt-get install python-pip
pip install --user git+git://github.com/Lokaltog/powerline
vim +BundleInstall +qall

git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
pushd gnome-terminal-colors-solarized
./solarize
popd
