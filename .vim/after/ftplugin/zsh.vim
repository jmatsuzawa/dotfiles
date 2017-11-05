if exists("b:did_ftplugin_zsh")
  finish
endif
let b:did_ftplugin_zsh = 1

source ${HOME}/.vim/after/ftplugin/sh.vim
