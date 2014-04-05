#!/bin/bash

ln -s ./.vim/.vimrc ./.vimrc
vim +PluginInstall +qall
