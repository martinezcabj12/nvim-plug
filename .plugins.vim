"
"Plugins
call plug#begin('~/AppData/Local/nvim/plugged')
" Plug 'joshdick/onedark.vim'           "Tema
" Plug 'vim-airline/vim-airline'        "Diseño de la barra en la cual se muestra los modos
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'             "gestor de archivos en forma de arbol
Plug 'easymotion/vim-easymotion'      "Buscador de palabra rapido
Plug 'Yggdroot/indentLine'            "buscar
Plug 'tpope/vim-commentary'           "Para tranformar una linea en comentario
Plug 'jiangmiao/auto-pairs'           "autocompletado de llaves y corchetes, etc
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletado inteligente
Plug 'mattn/emmet-vim'                "Emmet para diseñar web
"Plug 'xolox/vim-notes'                "Notas
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'sheerun/vim-polyglot'            "Syntaxi
Plug 'itchyny/lightline.vim'           "Status bar
Plug 'maximbaz/lightline-ale'          "status bar thema
Plug 'morhetz/gruvbox'                 "tema
Plug 'itchyny/lightline.vim'           "tema
Plug 'alvan/vim-closetag'              "typing
Plug 'tpope/vim-surround'              "typing
" Plug 'benmills/vimux'                  "tmux
" Plug 'christoomey/vim-tmux-navigator'  "tmux
Plug 'tyewang/vimux-jest-test'         "test
Plug 'janko-m/vim-test'                "test
Plug 'junegunn/fzf'                    "Buscador
Plug 'junegunn/fzf.vim'                "Buscado
Plug 'mhinz/vim-signify'               "muestra lineas agregada o borrada

call plug#end()
