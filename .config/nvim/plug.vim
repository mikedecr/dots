call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'

" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jalvesaq/Nvim-R'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown' 

call plug#end()

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-r-lsp', 'coc-python']

