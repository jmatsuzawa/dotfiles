if exists("b:did_ftplugin_xml")
  finish
endif
let b:did_ftplugin_xml = 1

setl shiftwidth=2
setl tabstop=2
setl expandtab
setl comments=
runtime! ftplugin/xml.vim
" inoremap ' ''<left>
" inoremap " ""<left>
inoremap <buffer> </ </<C-x><C-o>
