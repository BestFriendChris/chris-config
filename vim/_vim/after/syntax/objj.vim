syn region foldedImpl start="^@implementation" end="@end" fold transparent contains=TOP keepend
syn region foldedMethods start="^[+-]" end="^}\n\n" fold transparent contains=TOP keepend
set foldmethod=syntax

set fillchars=" "
set foldcolumn=3

function! ObjJFoldText()
  let size = v:foldend - v:foldstart + 1
  let firstLine = getline(v:foldstart)
  return printf("%-80s%4d lines", firstLine, size)
endfunction
set foldtext=ObjJFoldText()
