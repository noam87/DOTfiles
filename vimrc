" JANUARY 2013
" ------------------------------------------------------------------------------
" ------------------------------------------------------------------------------



" ------------------------------------------------------------------------------
" Display
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
  set nolist
  "set listchars=tab:>-,trail:.,nbsp:_,eol:$



" ------------------------------------------------------------------------------
" Syntax 
" ------------------------------------------------------------------------------

  " Default Indentation
  set expandtab           " Turn tabs to spaces
  set shiftwidth=2        " Make indentation 4 spaces
  set softtabstop=2
  set tabstop=2
  " use :retab to reformat all existing tabs in a file

  " By Filetype
  if has ("autocmd")
    " Indentation
    autocmd Filetype make setlocal shiftwidth=8 softtabstop=8 tabstop=8 noexpandtab
    autocmd Filetype python setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
    " Syntax
    autocmd BufNewFile,BufRead *.rss,*.atom setfiletype xml
  endif



" ------------------------------------------------------------------------------
" Editing Functionality
" ------------------------------------------------------------------------------

  set autoindent
  " Real men don't use mouse
  set mouse=



" ------------------------------------------------------------------------------
" Key Maps
" ------------------------------------------------------------------------------

  " Insert newline in normal mode, above and below current line
  nnoremap <CR> o<Esc>k        
  " Esc while ssh'ing from iPad
  inoremap fjf <Esc>
  
  " Change windows from insert mode
  inoremap <C-W><C-W> <Esc><C-W><C-W>



" -----------------------------------------------------------------------------
" Insertion  Macros
" -----------------------------------------------------------------------------

  " Opening and closing braces
  inoremap {} {<CR>}<Esc>O<Tab>

  " do ... end
  inoremap eee <CR>end<Esc>O<Tab>

  " <%= >
  inoremap <> <lt>%=<Space><Space>><Esc>hi



" ------------------------------------------------------------------------------
" Misc
" ------------------------------------------------------------------------------

  set warn 
  set viewdir=$HOME/.vimviews/
  set autoprint
  set report=1
  set history=100



" ------------------------------------------------------------------------------
" Plugins Stuff
" ------------------------------------------------------------------------------

  " Pathogen plugin
  call pathogen#infect()

  " Powerline
  set nocompatible
  set t_Co=256            " Tell Vim that terminal supports 256 colors
  set laststatus=2        " Always show the statusline
  set encoding=utf-8      " Necessary to show unicode gylphs


