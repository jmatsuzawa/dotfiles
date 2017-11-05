if exists("b:did_ftplugin_python")
  finish
endif
let b:did_ftplugin_python = 1

setl comments=
setl shiftwidth=4
setl tabstop=4
setl softtabstop=0
setl expandtab
setl textwidth=80

" Delete trailing spaces at saving
autocmd BufWritePre * :%s/\s\+$//ge

inoremap <S-Tab> <BS><BS><BS><BS>


" inoremap class<Space> class<Space>:<Left>
" inoremap def<Space> def<Space>:<Left>
" inoremap for<Space> for<Space>:<Left>
" inoremap if<Space> if<Space>:<Left>
" inoremap while<Space> while<Space>:<Left>
