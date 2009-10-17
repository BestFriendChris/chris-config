#!/bin/zsh

cd $0:h
cat ./HOME_zshenv | sed "s:^ZDOTDIR=.*:ZDOTDIR=$PWD:" >| $HOME/.zshenv
