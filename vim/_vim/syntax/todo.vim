nmap <buffer> o o[ ] 
imap <buffer> <Return> <Return>[ ] 

" Indentation
vmap <buffer> <Tab> >
vmap <buffer> <S-Tab> <
nmap <buffer> <Tab> mp>>`pll
nmap <buffer> <S-Tab> mp<<`phh
imap <buffer> <Tab> <C-T>
imap <buffer> <S-Tab> <C-D>

" Converting between "[ ]" and "-"
nmap <buffer> - :s/^\(\s*\)\[.\]/\1[∆]/e<CR>:s/^\(\s*\)-/\1[ ]/e<CR>:s/^\(\s*\)\[∆\]/\1-/e<CR>:noh<CR>

" Converting between "[ ]" and "[-]"
nmap <buffer> = :s/^\(\s*\)\[-\]/\1[∆]/e<CR>:s/^\(\s*\)\[[^∆]\]/\1[-]/e<CR>:s/^\(\s*\)\[∆\]/\1[ ]/e<CR>:noh<CR>

" Converting between "[ ]" and "[√]"
nmap <buffer> <C-x> :s/^\(\s*\)\[ \]/\1[∆]/e<CR>:s/^\(\s*\)\[[^∆]\]/\1[ ]/e<CR>:s/^\(\s*\)\[∆\]/\1[√]/e<CR>:noh<CR>
