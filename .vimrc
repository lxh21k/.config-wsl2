set number
syntax on
colorscheme slate
set tabstop=4
set autoindent
set expandtab
set softtabstop=4
set shiftwidth=4

" Vim to Windows clipboard
func! GetSelectedText()
    normal gv"xy
    let result = getreg("x")
    return result
endfunc
noremap <silent><C-y> :call system('/mnt/c/Windows/System32/clip.exe', GetSelectedText())<CR>
noremap <silent><C-x> :call system('/mnt/c/Windows/System32/clip.exe', GetSelectedText())<CR>gvx

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'

" Initialize plugin system
call plug#end()
