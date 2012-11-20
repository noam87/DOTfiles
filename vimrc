" Pathogen plugin
" ---------------
call pathogen#infect()

" ---
" UI
" ---

    syntax on

    set number
    set list                
    set showmatch
    set showmode
    set ruler
    set hlsearch
    set wrap                " wrap if text is too long to display
    set colorcolumn=80	    " Make sure lines don't go over 80 columns.
    " set background=dark
    " colorscheme jellybeans
    colorscheme pablo

    " ---------------------
    " Display <tab>s, etc.
    " ---------------------
    set list
    set lcs=tab:>-,trail:.,nbsp:_

" ------------
" Indentation
" ------------

    " ---------------------
    " Indent Guides Plugin
    " ---------------------
        autocmd VimEnter * IndentGuidesEnable
        hi IndentGuidesOdd ctermbg=black
        

    set expandtab		    " Turn tabs to spaces
    set shiftwidth=4	    " Make indentation 4 spaces
    set softtabstop=4
    set tabstop=4
    " use :retab to reformat all existing tabs in a file

    " For poweline plugin
    set nocompatible
    set t_Co=256 		    " Tell Vim that terminal supports 256 colors
    set laststatus=2 	    " Always show the statusline
    set encoding=utf-8	    " Necessary to show unicode gylphs

" ---------------
" Functionaslity
" ---------------

    set autoindent
    set mouse=a


" -----
" Misc
" -----

    set warn 
    set viewdir=$HOME/.vimviews//
    set autoprint
    set report=1
    set history=100

" ---------
" Key maps
" ---------

    " Insert newline in normal mode, above and below current line
        map <S-Enter> O<Esc>j
        map <CR> o<Esc>k        

    " Opening and closing braces
    "
    " EXAMPLE:
    "   int main() <C-F>
    " 
    " RESULT:
    "   int main() {
    "       |    
    "   }
        imap <C-F> {<CR>}<Esc>O<Tab>
