"Configuracion Basica
set syntax=on
syntax enable "para resaltar el codigo cuando seleccionamos
set number "para que me muestre los numeros de las lineas
set rnu "set relativenumbre - para que me de el numero de lineas relativo
set cursorline "para que muetre el cursor donde estamos
set mouse=a "para activar el mouse
set clipboard=unnamed "para poder utilizar el copy/paste fuera de la terminal, solo seleccionamos el modo visual teclas la letra y para copiar, para pegar desde fuera de la terminal teclas la letra p en modo visual y listo
set laststatus=10 "para guardar la cantidad de rehacer y deshacer
set showcmd "para mostrar los comandos que se escriben
" set noshowmode "eleminar que nos indique en que modo estamos (vista, insertar, visual)
" set showmatch
set encoding=utf-8 "para habilitar caracteres especiales por el idioma
set ignorecase "para ingnorar el key sensitive en las busquedas, podria interferir en los reemplazos mazivos, para eso colocar el comando :set noignorecase
set smartcase
set foldmethod=manual "para plegar y desplegar codigo para hacer mas simple, vas al primer cierre del ()[]{} y precionar zf% y listo, para desacoplar solo preciona zfa
set shiftwidth=4
set autoindent
set smartindent
set mmp=5000
set history=1000 "Establece cuantars lineas de historia debe recordar vim
set gdefault "añade g (global) a las operaciones de sustitucio :s/pattern/replacement
set splitbelow "abrir split abajo
set splitbelow "abrir division a la derecha
set hlsearch "resalta los resultados de la busqueda
set incsearch "hace que la busqueda actue como en los navegadores modernos
set nojoinspaces "impide insertar dos espacios despues de la puntuacion en una union(J)
set tabstop=4 "una sangria cada cuatro columnas
set softtabstop=4 "permite que la tecla de retroceso elimine la sangria
set viewoptions=folds,options,cursor,unix,slash "mejor compatibilidad unix/windows
set fileencoding=utf-8 "la codigicaciones escrita en el archivos
set magic "para activar expresiones regulares activar magic
set tags=./tags;/ "para usar tags para indezar todas una carpeta raiz desde la terminal y que git ignore esa carpeta stags -R -f ./git/tags
set updatetime=50 "mejora la experiencia del usuario actualizadno con mas frecuancia
set undofile "gurdar undos despues de cerrar el archivo
set undodir=C:\Users\cabj1\AppData\Local\nvim\undodir "donde guardar los historiales de deshacer
set undolevels=1000 "cuantos deshacer
set undoreload=1000 "numero de lineas a guardar para deshacer
set pumheight=20 "limitar la altura del menu emergente
set nolist
set colorcolumn=80
set wildmenu
set wildmode=longest:list,full
set expandtab "al pulsar tabulador, insertar 2 espacios
set linebreak "se corta en palabras y no en caracteres cuando wrap esta puesto


so C:\Users\cabj1\AppData\Local\nvim\.plugins.vim
so C:\Users\cabj1\AppData\Local\nvim\.plugins-config.vim
"so C:\Users\cabj1\AppData\Local\nvim\.maps.vim
source C:\Users\cabj1\AppData\Local\nvim\plugged\vim-airline-themes\airline.vim

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

" Configuracion de lineas
"" eliminar espacios en blanco
autocmd BufWritePre * :%s/\s\+$//e
"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

" Tema
set termguicolors
colorscheme gruvbox
let g:grovbux_contrast_dark = "hard"
highlight Normal ctermbg=NONE

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"Mapeo de teclas

let mapleader = " "
"Centrar en la busquedas
nnoremap n nzzzv
"Centrar en la busquedas
nnoremap N Nzzzv

nmap <leader>w :w<CR>
nmap <leader>q :q<CR>
nnoremap <space>; $a;<Esc>
" copiar la ruta del archivo portapapeles
nnoremap <leader>kp :let @*=expand("%")<CR>
"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"let g:notes_directories = ['C:\Users\cabj1\Documents']
"let g:notes_suffix = '.md'

"configuracion de emmet-vim
let g:user_emmet_leader_key=',' 	"mapeando la tecla lider por una coma, con esto se completa los tag con doble coma.


"configuracion de vim-airline
let g:airline#extensions#tabline#enabled = 1	"muestra la linea de pestaña en la que estamos buffer
let g:airline#extensions#tabline#formatter = 'unique_tail'	"muestra solo el nombre del archivo que estamos modificando
let g:airline_theme='onedark'	"el tema de airline


"configuracion de nerdtree
"mapeando el abrir y cerrar de nerdtree con nerdtreetoggle vemos los archivos en el arbol y podemos cerrarlo a la vez, map es la C mayuscula representa el
"control y -n la tecla n lo que indica que realizará la siguiente funcion de excribir el comando NERDTreeToggle y CR significa ENTER.
map <C-n> :NERDTreeToggle<CR>



"configuracion por defecto de coc
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
"nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
"nmap <silent> <C-s> <Plug>(coc-range-select)
"xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
" nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
" nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
