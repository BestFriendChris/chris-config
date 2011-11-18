if exists('loaded_chmod')
  finish
endif
let loaded_chmod=1

function! s:Chmod(mod)
  let fname = expand("%:p")
  checktime
  execute "au FileChangedShell " . fname . " :echo"
  "silent !chmod a:mod %
  let s:c = "!chmod " . a:mod . " %"
  silent exec s:c
  checktime
  execute "au! FileChangedShell " . fname
  !ls -l %
endfunction
command! -nargs=1 Chmod call s:Chmod(<q-args>)
