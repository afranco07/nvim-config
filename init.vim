set exrc
set relativenumber
set nu
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set ignorecase
set smartcase
set incsearch
set termguicolors
set scrolloff=8
set signcolumn=yes
set colorcolumn=80

let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-go']

call plug#begin()

Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'

call plug#end()

colorscheme gruvbox

let mapleader = " "

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
