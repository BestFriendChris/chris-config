nmap <buffer> o o[ ] 
imap <buffer> <Return> <Return>[ ] 

" Indentation
vmap <buffer> <Tab> >
vmap <buffer> <S-Tab> <
nmap <buffer> <Tab> mp>>`pll
nmap <buffer> <S-Tab> mp<<`phh
imap <buffer> <Tab> <Esc><Tab>a
imap <buffer> <S-Tab> <Esc><S-Tab>a

" Converting between "[ ]" and "-"
nmap <buffer> - :s/^\(\s*\)\[.\]/\1[∆]/e<CR>:s/^\(\s*\)-/\1[ ]/e<CR>:s/^\(\s*\)\[∆\]/\1-/e<CR>:noh<CR>

" Converting between "[ ]" and "[-]"
nmap <buffer> = :s/^\(\s*\)\[-\]/\1[∆]/e<CR>:s/^\(\s*\)\[[^∆]\]/\1[-]/e<CR>:s/^\(\s*\)\[∆\]/\1[ ]/e<CR>:noh<CR>

" Converting between "[ ]" and "[√]"
nmap <buffer> <C-x> :s/^\(\s*\)\[ \]/\1[∆]/e<CR>:s/^\(\s*\)\[[^∆]\]/\1[ ]/e<CR>:s/^\(\s*\)\[∆\]/\1[√]/e<CR>:noh<CR>
