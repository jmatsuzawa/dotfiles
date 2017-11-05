if exists("b:did_ftplugin_javascript")
  finish
endif
let b:did_ftplugin_javascript = 1

setl expandtab
setl shiftwidth=4
setl tabstop=4
setl softtabstop=4
setl comments=

inoremap {<CR> {<CR>}<ESC>O
" inoremap ' ''<left>
" inoremap " ""<left>
" inoremap do<Space> do<Space>{<CR>}<Space>while<Space>();<Esc>O
" inoremap for<Space> for<Space>()<Space>{<CR>}<Esc>k^wa
" inoremap if<Space> if<Space>()<Space>{<CR>}<Esc>k^wa
" inoremap switch<Space> switch<Space>()<Space>{<CR>case<CR>}<Esc>k<<k^wa
" inoremap try<Space> try<Space>{<CR>}<Space>catch<Space>()<Space>{<CR>}<Esc>kO
" inoremap while<Space> while<Space>()<Space>{<CR>}<Esc>k^wa
