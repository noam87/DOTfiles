" Pathogen plugin
call pathogen#infect()



" ------------------------------------------------------------------------------
" UI
" ------------------------------------------------------------------------------

    syntax on

    set number
    set list
    set showmatch
    set showmode
    set ruler
    set hlsearch
    set wrap                " wrap if text is too long to display
    " set background=dark
    colorscheme jellybeans

    " Display <tab>s, etc.
    " --------------------------------------------------------------------------
    set list
    set lcs=tab:>-,trail:.,nbsp:_



" ------------------------------------------------------------------------------
" Indentation
" ------------------------------------------------------------------------------

    " Default
    " --------------------------------------------------------------------------
    set expandtab           " Turn tabs to spaces
    set shiftwidth=4        " Make indentation 4 spaces
    set softtabstop=4
    set tabstop=4
    " use :retab to reformat all existing tabs in a file

    " Filtype Ruby
    " --------------------------------------------------------------------------
    autocmd Filetype ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab


" ------------------------------------------------------------------------------
" Plugins Stuff
" -----------------------------------------------------------------------------
    " Powerline
    set nocompatible
    set t_Co=256            " Tell Vim that terminal supports 256 colors
    set laststatus=2        " Always show the statusline
    set encoding=utf-8      " Necessary to show unicode gylphs



" ------------------------------------------------------------------------------
" Functionality
" ------------------------------------------------------------------------------

    set autoindent
    set mouse=



" ------------------------------------------------------------------------------
" Misc
" ------------------------------------------------------------------------------

    set warn 
    set viewdir=$HOME/.vimviews//
    set autoprint
    set report=1
    set history=100



" ------------------------------------------------------------------------------
" Key maps
" ------------------------------------------------------------------------------

    " Insert newline in normal mode, above and below current line
    nnoremap <CR> o<Esc>k        

    " Opening and closing braces
    inoremap {} {<CR>}<Esc>O<Tab>

    " do ... end
    inoremap eee <CR>end<Esc>O<Tab>

    " <%= >
    inoremap <> <lt>%=<Space><Space>><Esc>hi

    " Triads
    inoremap hjk <CR>
    inoremap fds <Esc>

    inoremap <C-W><C-W> <Esc><C-W><C-W>
