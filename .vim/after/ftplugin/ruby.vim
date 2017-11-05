if exists("b:did_ftplugin_ruby")
  finish
endif
let b:did_ftplugin_ruby = 1

setl comments=
setl shiftwidth=2
setl tabstop=2
setl softtabstop=2
setl expandtab

inoremap {<CR> {<CR>}<ESC>O
" inoremap ' ''<left>
" inoremap " ""<left>
" inoremap begin<Space> begin<Space><CR>rescue<CR>end<ESC>kkA
" inoremap case<Space> case<Space><CR>when<CR>end<ESC>kkA
" inoremap class<Space> class<Space><CR>end<ESC>kA
" inoremap def<Space> def<Space><CR>end<ESC>kA
" inoremap do<CR> do<CR>end<ESC>O
" inoremap do<Space> do<Space><CR>end<ESC>kA
" inoremap for<Space> for<Space><CR>end<ESC>kA
" inoremap if<Space> if<Space><CR>end<ESC>kA
" inoremap unless<Space> unless<Space><CR>end<ESC>kA
" inoremap until<Space> until<Space><CR>end<ESC>kA
" inoremap while<Space> while<Space><CR>end<ESC>kA
