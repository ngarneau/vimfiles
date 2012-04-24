" ----------------------------------------------------------------------------------------------------
" @file         settings.vim
" @description  Global settings
" @author       Nicolas Garneau (ngarneau, ngarneau.com) inspired by Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" Activate syntax highlithing {{{
" ----------------------------------------------------------------------------------------------------
syntax on
" }}}

" Activate autocompletion for PHP, HTML, CSS" {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
" }}}

" Activate 256 colors mode (to use in terminal mode) {{{
" ----------------------------------------------------------------------------------------------------
set t_Co=256
" }}}

" Different colorschemes if we're running vim or gvim {{{
" ----------------------------------------------------------------------------------------------------
if !has('gui_running')
	syntax on
	colorscheme twilight3
else
	syntax on
endif
" }}}

" Define the leader key {{{
" ----------------------------------------------------------------------------------------------------
let mapleader = ","
let g:mapleader = ","
" }}}

" Misc. options {{{
" ----------------------------------------------------------------------------------------------------
set showcmd " Display the command as we type it
set showmode " Display the current mode
set ignorecase " Ignore case when searching
set smartcase " Smart-case search mode
set incsearch " Start to search as soon as we type
set mouse=a " Use the mouse in all modes
set number " Show line numbers
set ts=4 " A tab = 4 spaces
set whichwrap=h,l,~,[,],<,> " Which caracters to wrap
set scrolloff=4 " Scroll offset
set laststatus=2 " Always show the status line
set noautoread " Do not reload the file if it changes
set title " Display filename in window title
set showmatch " Show matching parentheses
set hlsearch " Highlight matching search result
set vb t_vb= " No visual bell
set viminfo='50,<1000,s100,h,n~/.vim-local/.viminfo " Viminfo settings
set mls=10 " Check for modelines in the first and last 10 lines
set wildmenu
set wildmode=full
set backspace=indent,eol,start
set tabpagemax=50
set isk+=- " Treat “-” like a word separator (for auto-completion!)
set hidden
set gdefault " Always search/replace globally
set ai " Auto indent
set tabstop=4 " Use 2 spaces for tabs
set shiftwidth=4 " 2 spaces for autoindent
set softtabstop=4 " Use soft tabs
set nocompatible
set noswapfile
" }}}

" Always use UTF-8 {{{
" ----------------------------------------------------------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8
" }}}

" Do not highlight special PHP functions (to ensure compatibility with most color schemes) {{{
" ----------------------------------------------------------------------------------------------------
let php_special_functions = 0
" }}}

" Backups {{{
" ----------------------------------------------------------------------------------------------------
set backup
set swapfile
set backupdir=$HOME/.vim-local/.vimbackup
set directory=$HOME/.vim-local/.vimswap
au BufEnter /private/tmp/crontab.* setl backupcopy=yes
if exists("+undofile")
	set undofile
	set undodir=~/.vim-local/.undo
endif
" }}}

" No automatic word-wrap! {{{
" ----------------------------------------------------------------------------------------------------
set nowrap
set sidescroll=4
set sidescrolloff=14
set listchars=precedes:←,extends:→,nbsp:◊,trail:⠿,eol:\ ,tab:>-
set list
" }}}

" Statusline {{{
" ----------------------------------------------------------------------------------------------------
function! GetCWD()
	return expand(":pwd")
endfunction

function! IsHelp()
	return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
	return expand("%:t")==''?'<none>':expand("%:t")
endfunction

set statusline=%3*[%1*%{GetName()}%3*]%3*
set statusline+=%7*%{&modified?'\ (modified)':'\ '}%3*
set statusline+=%5*%{IsHelp()}%3*
set statusline+=%6*%{&readonly?'\ (read-only)\ ':'\ '}%3*
set statusline+=%3*fenc:%4*%{strlen(&fenc)?&fenc:'none'}%3*\ \ 
set statusline+=%3*ff:%4*%{&ff}%3*\ \ 
set statusline+=%3*ft:%4*%{strlen(&ft)?&ft:'<none>'}\ \ 
set statusline+=%3*tab:%4*%{&ts}
set statusline+=%3*,%4*%{&sts}
set statusline+=%3*,%4*%{&sw}
set statusline+=%3*,%4*%{&et?'et':'noet'}\ \ 
set statusline+=%<%3*pwd:%4*%{getcwd()}\ \ 
set statusline+=%9*%=
set statusline+=%3*col:%4*%c\ \ 
set statusline+=%3*line:%4*%l\ \ 
set statusline+=%3*total:%4*%L\ 
" }}}

" Mark trailing whitespace {{{
" ----------------------------------------------------------------------------------------------------
"match Todo /\(\t\|\s\)\+$/
" }}}

" Folding settings {{{
" ----------------------------------------------------------------------------------------------------
set foldmethod=marker
set foldlevel=0
set foldenable
" }}}

" Taglist {{{
" ----------------------------------------------------------------------------------------------------
set foldenable
"set Tlist_Auto_Open=1
" }}}
