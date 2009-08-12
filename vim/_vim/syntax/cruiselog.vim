syn region startingServer start="^.*Root WebApplicationContext: initialization started$" end="^.*FrameworkServlet 'spring-tabs': initialization completed in [0-9]* ms$" fold transparent contains=NONE keepend
syn region shuttingDownServer start="^.*\[Shutdown\].*Closing" end="^.*Root WebApplicationContext: initialization started$"me=s-1 fold transparent contains=NONE
syn region foldedStacktrace start="^[a-zA-Z.]*Exception" end="^20"me=s-1 fold transparent
set foldmethod=syntax

set fillchars="fold: "
set foldcolumn=1

function! CruiseLogFoldText()
  let line = getline(v:foldstart)
  if match(line, "Shutdown") > -1
    let output = "Shutting down"
    return "----------Shutting down----------"
  elseif match(line, "initialization started$") > -1
    let output = "Starting"
    return "----------Starting---------------"
  elseif match(line, "Error performing command") > -1
    return "    " . line . "    " . getline(v:foldstart+1)
  else
    let output = line
    return "    " . line
  endif
endfunction
set foldtext=CruiseLogFoldText()
