set buftype=nofile
set bufhidden=hide
setlocal noswapfile

silent noautocmd file Hg\ Logs

nmap <buffer>  0yw:sp Log\ ":set buftype=nofile:set bufhidden=hide:setlocal noswapfile:nmap <buffer> Q ZQ:r ! hg log -p -r ":set ft=diffggdd
nmap <buffer> Q ZQ
