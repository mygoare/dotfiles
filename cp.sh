#!/bin/bash
OS = `uname`

if ["$OS" == "Linux" || "$OS" == "Darwin"]
then
	cp ./.vimrc ../.vimrc
else
	cp ./.vimrc ../_vimrc
fi
