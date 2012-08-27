" pathogen plugin
" ---------------
call pathogen#infect()

" UI
" --
:syntax on
:set number
:set showmatch
:set showmode
:set ruler
:set hlsearch
colorscheme delek
" for poweline plugin
set nocompatible
set t_Co=256 		" tell Vim that terminal supports 256 colors
set laststatus=2 	" Always show the statusline
set encoding=utf-8	" Necessary to show unicode gylphs

" Functionaslity
" --------------
:set autoindent
:set mouse=a


" Misc
" ----
:set warn 
:set viewdir=$HOME/.vimviews//
:set autoprint
:set report=1
:set history=100

" Key maps
" ---------- 
" insert newline in normal mode
map <S-Enter> O<Esc>j
map <CR> o<Esc>k
