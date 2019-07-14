
" ~/.vim/syntax/vimwiki.vim

call plug#begin('~/.vim/plugged')
"Plug 'captbaritone/better-indent-support-for-php-with-html'
"Plug 'spf13/PIV'
"Plug '2072/PHP-Indenting-for-VIm'
Plug 'mxw/vim-jsx'
Plug 'makerj/vim-pdf'
Plug 'phpactor/phpactor'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/calendar.vim'
Plug 'dzeban/vim-log-syntax'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-vdebug/vdebug'
Plug 'ashisha/image.vim'
"Plug 'airblade/vim-rooter'
Plug 'digitaltoad/vim-pug'
"Plug 'MattesGroeger/vim-bookmarks'
Plug 'posva/vim-vue'
"Plug 'ap/vim-css-color'
Plug 'vim-latex/vim-latex'
Plug 'Matt-Deacalion/vim-systemd-syntax'
"Plug 'xuhdev/vim-latex-live-preview'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'jwalton512/vim-blade'
Plug 'mustache/vim-mustache-handlebars'
Plug 'dhruvasagar/vim-table-mode'
Plug 'moll/vim-node' 
Plug 'tpope/vim-surround'
Plug 'posva/vim-vue'
"Plug 'rhysd/vim-gfm-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'noahfrederick/vim-laravel'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
Plug 'cakebaker/scss-syntax.vim'
Plug 'yegappan/mru'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tikhomirov/vim-glsl'
Plug 'jwalton512/vim-blade'
Plug 'vim-vdebug/vdebug'
Plug 'scrooloose/nerdtree' 
Plug 'Haron-Prime/Antares'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'maksimr/vim-jsbeautify'
Plug 'othree/html5.vim'
Plug 'elzr/vim-json'
Plug 'Shougo/neocomplete.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ryanoasis/vim-devicons'
"Plug 'evidens/vim-twig'
Plug 'lumiliet/vim-twig'
"Plug 'lumiliet/vim-twig'
"Plug 'dsawardekar/wordpress.vim'
"Plug 'shawncplus/phpcomplete.vim'
Plug 'SirVer/ultisnips'
Plug 'StanAngeloff/php.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'dracula/vim'
Plug 'mitsuhiko/jinja2'
"Plug 'pallets/jinja'
"Plug 'rking/ag.vim'
Plug 'mattn/webapi-vim'
Plug 'endel/vim-github-colorscheme'
Plug 'tomasr/molokai'
Plug 'sjl/badwolf'
Plug 'nanotech/jellybeans.vim'
Plug 'joshdick/onedark.vim'
Plug 'vimwiki/vimwiki'
Plug 'alvan/vim-php-manual'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-fugitive'
call plug#end()

" <checkpoint> 

syntax on
filetype plugin on
colorscheme antares
"colorscheme dracula
"olorscheme badwolf
"colorscheme molokai
"colorscheme jellybeans
"colorscheme onedark

"setlocal omnifunc=syntaxcomplete#Complete
"set completeopt=menuone,preview
"set omnifunc=syntaxcomplete#Complete
set background=dark
set nocompatible
set encoding=utf8
set backupdir=~/.vim/backup/
"set guifont=CourierPrimeCode-Regular\ Nerd\ Font\ 10
set directory=~/.vim/swp/
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

set nowrap 
"set wrap
"set wrapmargin=8
"set showbreak=… 

"set list
"set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
"set showbreak=↪

set incsearch 
set hlsearch 
set splitbelow 
set autoindent copyindent 
set wildmenu 
"set relativenumber
set nonumber
set number

set guioptions-=T
set guioptions-=R
set guioptions-=r
set guioptions+=!
set guioptions=!

set noesckeys

set magic

"set foldmethod=indent
set laststatus=2
set mouse=n
set showcmd
set history=500
set autoread
set ruler
set hid
"set lazyredraw
"set ignorecase
set nolazyredraw
set ffs=unix,dos,mac
set nobackup
"set undofile
set nowb
set noswapfile
"set cmdheight=2
set path+=~/motizium/include/linmath.h
set path+=/usr/include/freetype2
set undodir=$HOME/.vim/undodir
set tags+=$HOME/ctags/tags
set tags+=$HOME/xeven/xeven.icu/public/glassesly-4/ctags
"set termguicolors
" set cursorline
" set wildignore+=node_modules/**

" <checkpoint>

nmap ,wot :VimwikiTabnewLink <cr>
nmap ,so :so ~/.vimrc <cr>
nmap ,edit :tabedit ~/.vimrc <cr>
nmap ,secret :tabedit ~/secret/passwords.json <cr>
nmap ,bspwm :tabedit ~/.config/bspwm/bspwmrc <cr>
nmap ,sxhkd :tabedit ~/.config/sxhkd/sxhkdrc <cr>
nmap ,notes :tabedit ~/notes <cr>
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
nmap ,read :tabedit ~/mas/vim/ref/readme.md <cr>
nmap ,cref :tabedit ~/mas/vim/ref/reference.c <cr>
nmap ,vref :tabedit ~/mas/vim/ref/reference.vim <cr>
nmap ,xvim :tabedit .xvim <cr>
nmap ,si :tabedit ~/mas/vim/scripts.js <cr>
nmap ,re :tabedit +1buf <cr>
"nmap \mr :w <bar> !./start.sh <cr>
nmap \mr :w <bar> !sh .xvim <cr>
nmap \m1 :w <bar> !sh .xvim 1 <cr>
nmap \m2 :w <bar> !sh .xvim 2 <cr>
nmap \m3 :w <bar> !sh .xvim 3 <cr>
nmap \m4 :w <bar> !sh .xvim 4 <cr>
nmap \m5 :w <bar> !sh .xvim 5 <cr>
nmap \rt :w <bar> !./% <cr>
nmap ,mru :MRU <cr>
nmap ,ne :NERDTreeSteppedOpen <cr>
nmap ,nf :NERDTreeFind <cr>
nmap ,ex :Explore <cr>
nmap ,install :w <bar> source ~/.vimrc<bar> PlugInstall <cr>
imap ,l <c-r>=GetTemplate() <cr><esc>
nmap ,al :e # <cr>
nmap ,script :tabedit ~/mas/script.sh <cr>
nmap ,rs :!~/mas/script.sh <cr>
nmap ,p :CtrlPLine <cr>
nmap ,b :call HtmlBeautify() <cr>
nmap ,fi :FZF <cr>
nmap ,cb :CtrlPBuffer <cr>

" <checkpoint>

let s:mycolors = [
      \ 'badwolf', 
      \ 'molokai', 
      \ 'jellybeans', 
      \ 'onedark',
      \ 'antares', 
      \ 'morning',
      \ 'github']

let g:lorem = "LOREM TEXT"
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.snippets_custom.json')), "\n"))
"let g:markdown_fenced_languages = ['cpp', 'ruby', 'json', 'javascript', 'c', 'sh', 'php', 'mysql', 'html', 'scss']
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_json_syntax_conceal = 0
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
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:user_emmet_leader_key=','
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:livepreview_previewer = 'evince'
let g:jsx_ext_required = 1
"let g:livepreview_engine = 'your_engine' . ' [options]'
"let g:livepreview_cursorhold_recompile = 0

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

" <checkpoint>


au BufNewFile,BufRead *.env.default set filetype=sh syntax=sh
au BufNewFile,BufRead *.mu set filetype=html.mustache syntax=mustache 
au FileType vue syntax sync fromstart
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufRead,BufNewFile boxec.conf set filetype=config
au BufRead,BufNewFile .xvim set filetype=sh
au FileType scss set iskeyword+=-
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType php setlocal autoindent

au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au! BufNewFile,BufRead *.vs,*.fs set ft=glsl
au! BufNewFile,BufRead .bowerrc set ft=json

"hi Search ctermfg=red ctermbg=none guibg=NONE guifg=yellow
" hi IncSearch ctermbg=yellow ctermfg=black

" hi Search ctermfg=199 ctermbg=none guibg=NONE guifg=yellow

"hi Normal 		ctermbg=0 guifg=#f6f3e8 guibg=#242424 gui=none
"hi NonText 		ctermbg=0 guifg=#f6f3e8 guibg=#242424 gui=none

"hi Normal 		ctermbg=233 guifg=#f6f3e8 guibg=#242424 gui=none
"hi NonText 		ctermbg=233 guifg=#f6f3e8 guibg=#242424 gui=none

"hi string ctermfg=228
"hi vimIsCommand ctermfg=255
"hi Statement ctermfg=11
"hi vimLet ctermfg=212
"hi vimCommand ctermfg=212
"hi vimMap ctermfg=212
"hi vimIsCommand ctermfg=212
"hi vimFuncKey ctermfg=84
"hi Type ctermbg=none
"hi Todo ctermbg=none
"hi SpecialComment ctermbg=none
"hi DraculaCyanItalic ctermbg=none
"hi VimOption ctermbg=none
"hi vimUserAttrbKey ctermbg=none
"hi vimAutoEventList ctermbg=none
"hi vimAutoCmdSfxList ctermbg=none
"hi htmlArg ctermbg=none ctermfg=225
"hi DraculaGreenItalic ctermbg=none

"hi DraculaCyanItalic ctermbg=none
"hi LineNr 		guibg=#242424 gui=none
"hi NonText ctermfg=236
"hi TabLine guifg=#ffffff guibg=#333333
"hi Comment ctermfg=red
"hi Search guibg=#111111 guifg=#ff2222
"hi Pmenu guibg=#111111 guifg=#FFFFFF
"hi PmenuSel guibg=#222222 guifg=#FFCCCC
"hi comment ctermfg=red guibg=#ff0000
"hi Visual guibg=#222222 guifg=none
"hi Todo guifg=red ctermfg=red
"hi Visual ctermbg=160
"hi Pmenu ctermfg=160 ctermbg=none
"hi PmenuSel ctermfg=red
"hi clear CursorLine 
"hi CursorLine ctermbg=235 guibg=#111111


if has("autocmd") && exists("+omnifunc")
  autocmd Filetype *
        \	if &omnifunc == "" |
        \		setlocal omnifunc=syntaxcomplete#Complete |
        \	endif
endif

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

    let result = path . '/' . word
    if filereadable(result)
      " delete current line
      d
      " go one line up
      call cursor(line-1, 0)
      " read the file content
      "execute "read" . result
      execute (line == 1 ? '-1' : '') . "read" . result
      d
      execute "normal! =G"
    else
      echo result . ' does not exist'
    endif
  endif
  return ''
endfunction

" IDENTIFY HIGHLIGHT GROUP F10
" map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
"       \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
"       \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

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



"let loaded_setcolors = 1
" let s:mycolors = ['slate', 'pablo']  " colorscheme names that we use to set color
" Set list of color scheme names that we will use, except
" argument 'now' actually changes the current color scheme.
"function! s:SetColors(args)
"if len(a:args) == 0
"echo 'Current color scheme names:'
"let i = 0
"while i < len(s:mycolors)
"echo '  '.join(map(s:mycolors[i : i+4], 'printf("%-14s", v:val)'))
"let i += 5
"endwhile
"elseif a:args == 'all'
"let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
"let s:mycolors = uniq(sort(map(paths, 'fnamemodify(v:val, ":t:r")')))
"echo 'List of colors set from all installed color schemes'
"elseif a:args == 'my'
"let c1 = 'default elflord peachpuff desert256 breeze morning'
"let c2 = 'darkblue gothic aqua earth black_angus relaxedgreen'
"let c3 = 'darkblack freya motus impact less chocolateliquor'
"let s:mycolors = split(c1.' '.c2.' '.c3)
"echo 'List of colors set from built-in names'
"elseif a:args == 'now'
"call s:HourColor()
"else
"let s:mycolors = split(a:args)
"echo 'List of colors set from argument (space-separated names)'
"endif
"endfunction

"command! -nargs=* SetColors call s:SetColors('<args>')

"" Set next/previous/random (how = 1/-1/0) color from our list of colors.
"" The 'random' index is actually set from the current time in seconds.
"" Global (no 's:') so can easily call from command line.
"function! NextColor(how)
"call s:NextColor(a:how, 1)
"endfunction

"" Helper function for NextColor(), allows echoing of the color name to be
"" disabled.
"function! s:NextColor(how, echo_color)
"if len(s:mycolors) == 0
"call s:SetColors('all')
"endif
"if exists('g:colors_name')
"let current = index(s:mycolors, g:colors_name)
"else
"let current = -1
"endif
"let missing = []
"let how = a:how
"for i in range(len(s:mycolors))
"if how == 0
"let current = localtime() % len(s:mycolors)
"let how = 1  " in case random color does not exist
"else
"let current += how
"if !(0 <= current && current < len(s:mycolors))
"let current = (how>0 ? 0 : len(s:mycolors)-1)
"endif
"endif
"try
"execute 'colorscheme '.s:mycolors[current]
"break
"catch /E185:/
"call add(missing, s:mycolors[current])
"endtry
"endfor
"redraw
"if len(missing) > 0
"echo 'Error: colorscheme not found:' join(missing)
"endif
"if (a:echo_color)
"echo g:colors_name
"endif
"endfunction

"nnoremap <F8> :call NextColor(1)<CR>
"nnoremap <S-F8> :call NextColor(-1)<CR>
"nnoremap <A-F8> :call NextColor(0)<CR>

"" Set color scheme according to current time of day.
"function! s:HourColor()
"let hr = str2nr(strftime('%H'))
"if hr <= 3
"let i = 0
"elseif hr <= 7
"let i = 1
"elseif hr <= 14
"let i = 2
"elseif hr <= 18
"let i = 3
"else
"let i = 4
"endif
"let nowcolors = 'elflord morning desert evening pablo'
"execute 'colorscheme '.split(nowcolors)[i]
"redraw
"echo g:colors_name
"endfunction

" my go to link try
function! GoToLink()
  let word = expand('<cWORD>')
  execute 'cd ' . word
  echo word
endfunction

nmap ,cd :call GoToLink() <cr>
nmap ,go :call GoToLink() <cr>

" my run function
function! RunIt()
  let word = expand('<cWORD>')
  let line = getline('.')
  let test = matchstr(line, '"\zs[^"]\+\ze"')

  let list = split(test)

  let pro = remove(list, 0)

  let args = join(list)

  if filereadable( expand(pro) ) 
    execute '!' . pro . ' ' . args
  else
    echo 'NOT READABLE: ' . pro
  endif
endfunction

nmap ,ru :call RunIt() <cr>

" my qutebrowser function
function! MyQuteBrowser()
  let word = expand('<cWORD>')
  let link = matchstr(word, '"\zs[^"]\+\ze"')
  execute '!qutebrowser ' . link
endfunction
nmap ,qute :call MyQuteBrowser() <cr>

" my open function 
function! MyOpenFunction()
  let word = expand('<cWORD>')
  let link = matchstr(word, '"\zs[^"]\+\ze"')
  execute '!xdg-open ' . link
endfunction
nmap ,open :call MyOpenFunction() <cr>

" my back to git function
function! BackToGit()
  let dir = expand('%:p:h')
  let escaped = escape(dir, ' ')

  let found = finddir('.git', escaped . ';')

  let modified = fnamemodify(found, ':h')

  let fescaped = fnameescape(modified)

  echo fescaped

  execute 'cd ' . fescaped

endfunction
nmap ,git :call BackToGit() <cr>

" sample function which output 'LOREM TEXT'
function! OutputLoremText()
  echo 'LOREM TEXT'
endfunction

" create file under cursor with ,create key combination
function! CreateFileUnderCursor()
  let f = expand('<cfile>')
  call writefile([], expand(f), 't')
endfunction

nmap ,create :call CreateFileUnderCursor() <cr>

" my Pman function
function! Pman(arg)
  "let args = expand
  execute 'help ' . a:arg
endfunction

command! Test call OutputLoremText()
command! -nargs=1 Pman call Pman('<args>') 

function! CameleonColor()
  let xoutput = system("chameleon")
  let xparts = split(xoutput)
  let xcolor = xparts[0]
  return xcolor
endfunction
"map ,co :call CameleonColor() <cr>
imap ,co <c-r>=CameleonColor() <cr>

function! NextCheckPoint()
  /\<checkpoint\>
  :normal zz
endfunction

function! AddCheckPoint()
  let current_filetype = &filetype

  if (match("vim", current_filetype) == 0)
    :normal o" <checkpoint>
  else
    :normal o<!-- <checkpoint> -->
  endif

endfunction

" <checkpoint>

nmap ,nc :call NextCheckPoint() <cr>
nmap ,np :call NextCheckPoint() <cr>

nmap ,acp :call AddCheckPoint() <cr>

function! MyDate()
  let out = system("date")
  let len = strlen(out)
  let part = strpart(out, 0, len-1)

  return part
endfunction

imap ,md <c-r>=MyDate() <cr>

" vim :set ft=vim:

" |A| - [urxvt -e /bin/sh -c 'ls;bash'] X

function EnterFunction()

  let type = 'A'

  let msg = 'INVALID LINE DETECTED'

  let line = getline('.')

  " CHECK IF STARTS WITH |A|

  if !empty(matchstr(line, '|A|'))
    let type = 'A'
  elseif !empty(matchstr(line, '|B|'))
    let type = 'B'
  elseif !empty(matchstr(line, '|C|'))
    let type = 'C'
  elseif !empty(matchstr(line, '|D|'))
    let type = 'D'
  elseif !empty(matchstr(line, '|T|'))
    let type = 'T'
  else
    echo 'INVALID STRING DETECTED'
    return
  endif

  " EXTRACT TEXT INSIDE BRACKETS
  let test = matchstr(line, '\[.*\]')
  if empty(test)
    echo 'INVALID STRING DETECTED'
    return
  endif

  let command = test[1:strlen(test)-2]

  if type == 'A'
    execute "silent !" . "nohup " . command . "& disown"
  elseif type == 'B'
    execute "silent !" . "nohup " . "urxvt -e /bin/sh -c '" . command . ";'" . "& disown"
  elseif type == 'T'
    execute "silent !" . "nohup " . "urxvt -e /bin/sh -c '" . command . ";bash'" . "& disown"
  elseif type == 'D'
    execute "silent !clear;" . command . ";printf '\\nPRESS ENTER TO CLOSE';read"
  elseif type == 'C'
    execute "silent !" . "nohup " . "urxvt -e /bin/sh -c '" . command . ";read'" . "& disown"
  endif

  execute 'redraw!'

endfunction

map <silent> <space> :call EnterFunction() <cr>

syntax match enterApp "|A|"
syntax match enterApp "|B|"
syntax match enterApp "|C|"
syntax match enterApp "|D|"

hi enterApp ctermfg=121
