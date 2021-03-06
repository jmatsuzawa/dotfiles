if exists("b:did_ftplugin_vala")
  finish
endif
let b:did_ftplugin_vala = 1

setl ft=cs
setl comments=
setl shiftwidth=4
setl tabstop=4
setl expandtab
inoremap <S-Tab> <BS><BS><BS><BS>

" Disable valadoc syntax highlight
"let vala_ignore_valadoc = 1

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1
" Disable trailing space errors
"let vala_no_trail_space_error = 1
" Disable space-tab-space errors
let vala_no_tab_space_error = 1

" Minimum lines used for comment syncing (default 50)
"let vala_minlines = 120
