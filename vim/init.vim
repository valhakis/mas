call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'airblade/vim-rooter'
Plug 'digitaltoad/vim-pug'
Plug 'posva/vim-vue'
Plug 'ap/vim-css-color'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'jwalton512/vim-blade'
Plug 'dhruvasagar/vim-table-mode'
Plug 'moll/vim-node' 
Plug 'tpope/vim-surround'
Plug 'posva/vim-vue'
"Plug 'rhysd/vim-gfm-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'noahfrederick/vim-laravel'
Plug 'tpope/vim-commentary'
Plug 'cakebaker/scss-syntax.vim'
Plug 'yegappan/mru'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tikhomirov/vim-glsl'
Plug 'scrooloose/nerdtree' 
Plug 'Haron-Prime/Antares'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'maksimr/vim-jsbeautify'
Plug 'othree/html5.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ryanoasis/vim-devicons'
Plug 'evidens/vim-twig'
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
"set guifont=CourierPrimeCode-Regular\ Nerd\ Font\ 10
set directory=~/.vim/swp/
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set nowrap incsearch hlsearch splitbelow 
set autoindent copyindent 
set wildmenu 
set relativenumber
set nonumber
set noesckeys
set foldmethod=indent
set laststatus=2
set mouse=n
set showcmd
set path+=~/motizium/include/linmath.h
" set wildignore+=node_modules/**

nmap ,so :so ~/.vimrc <cr>
nmap ,edit :tabedit ~/.vimrc <cr>
nmap ,scripts :tabedit ~/.scripts.html <cr>
nmap ,cssref :tabedit ~/mas/vim/ref/reference.css <cr>
nmap ,cn :cn <cr>
nmap ,bashref :tabedit ~/mas/vim/ref/reference.sh <cr>
nmap ,mysqlref :tabedit ~/mas/vim/ref/reference.mysql <cr>
nmap ,noderef :tabedit ~/mas/vim/ref/node.reference.js <cr>
nmap ,phpref :tabedit ~/mas/vim/ref/reference.php <cr>
nmap ,ref :tabedit ~/mas/vim/ref/all.reference.js <cr>
nmap ,archref :tabedit ~/mas/vim/ref/reference.cf <cr>
nmap ,jsref :tabedit ~/mas/vim/ref/reference.js <cr>
nmap ,htmlref :tabedit ~/mas/vim/ref/reference.html <cr>
nmap ,cref :tabedit ~/mas/vim/ref/reference.c <cr>
nmap ,vref :tabedit ~/mas/vim/ref/reference.vim <cr>
nmap ,si :tabedit ~/mas/vim/scripts.js <cr>
nmap ,re :tabedit +1buf <cr>
nmap \mr :w <bar> !./start.sh <cr>
nmap \rt :w <bar> !./% <cr>
nmap ,mru :MRU <cr>
nmap ,ne :NERDTreeSteppedOpen <cr>
nmap ,nf :NERDTreeFind <cr>
nmap ,install :w <bar> PlugInstall <cr>
imap ,l <c-r>=GetTemplate() <cr><esc>
nmap ,al :e # <cr>
nmap ,script :tabedit ~/mas/script.sh <cr>
nmap ,rs :!~/mas/script.sh <cr>
nmap ,p :CtrlPLine <cr>
nmap ,b :call HtmlBeautify() <cr>

"let g:markdown_fenced_languages = ['cpp', 'ruby', 'json', 'javascript', 'c', 'sh', 'php', 'mysql', 'html', 'scss']
let g:table_mode_corner='|'
let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|git'
let g:rooter_targets = '/,*'
let g:rooter_change_directory_for_non_project_files = 'current'
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
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
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
au! BufNewFile,BufRead *.vs,*.fs set ft=glsl

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

" IDENTIFY HIGHLIGHT GROUP F10
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" TRANSLATE WORD UNDER CURSOR
function! TranslateWordUnderCursor()
  " get the current line number
  let line = line('.')
  " get the current column number
  let col = col('.')
  " set cursor 1 character backwards
  call cursor(line, col-1)
  " the word under cursor
  let word = expand('<cWORD>')
  execute '!' . 'trans :et ' . word
endfunction
nmap ,t :call TranslateWordUnderCursor() <cr>
