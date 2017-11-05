function! View_height()
"  return &lines
  let l:thiswin = winnr()
  let l:height = s:get_view_height()
  exec "norm! " . thiswin ."\<C-W>w"
  return l:height
endfunction


function! s:get_view_height()
  let l:height = 0

  wincmd t
  while 1
    let l:height += winheight(0)
    if s:is_bottom_win()
      break
    endif
    wincmd j
  endwhile

  return l:height
endfunction


function! s:is_bottom_win()
  let l:winnum = winnr()
  wincmd j
  let l:next_winnum = winnr()

  if l:winnum == l:next_winnum
    return 1
  endif
  wincmd k
  return 0
endfunction
