#!/bin/bash
OS=`uname`

if [ "$OS" = "Linux" ]
then
	cp ./.vimrc ../.vimrc
elif [ "$OS" = "Darwin" ] 
then
	cp ./.vimrc ../.vimrc
else
	cp ./.vimrc ../_vimrc
fi

