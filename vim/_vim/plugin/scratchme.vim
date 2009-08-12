if exists('loaded_my_scratch')
  finish
endif
let loaded_my_scratch=1

function! s:ScratchMe()
  setlocal buftype=nofile
  setlocal bufhidden=wipe
  setlocal noswapfile
  setlocal buflisted
endfunction

command! -nargs=0 Sme call s:ScratchMe()
