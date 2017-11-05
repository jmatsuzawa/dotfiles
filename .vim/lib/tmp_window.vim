function! Cmd_on_tmp_window(...)
  if a:0 == 0
    return
  endif

  call s:open_tmp_window()

  let l:cmd = s:get_cmd(a:000)
  call s:read_cmd_on_window(l:cmd)
  1 delete
endfunction


function! s:open_tmp_window()
  new
  setl buftype=nofile
  setl noswapfile
endfunction


function! s:get_cmd(argv)
"  let l:cmd = join(a:argv)
"  return l:cmd
  return join(a:argv)
endfunction


function! s:read_cmd_on_window(cmd)
  silent exec "r!" . a:cmd
endfunction


command! -nargs=+ Tmp call Cmd_on_tmp_window(<f-args>)
