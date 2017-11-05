if exists("b:did_ftplugin_rng")
  finish
endif
let b:did_ftplugin_rng = 1

source ${HOME}/.vim/after/ftplugin/xml.vim
setl shiftwidth=2
setl tabstop=2
setl expandtab
setl comments=
runtime! ftplugin/rng.vim
" inoremap ' ''<left>
" inoremap " ""<left>
inoremap <buffer> </ </<C-x><C-o>
