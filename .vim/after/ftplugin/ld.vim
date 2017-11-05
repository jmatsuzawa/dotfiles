if exists("b:did_ftplugin_ld")
  finish
endif
let b:did_ftplugin_ld = 1

setl expandtab
setl shiftwidth=4
setl tabstop=4
setl softtabstop=4
setl comments=

inoremap {<CR> {<CR>}<ESC>O
