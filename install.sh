#!/bin/bash
VIMRC="${HOME}/.vimrc"
VIM_DIR="${HOME}/.vim"
AUTOLOAD="${VIM_DIR}/autoload"
BUNDLE="${VIM_DIR}/bundle"
#check for existing ~/.vimrc file
if [ -e "${VIMRC}" ] ; then
		echo "you already have a ~/.vimrc file"
else
		#	install .vimrc
		ln -s ${PWD}/vimrc ${VIMRC}
fi

#	Install pathogen
if [ ! -e "${AUTOLOAD}" ] ; then
		mkdir -p "${AUTOLOAD}"
fi

if [ ! -e "${BUNDLE}" ] ; then
		mkdir -p "${BUNDLE}"
fi

if [ -e "${AUTOLOAD}/pathogen.vim" ] ; then
		echo "pathogen.vim already installed"
else
	ln -s ${PWD}/vim/autoload/pathogen.vim ${AUTOLOAD}/pathogen.vim
fi
