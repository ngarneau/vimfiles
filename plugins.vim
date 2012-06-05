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
set tags=tags;/
" }}}

" FuzzyFinder settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>o :FufFileWithCurrentBufferDir<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>t :FufFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>a :FufFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>b :FufBuffer<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>, :FufBuffer<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>l :FufLine<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>T :FufRenewCache<CR>:FufFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
map <Leader>m :FufMruFile<CR>:call histdel(":", '\(^Fuf\\|call\shistdel\)')<CR>
noremap <Leader>z :FufTagWithCursorWord!<CR> 
let g:fuf_modesDisable = []
let g:fuf_keyPreview = '<C-k>'
let g:fuf_buffer_keyDelete = '<C-d>'
let g:fuf_keyOpenTabpage = '<S-CR>'
let g:fuf_keyOpenVsplit = ''
let g:fuf_infoFile = '~/.vim-local/.vimfuf'
let g:fuf_file_prompt = ' file →  '
let g:fuf_buffer_prompt = 'buffer →  '
let g:fuf_line_prompt = 'line →  '
let g:fuf_mrufile_prompt = 'mru →  '
let g:fuf_previewHeight = 0
let g:fuf_promptHighlight = "User8"
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
" }}}

" Gundo.vim settings {{{
" ----------------------------------------------------------------------------------------------------
nnoremap <Leader>u :GundoToggle<CR>
if !has('python')
	let g:gundo_disable=0
endif
" }}}
