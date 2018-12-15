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

#	Install Tagbar
if [ -d "${BUNDLE}/tagbar" ] ; then
		echo "tagbar already instaled"
else
		ln -s ${PWD}/tagbar ${BUNDLE}
fi

#	Install vim-fugitive
if [ -d "${BUNDLE}/vim-fugitive" ] ; then
		echo "vim-fugitive already installed"
else
		ln -s ${PWD}/vim-fugitive ${BUNDLE}
fi
