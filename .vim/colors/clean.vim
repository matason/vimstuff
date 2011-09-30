" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: matason
" Contact: hello@webgoodness.co.uk
" Info: A clean vim colorsheme, highlights only search.  
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name="clean"

" hi Normal	guibg=#2e3436 guifg=#d3d7cf
hi Normal	guibg=#242424 guifg=#d3d7cf

" {{{ syntax
hi Comment	guifg=#555753 gui=none
hi Title	guifg=#d3d7cf gui=none
hi Underlined	guifg=#20b0eF gui=none
hi Statement	guifg=#d3d7cf gui=none
hi Type		guifg=#d3d7cf gui=none
hi PreProc	guifg=#d3d7cf gui=none
hi Constant	guifg=#d3d7cf gui=none
hi Identifier	guifg=#d3d7cf gui=none
hi Special	guifg=#d3d7cf gui=none
hi Ignore	guifg=#d3d7cf gui=none
hi Todo		guibg=#242424 guifg=#555753
hi Error 	guibg=#242424 guifg=#d3d7cf 
"}}}

" {{{ groups
hi Cursor	guibg=#babdb6 guifg=#242424
"hi CursorIM
hi Directory	guifg=#bbd0df
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
"hi ErrorMsg
hi VertSplit	guibg=#555753 guifg=#242424 gui=none
hi Folded	guibg=#555753 guifg=#eeeeec
hi FoldColumn	guibg=#242424 guifg=#555753
hi LineNr	guibg=#242424 guifg=#555753
hi MatchParen	guibg=#ce5c00 guifg=#242424
hi ModeMsg	guifg=#ce5c00
hi MoreMsg	guifg=#ce5c00
hi NonText	guibg=#242424 guifg=#d3d7cf
hi Question	guifg=#aabbcc
hi Search	guibg=#ce5c00 guifg=#d3d7cf
hi IncSearch	guibg=#c4a000 guifg=#fce94f
hi SpecialKey	guifg=#d3d7cf
hi StatusLine	guibg=#555753 guifg=#eeeeec gui=none
hi StatusLineNC	guibg=#555753 guifg=#272334 gui=none
hi Visual	guibg=#3E474A guifg=#CCCCCC 
"hi VisualNOS
hi WarningMsg	guifg=salmon
"hi WildMenu
"hi Menu
"hi Scrollbar  guibg=grey30 guifg=tan
"hi Tooltip
hi Pmenu	guibg=#babdb6 guifg=#555753
hi PmenuSel	guibg=#eeeeec guifg=#242424
hi CursorLine	guibg=#212628
" }}}

"  {{{ terminal
" TODO
" }}}

"vim: sw=4
