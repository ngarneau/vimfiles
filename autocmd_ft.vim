" ----------------------------------------------------------------------------------------------------
" @file         autocmd.vim
" @description  Auto-commands for specific filetypes
" @author       Nicolas Garneau (ngarneau, ngarneau.com) inspired by Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" HTML, CSS & Javascript {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType html setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType css setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType css inoremap !! !important
autocmd FileType javascript setl expandtab ts=2 shiftwidth=2 softtabstop=2
" }}}

" Ruby {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType ruby noremap <D-r> :!/Users/remi/.rvm/bin/rvm-auto-ruby %<CR>
autocmd FileType ruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby setl expandtab ts=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby inoremap ;er <%  %><Esc>hhi
autocmd FileType eruby inoremap ;ee <%=  %><Esc>hhi
" }}}

" Ruby/Sinatra {{{
" ----------------------------------------------------------------------------------------------------
autocmd FileType ruby-sinatra setl expandtab ts=2 shiftwidth=2 softtabstop=2
" }}}

" Git {{{
" ----------------------------------------------------------------------------------------------------
au BufReadPost COMMIT_EDITMSG exe "normal gg"
" }}}
