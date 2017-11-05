if exists("b:did_ftplugin_cpp")
  finish
endif
let b:did_ftplugin_cpp = 1

source ${HOME}/.vim/after/ftplugin/c.vim
" inoremap class<Space> class<Space><CR>{<CR>}<ESC>kkA
" inoremap try<Space> try<Space>{<CR>}<Space>catch<Space>()<Space>{<CR>}<Esc>kO
