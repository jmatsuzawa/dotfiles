if exists("b:did_ftplugin_smarty")
  finish
endif
let b:did_ftplugin_smarty = 1

source ${HOME}/.vim/after/ftplugin/xml.vim
inoremap <C-d> $
