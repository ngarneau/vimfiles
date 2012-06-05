" ----------------------------------------------------------------------------------------------------
" @file         filetype.vim
" @description  Custom filetypes based on extensions
" @author       Nicolas Garneau (ngarneau, ngarneau.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" Load this file only once {{{
" ----------------------------------------------------------------------------------------------------
if exists("did\_load\_filetypes")
	finish
endif
" }}}

" PHP (+HTML) {{{
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.html.php setfiletype html.php
au! BufRead,BufNewFile *.phtml setfiletype html.php
au! BufRead,BufNewFile *.php setfiletype php
au! BufRead,BufNewFile *.html setfiletype html
" }}}

" Ruby {{{
" -----------------------------------------------------------------
augroup userruby
	au! BufRead,BufNewFile *.ru setfiletype ruby
	au! BufRead,BufNewFile Gemfile setfiletype ruby
	au! BufRead,BufNewFile Capfile setfiletype ruby
augroup END
" }}}

" Markdown {{{
" -----------------------------------------------------------------
augroup markdown
	au! BufRead,BufNewFile *.markdown setfiletype mkd
	au! BufRead,BufNewFile *.mkd setfiletype mkd
	au! BufRead,BufNewFile *.md setfiletype mkd
augroup END
" }}}

" Javascript / jQuery {{{
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.as setfiletype javascript
au! BufRead,BufNewFile *.js setfiletype javascript.jquery
" }}}

" SASS {{{
" -----------------------------------------------------------------
au BufRead,BufNewFile *.sass setf sass
au BufRead,BufNewFile *.scss setf scss
" }}}

" Pig {{{
" -----------------------------------------------------------------
au BufRead,BufNewFile *.pig setf pig
" }}}

" Haskell {{{
" -----------------------------------------------------------------
au BufRead,BufNewFile *.hs setf haskell
" }}}

" C++ {{{
" -----------------------------------------------------------------
au BufRead,BufNewFile *.cpp setf cpp
" }}}
