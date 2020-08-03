#!/usr/bin/env bash

pushd ./dotfiles

cp ./vim/.vimrc ~
cp ./zsh/.zshrc ~
cp -r ./rofi/ ~/.config/
cp -r ./i3/ ~/.config/
cp -r ./compton/ ~/.config/
