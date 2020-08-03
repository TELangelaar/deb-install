#!/usr/bin/env bash

if [ -d dotfiles ]; then
    pushd ~/Documents/gitrepos/deb-install/dotfiles
else
    mkdir ./dotfiles
    pushd ~/Documents/gitrepos/deb-install/dotfiles
fi

if [ -d vim ]; then
    cp  ~/.vimrc ./vim/
    echo .vimrc updated
else
    mkdir ./vim
    echo directory "vim" created
    cp  ~/.vimrc ./vim
    echo .vimrc updated
fi

if [ -d zsh ]; then
    cp  ~/.zshrc ./zsh
    echo .zshrc updated
else
    mkdir ./zsh
    echo directory "zshrc" created
    cp  ~/.zshrc ./zsh
    echo .zshrc updated
fi

if [ -d rofi ]; then
    cp -r  ~/.config/rofi .
    echo rofi files updated
else
    echo directory "rofi" created
    cp -r ~/.config/rofi .
    echo rofi files updated
fi

if [ -d i3 ]; then
    cp -r ~/.config/i3 .
    echo i3 dot files updated
else
    echo directory "i3" created
    cp -r ~/.config/i3 .
    echo i3 dot files updated
fi

if [ -d compton ]; then
    cp -r ~/.config/compton/compton.conf ./compton
    echo compton.conf updated
else
    mkdir ./compton
    echo directory "compton" created
    cp -r ~/.config/compton/compton.conf ./compton
    echo compton.conf updated
fi

popd
