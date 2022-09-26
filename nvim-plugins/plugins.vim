call plug#begin(stdpath('data').'/plugged')

    " TEMA GRUVBOX
    Plug 'sainnhe/gruvbox-material'

    " NERDTree
    Plug 'preservim/nerdtree'

    " VIM-DEVICONS icons for NERDTree
    Plug 'ryanoasis/vim-devicons'

    " Conquer Of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Surround.vim
    Plug 'tpope/vim-surround'

    " Airline status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " NERDCommenter
    Plug 'preservim/nerdcommenter'

call plug#end()
let b:coc_diagnostic_disable=1

