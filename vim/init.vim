call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-surround'
Plug 'posva/vim-vue'
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdtree' 
Plug 'Haron-Prime/Antares'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'maksimr/vim-jsbeautify'
Plug 'othree/html5.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'
call plug#end()

syntax on
colorscheme antares
filetype plugin on

set background=dark
set nocompatible
set nowrap
set encoding=utf8
set backupdir=~/.vim/backup/
set directory=~/.vim/swp/
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set nowrap incsearch hlsearch splitbelow 
set autoindent copyindent 
set wildmenu 
set nonumber
set noesckeys
set foldmethod=indent

nmap ,so :so ~/.vimrc <cr>
nmap ,edit :tabedit ~/.vimrc <cr>
nmap ,scripts :tabedit ~/.scripts.html <cr>
nmap ,cssref :tabedit ~/mas/vim/ref/reference.css <cr>
nmap ,jsref :tabedit ~/mas/vim/ref/reference.js <cr>
nmap ,htmlref :tabedit ~/mas/vim/ref/reference.html <cr>
nmap ,cref :tabedit ~/mas/vim/ref/reference.c <cr>
nmap ,vref :tabedit ~/mas/vim/ref/reference.vim <cr>
nmap ,si :tabedit ~/mas/vim/scripts.js <cr>
nmap \mr :w <bar> !./start.sh <cr>
nmap ,ne :NERDTreeSteppedOpen <cr>
nmap ,nf :NERDTreeFind <cr>
nmap ,install :w <bar> PlugInstall <cr>
imap ,l <c-r>=GetTemplate() <cr><esc>
nmap ,al :e # <cr>

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeWinSize=40
let g:NERDTreeWinPos = "right"
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:vue_disable_pre_processors=1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:user_emmet_leader_key=','
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

au FileType vue syntax sync fromstart
au BufRead,BufNewFile *.scss set filetype=scss.css
au FileType scss set iskeyword+=-
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

hi Search ctermfg=red ctermbg=none guibg=NONE guifg=yellow
hi IncSearch ctermbg=yellow ctermfg=black
hi Normal 		guifg=#f6f3e8 guibg=#242424 gui=none
hi NonText 		guifg=#f6f3e8 guibg=#242424 gui=none
hi LineNr 		guibg=#242424 gui=none
hi NonText ctermfg=236

" CUSTOM TEMPLATE FUNCTION
function! GetTemplate()
  " get the current line number
  let line = line('.')
  " get the current column number
  let col = col('.')
  " set cursor 1 character backwards
  call cursor(line, col-1)
  " templates directory path
  let path = $HOME . '/mas/vim/templates'
  " current file extension
  let ext = expand('%:e')
  if ext == 'hbs'
    let ext = 'html'
  endif
  if ext == 'vue'
    let ext = 'html'
  endif
  " the word under cursor
  let word = expand('<cWORD>')
  " the result file
  let result = path . '/' . word . '.' . ext
  " if the file exists
  if filereadable(result)
    " delete current line
    d
    " go one line up
    call cursor(line-1, 0)
    " read the file content
    "execute "read" . result
    execute (line == 1 ? '-1' : '') . "read" . result
    execute "normal! =G"
  else
    echo result . ' does not exist'
  endif
  return ''
endfunction
