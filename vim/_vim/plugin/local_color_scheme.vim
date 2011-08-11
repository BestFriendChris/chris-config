if has('autocmd')
	" change colorscheme depending on current buffer
	" if desired, you may set a user-default colorscheme before this point,
	" otherwise we'll use the Vim default.
	" Variables used:
		" g:colors_name : current colorscheme at any moment
		" b:colors_name (if any): colorscheme to be used for the current buffer
		" s:colors_name : default colorscheme, to be used where b:colors_name hasn't been set
	if has('user_commands')
		" User commands defined:
			" ColorScheme <name>
				" set the colorscheme for the current buffer
			" ColorDefault <name>
				" change the default colorscheme
		command -nargs=1 -bar ColorScheme
			\ colorscheme <args>
			\ | let b:colors_name = g:colors_name
		command -nargs=1 -bar ColorDefault
			\ let s:colors_name = <q-args>
			\ | if !exists('b:colors_name')
				\ | colors <args>
			\ | endif
	endif
	if !exists('g:colors_name')
		let g:colors_name = 'default'
	endif
	let s:colors_name = g:colors_name
	au BufEnter *
		\ let s:new_colors = (exists('b:colors_name')?(b:colors_name):(s:colors_name))
		\ | if s:new_colors != g:colors_name
			\ | exe 'colors' s:new_colors
		\ | endif
endif

