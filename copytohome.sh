#!/usr/bin/env bash

pushd ./dotfiles

cp -v ./vim/.vimrc ~
cp -v ./zsh/.zshrc ~
cp -vr ./rofi/ ~/.config/
cp -vr ./i3/ ~/.config/
cp -vr ./compton/ ~/.config/
