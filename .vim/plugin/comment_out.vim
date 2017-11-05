function! s:comment_out(head, tail)
  let cmt_literal = s:get_cmt_literal()
  let is_hlsearch = &hlsearch
  let &hlsearch = 0
  execute a:head.','.a:tail. 's:^:'.cmt_literal.':'
  let &hlsearch = is_hlsearch
endfunction

function! s:get_cmt_literal()
  let literal = '# '
  if &filetype == 'c' || &filetype == 'cpp' || &filetype == 'javascript' || &filetype == 'php'
    let literal = '// '
  elseif &filetype == 'vim'
    let literal = '" '
  endif
  return literal
endfunction

command! -range Cmtout call s:comment_out(<line1>, <line2>)
map cmt :Cmtout<CR>
