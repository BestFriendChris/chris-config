nmap <buffer> o o[_] 
imap <buffer> <Return> <Esc>o
nmap <buffer> <C-x> :s/\[_\]/[X]/e<CR>:noh<CR>

" Indentation
vmap <buffer> <Tab> >
vmap <buffer> <S-Tab> <
nmap <buffer> <Tab> mp>>`pll
nmap <buffer> <S-Tab> mp<<`phh
imap <buffer> <Tab> <Esc><Tab>a
imap <buffer> <S-Tab> <Esc><S-Tab>a

" Converting between "-" and "[_]"
nmap <buffer> - :s/\[.\]/-/e<CR>:noh<CR>
nmap <buffer> = :s/^\(\s*\)-/\1[_]/e<CR>:noh<CR>
