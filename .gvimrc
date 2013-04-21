" Set the theme (actually done in .vimrc)
" colorscheme rdark-mod
" set colorcolumn=81,121

" Remove unnecessary menus
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m
set guioptions+=c

" Adjust the window size
" autocmd GUIEnter * set lines=40 columns=80
set lines=51
set columns=100

" Only with gvim, set the proper encoding for tex files
function! CheckFileEncoding()
	if exists('b:fenc_at_read') && &fileencoding != b:fenc_at_read
		exec 'e! ++enc=' . &fileencoding
		unlet b:fenc_at_read
		" No idea why I had to add this
		exec 'set filetype=' . &filetype
	endif
endfunction
autocmd BufRead     *.tex let b:fenc_at_read=&fileencoding
autocmd BufWinEnter *.tex call CheckFileEncoding()

" Use <C-Tab> instread of <C-6>
noremap <C-Tab> <C-^>
