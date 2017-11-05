if exists("b:did_ftplugin_sed")
  finish
endif
let b:did_ftplugin_sed = 1

setl comments=
setl shiftwidth=2
setl tabstop=2
setl softtabstop=2
setl expandtab
runtime! ftplugin/man.vim
" nnoremap K :Man <cword><CR>
" inoremap ' ''<left>
" inoremap " ""<left>
" inoremap case<Space> case<Space>in<CR>)<CR>esac<Esc>k<<k^wi
" inoremap if<Space> if<Space>;<Space>then<CR>fi<Esc>k^wi
" inoremap if[ if<Space>[<Space><Space>];<Space>then<CR>fi<Esc>k^wlli
" inoremap for<Space> for<Space>;<Space>do<CR>done<Esc>k^wi
" inoremap for@ for<Space><Space>in<Space>"$@"; do<CR>done<Esc>k^whi
" inoremap while<Space> while<Space>;<Space>do<CR>done<Esc>k^wi
