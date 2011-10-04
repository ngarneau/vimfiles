""" Bar de setting """
set guioptions-=T

""" Color scheme & font """
set guifont=Monaco:h12
set t_Co=256
colorscheme railscasts
" colorscheme herald

" F1  - NERDTree plugin
nnoremap <silent> <f1> :NERDTreeToggle<cr>
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

" F2  - Bufexplorer
nnoremap <silent> <f2> :BufferExplorer<cr>
nnoremap <C-b> :BufExplorer<CR>

:filetype plugin on 

set autoindent                      " Auto-indent on
set tabstop=2                       " Use 2 spaces for tabs
set shiftwidth=2                    " 2 spaces for autoindent
set softtabstop=2                   " Use soft tabs
set expandtab                       " Use spaces instead of tabs
set backupcopy=yes                  " Save resources
set nu                              " Set line number visible

" Restore selection on shift
vnoremap <silent> < <gv
vnoremap <silent> > >gv


" Easy line moving {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-Up> ddkkp
noremap <C-Down> ddp
" }}}
" Easy indentation in visual mode {{{
" ----------------------------------------------------------------------------------------------------
vnoremap < <gv
vnoremap > >gv|
noremap <·> >gv|
noremap — >gv
vnoremap <Tab> >gv|
vnoremap <S-Tab> <gv
nnoremap  <C-i>
nnoremap <Tab> mzV>`zl
nnoremap <S-Tab> mzV<`zh
" }}}

" Easy new lines {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> ø mo<Esc>o<Esc>k`o
noremap <silent> Ø mo<Esc>O<Esc>j`o
map K <Esc>i<CR><Esc><Esc>
" }}}
" Duplicate line {{{
" ----------------------------------------------------------------------------------------------------
noremap <D-d> m'yyP`'k
vnoremap <D-d> m'y'>p`'
" }}}



