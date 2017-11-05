if exists("b:did_ftplugin_vim")
  finish
endif
let b:did_ftplugin_vim = 1

setl comments=
setl shiftwidth=2
setl tabstop=2
setl softtabstop=2
setl expandtab
nnoremap K :exec 'help ' . expand('<cword>')<CR>
" inoremap for<Space> for<Space><CR>endfor<ESC>kA
" inoremap function<Space> function<Space><CR>endfunction<ESC>kA
" inoremap if<Space> if<Space><CR>endif<ESC>kA
" inoremap while<Space> while<Space><CR>endwhile<ESC>kA
