" ----------------------------------------------------------------------------------------------------
" @file			.gvimrc
" @description	Gvim configuration file
" @author		Rémi Prévost (remi, exomel.com)
" vim: fdm=marker noet ts=4 sts=4 sw=4
" ----------------------------------------------------------------------------------------------------

" On met la ligne du curseur en surbrillance {{{
" ------------------------------------------------------------
set nocursorline
"}}}

" Transparence {{{
" ------------------------------------------------------------
"}}}

" Police {{{
" ------------------------------------------------------------
set guifont=Monaco:h14
"set guifont=Monospace
"}}}

" Schéma de couleur {{{
" ------------------------------------------------------------
syntax enable
colorscheme autumn2
set background=light
"}}}

" Options 'fullscreen' {{{
" ------------------------------------------------------------
"}}}

" Options de l’interface {{{
" ------------------------------------------------------------
set guioptions-=L
set guioptions-=l
set guioptions-=R
set guioptions+=r
set guioptions-=T
"}}}

" Override MacVim.app commands {{{
" ------------------------------------------------------------
"macmenu File.Open\ Tab\.\.\. key=<nop>
"macmenu File.Close key=<nop>
"macmenu File.New\ Tab key=<nop>
"macmenu File.Save key=<nop>
"macmenu File.Save\ As\.\.\. key=<nop>
"noremap <D-s> <Nop>
"noremap <D-w> <Nop>
"noremap <D-t> <Nop>
" }}}

map <F12> :botright copen<CR>

" Misc settings {{{
" ------------------------------------------------------------
"set columns=149
"set lines=36
set showtabline=0
e }}}
