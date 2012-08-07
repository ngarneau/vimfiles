" ----------------------------------------------------------------------------------------------------
" @file         map.vim
" @description  Keyboard mappings
" @author       Nicolas Garneau (ngarneau, ngarneau.com) inspired by Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------


" Dissable those arrows ! {{{
" ----------------------------------------------------------------------------------------------------
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
" }}}

" Easy lines navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> <D-j> gj
noremap <silent> <D-k> gk
" }}}

" Easy new lines {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> ø mo<Esc>o<Esc>k`o
noremap <silent> Ø mo<Esc>O<Esc>j`o
map K <Esc>i<CR><Esc><Esc>
" }}}

" Always go to the mark’s line and column {{{
" ----------------------------------------------------------------------------------------------------
noremap ' `
vnoremap ' `
noremap g' g`
vnoremap g' g`
" }}}

" Remap ^ caracters {{{
" ----------------------------------------------------------------------------------------------------
noremap â ^a
noremap î ^i
noremap ô ^o
" }}}

" Add a new '/' text object {{{
" ----------------------------------------------------------------------------------------------------
onoremap i/ :normal T/vt/<CR>
vnoremap i/ t/oT/
onoremap a/ :normal F/vf/<CR>
vnoremap a/ f/oF/
onoremap i; :normal T:lvt;<CR>
" }}}

" We often press 'Shift' when we should not {{{
" ----------------------------------------------------------------------------------------------------
command! -nargs=* -complete=file Q q <args>
command! -nargs=* -complete=file W w <args>
command! -nargs=* -complete=file Wq wq <args>
command! -nargs=* -complete=file WQ wq <args>
command! -nargs=* -complete=file E e <args>
command! -nargs=* -complete=file Cd cd <args>
command! -nargs=* -complete=file CD cd <args>
command! -nargs=* -complete=option Set set <args>
" }}}

" Let's remap Enter and Backspace {{{
" ----------------------------------------------------------------------------------------------------
vnoremap  <NOP>
vnoremap <BS> dk$
" }}}

" Easy split navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-K> <C-W>k
noremap <C-J> <C-W>j
" }}}

" Because 'CTRL-T' is easier to type on a canadian keyboard {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-T> <C-]>
noremap <C-R> <C-T>
" }}}

" Easy line moving {{{
" ----------------------------------------------------------------------------------------------------
noremap <C-Up> ddkkp
noremap <C-Down> ddp
" }}}

" Easy tab navigation {{{
" ----------------------------------------------------------------------------------------------------
noremap <S-C-Tab> :bprevious<CR>
inoremap <S-C-Tab> <Esc>:bprevious<CR>
vnoremap <S-C-Tab> <Esc>:bprevious<CR>
noremap <C-Tab> :bnext<CR>
inoremap <C-Tab> <Esc>:bnext<CR>
vnoremap <C-Tab> <Esc>:bnext<CR>

" }}}

" Function keys {{{
" ----------------------------------------------------------------------------------------------------
noremap <F9> :set list!<Bar>set list?<CR>
noremap <F8> :set wrap! linebreak! nolist!<Bar>set wrap?<CR>
noremap <F10> :set paste!<Bar>set paste?<CR>
noremap <F11> :set expandtab!<Bar>set expandtab?<CR>
" }}}

" Insert current date {{{
" ----------------------------------------------------------------------------------------------------
" format YYYYMMDD (eg. 20100105)
inoremap <D-d> <C-R>=strftime("%Y%m%d")<CR>
noremap ª cw<C-R>=strftime("%Y%m%d")<CR><Esc>b
" format ISO 8601 (eg. 2010-01-05T20:51:15-0500)
inoremap <D-D> <C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR>
noremap ˇ cw<C-R>=strftime("%Y-%m-%dT%H:%M:%S%z")<CR><Esc>b
" }}}

" Duplicate line {{{
" ----------------------------------------------------------------------------------------------------
noremap <D-d> m'yyP`'k
vnoremap <D-d> m'y'>p`'
" }}}

" Select only the text caracters in the current line {{{
" ----------------------------------------------------------------------------------------------------
noremap √ ^v$h
" }}}

" Clear search-highlighted terms {{{
" ----------------------------------------------------------------------------------------------------
noremap <silent> <Space> :silent noh<Bar>echo<CR>
" }}}

inoremap ;zo {{{<Esc>
inoremap ;zc }}}<Esc>

" Always use magic regexes {{{
" ----------------------------------------------------------------------------------------------------
nnoremap / /\v
vnoremap / /\v
" }}}

" Prevent accidental uses of <F1> {{{
" ----------------------------------------------------------------------------------------------------
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
" }}}

" Splits! {{{
" ----------------------------------------------------------------------------------------------------
nnoremap <C-c> <C-W>c<CR>
" }}}

" Get help with zero-width {{{
" ----------------------------------------------------------------------------------------------------
function! ZeroWidth_help()
  split ~/.vim/doc/zero_width.mkd
endfunction
command! ZeroWidth call ZeroWidth_help()
" }}}

" Show syntax highlighting groups for word under cursor {{{
nmap <D-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
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

command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" Strip whitespaces {{{
" ----------------------------------------------------------------------------------------------------
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
" }}}

let g:surround_45 = "#{\r}"
let g:surround_61 = "\"#{\r}\""
inoremap ## #{}<Esc>i

function! CallInterpreter()
  if match(getline(1), '^\#!') == 0
    let l:interpreter = getline(1)[2:]
    exec ("!".l:interpreter." %:p")
  else
    echohl ErrorMsg | echo "Err: No shebang present in file, canceling execution" | echohl None
  endif
endfunction
map <Leader>r :call CallInterpreter()<CR>
