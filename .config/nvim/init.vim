" line numbers
:set number 
:set relativenumber
:set cursorline

" --- tabstop vs. level of indendation ---
" <https://developpaper.com/vim-technique-explain-the-difference-between-tabstop-softtabstop-and-expandtab/>
:set tabstop=4
:set shiftwidth=4
:set softtabstop=2      " how many cols the cursor moves upon tab
:set smarttab           " tab deletion and scrolling? 
:set expandtab          " tabs as spaces
:set autoindent

" other
:set mouse=a            " click around
" :set paste

" plugins
runtime ./plug.vim

" --- Old stuff ---
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" this is for OG vim only 
" source ~/.vimrc

