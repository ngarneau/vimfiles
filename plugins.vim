" ----------------------------------------------------------------------------------------------------
" @file         plugins.vim
" @description  Plugins settings
" @author       Nicolas Garneau (ngarneau, ngarneau.com) inspired by Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" Taglist settings {{{
" ----------------------------------------------------------------------------------------------------
"map <Leader>; :TlistToggle<cr>
"let Tlist_GainFocus_On_ToggleOpen = 1
""let Tlist_Use_Right_Window = 1
""let Tlist_Close_On_Select = 1
""let Tlist_File_Fold_Auto_Close = 1
""let Tlist_Show_One_File = 0
""let Tlist_Auto_Open = 1
""let Tlist_Sort_Type = "name"
""let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let Tlist_Ctags_Cmd = '/Users/remi/Local/homebrew/bin/ctags'
" }}}

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

" html.vim settings {{{
" ----------------------------------------------------------------------------------------------------
let g:do_xhtml_mappings = 'yes'
let g:no_html_toolbar = 'yes'
let g:no_html_menu = 'yes'
" }}}

" BufExplorer settings {{{
" ----------------------------------------------------------------------------------------------------
let g:bufExplorerSortBy='number'
nnoremap <silent> <f2> :BufferExplorer<cr>
nnoremap <Leader>b :BufExplorer<CR>
" }}}

" Rails.vim settings {{{
" ----------------------------------------------------------------------------------------------------
nmap <Leader>rc :Rcontroller<CR>
nmap <Leader>rv :Rview<CR>
nmap <Leader>rm :Rmodel<CR>
nmap <Leader>1 :Rmodel<CR>
nmap <Leader>2 :Rview<CR>
nmap <Leader>3 :Rcontroller<CR>
let g:rails_statusline=0
" }}}

" NERDTree settings" {{{
" ----------------------------------------------------------------------------------------------------
""nnoremap <C-n> :NERDTreeToggle<cr>
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
nnoremap <Leader>n :NERDTreeToggle<cr>
" }}}

" Gundo.vim settings {{{
" ----------------------------------------------------------------------------------------------------
nnoremap <Leader>u :GundoToggle<CR>
if !has('python')
	let g:gundo_disable=0
endif
" }}}

" Tabular settings {{{
" ----------------------------------------------------------------------------------------------------
vnoremap <Leader>f :Tab /
" }}}

" SyntaxAttr settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>a :call SyntaxAttr()<CR>
" }}}

" RubyTest settings {{{
" ----------------------------------------------------------------------------------------------------
map <Leader>p <Plug>RubyTestRun
map <Leader>P <Plug>RubyFileRun
map <Leader>” <Plug>RubyTestRunLast
let g:rubytest_cmd_test = "rvm-auto-ruby %p"
let g:rubytest_cmd_testcase = "rvm-auto-ruby %p -n '/%c/'"
let g:rubytest_cmd_spec = "spec -f specdoc %p"
let g:rubytest_cmd_example = "spec -f specdoc %p -e '%c'"
let g:rubytest_cmd_feature = "cucumber %p"
let g:rubytest_cmd_story = "cucumber %p -n '%c'"
" }}}
