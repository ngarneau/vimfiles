" ----------------------------------------------------------------------------------------------------
" @file         plugins.vim
" @description  Plugins settings
" @author       Nicolas Garneau (ngarneau, ngarneau.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" Tagbar settings {{{
" ----------------------------------------------------------------------------------------------------
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=26                          " Default is 40, seems too wide
map <Leader>; :TagbarToggle<cr>       
set tags+=/Users/ngarneau/Documents/duproprio/.git/tags
" }}}

" Buffet settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>, :Bufferlist<CR>
" }}}

" Supertab settings {{{
" ----------------------------------------------------------------------------------------------------
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = '<c-p>'
" }}}

" YankRing {{{
" ----------------------------------------------------------------------------------------------------
let g:yankring_history_dir = expand('$HOME').'/.vim-local'
let g:yankring_history_file = '.vim-yankring'
map <Leader>y :YRShow<CR>
autocmd BufEnter \[YankRing\] set scrolloff=0 cursorline
autocmd BufLeave \[YankRing\] set scrolloff=4 nocursorline
" }}}

" BufExplorer settings {{{
" ----------------------------------------------------------------------------------------------------
let g:bufExplorerSortBy='number'
nnoremap <silent> <f2> :BufferExplorer<cr>
nnoremap <Leader>b :BufExplorer<CR>
" }}}

" NERDTree settings" {{{
" ----------------------------------------------------------------------------------------------------
""nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <Leader>n :NERDTreeToggle<cr>
let g:NERDTreeWinSize=40
let NERDTreeWinSize=40
" }}}

" Gundo.vim settings {{{
" ----------------------------------------------------------------------------------------------------
nnoremap <Leader>u :GundoToggle<CR>
if !has('python')
	let g:gundo_disable=0
endif
" }}}
