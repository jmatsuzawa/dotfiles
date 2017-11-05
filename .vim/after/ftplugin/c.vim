if exists("b:did_ftplugin_c")
  finish
endif
let b:did_ftplugin_c = 1

setl comments=
setl shiftwidth=4
setl tabstop=4
setl softtabstop=4
setl expandtab

runtime! ftplugin/man.vim
nnoremap K :Man <cword><CR>
nnoremap main iint main(int argc, char **argv) {<CR><CR>}<Esc>ki<Tab>
inoremap {<CR> {<CR>}<ESC>O
" inoremap ' ''<left>
" inoremap " ""<left>
" inoremap do<Space> do<Space>{<CR>}<Space>while<Space>();<Esc>O
" inoremap for<Space> for<Space>()<Space>{<CR>}<Esc>k^wa
" inoremap if<Space> if<Space>()<Space>{<CR>}<Esc>k^wa
" inoremap switch<Space> switch<Space>()<Space>{<CR>case<CR>}<Esc>k<<k^wa
" inoremap while<Space> while<Space>()<Space>{<CR>}<Esc>k^wa

let s:coding_styles = {}
let s:coding_styles['GNU'] = 'set expandtab   tabstop=8 shiftwidth=2 softtabstop=2 cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1'
command!
      \ -bar -nargs=1 -complete=customlist,s:coding_style_complete
      \ CodingStyle
      \ execute get(s:coding_styles, <f-args>, '')
function! s:coding_style_complete(...) "{{{
  return keys(s:coding_styles)
endfunction "}}}

function! s:gnu_style()
  set expandtab
  set tabstop=8
  set shiftwidth=2
  set softtabstop=2
  set cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  inoremap ( (<ESC>:call Insert_space_before_paren()<CR>a
endfunction

function! Insert_space_before_paren()
  let l:c = getline('.')[col('.')-2]
  if l:c != ' ' && l:c != '_' && col('.') != 1
    exec "normal! i "
    exec "normal! l"
  endif
endfunction

command! GNU call s:gnu_style()
