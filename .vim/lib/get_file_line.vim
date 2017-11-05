function! Get_file_line(str)
  let l:fname_sep_pos = match(a:str, ':')
  if l:fname_sep_pos == -1 
    return -1
  endif

  let l:fname = strpart(a:str, 0, l:fname_sep_pos)

  let l:line_sep_pos = match(a:str, ':', l:fname_sep_pos+1)
  if l:line_sep_pos == -1 
    return -1
  endif
  let l:line_start = l:fname_sep_pos + 1
  let l:line = strpart(a:str, l:line_start, l:line_sep_pos - l:line_start)

  return [l:fname, l:line]
endfunction
