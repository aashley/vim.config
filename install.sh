#!/bin/bash
git clone https://github.com/gmarik/vundle.git bundle/vundle
sudo apt-get install python-pip

git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git
pushd gnome-terminal-colors-solarized
./solarize
popd
