" ----------------------------------------------------------------------------------------------------
" @file         filetype.vim
" @description  Custom filetypes based on extensions
" @author       Rémi Prévost (remi, exomel.com)
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
au! BufRead,BufNewFile *.php setfiletype php
au! BufRead,BufNewFile *.html.php setfiletype html
" }}}

" Mustache {{{
" -----------------------------------------------------------------
runtime! ftdetect/*.vim
au BufNewFile,BufRead *.mustache setfiletype html.mustache
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

" Apache configuration files {{{
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.conf setfiletype apache
" }}}

" ActionScript (Javascript) {{{
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.as setfiletype javascript
" }}}

" Javascript / jQuery {{{
" -----------------------------------------------------------------
au! BufRead,BufNewFile *.js setfiletype javascript.jquery
" }}}

" Liquid {{{
" -----------------------------------------------------------------
au BufNewFile,BufRead *.liquid setfiletype liquid
" }}}

" tmux {{{
" -----------------------------------------------------------------
au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
" }}}

" SASS {{{
" -----------------------------------------------------------------
au BufRead,BufNewFile *.sass setf sass
au BufRead,BufNewFile *.scss setf scss
" }}}
