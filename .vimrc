"#################################################################
"#┌─────────────────────────────────────────────────────────────┐#
"#│ ______        __      __  __                                │#
"#│/\__  _\      /\ \    /\ \/\ \  __            __             │#
"#│\/_/\ \/    __\ \ \/'\\ \ `\\ \/\_\    ___   /\_\     __     │#
"#│   \ \ \  /'__`\ \ , < \ \ , ` \/\ \ /' _ `\ \/\ \  /'__`\   │#
"#│    \ \ \/\  __/\ \ \\`\\ \ \`\ \ \ \/\ \/\ \ \ \ \/\ \L\.\_ │#
"#│     \ \_\ \____\\ \_\ \_\ \_\ \_\ \_\ \_\ \_\_\ \ \ \__/.\_\│#
"#│      \/_/\/____/ \/_/\/_/\/_/\/_/\/_/\/_/\/_/\ \_\ \/__/\/_/│#
"#│                                             \ \____/        │#
"#│                                              \/___/         │#
"#└─────────────────────────────────────────────────────────────┘#
"#################################################################


"M""MMMMM""M oo                              
"M  MMMMM  M                                 
"M  MMMMP  M dP 88d8b.d8b. 88d888b. .d8888b. 
"M  MMMM' .M 88 88'`88'`88 88'  `88 88'  `"" 
"M  MMP' .MM 88 88  88  88 88       88.  ... 
"M     .dMMM dP dP  dP  dP dP       `88888P' 
"MMMMMMMMMMM                                 

""""""""""Required Plugins
"Syntastic
"NerdTree
"NerdCommitor
"lightline
"justify
"grammarous
"supertab
"

                        "-----General Settings{{{
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
runtime! debian.vim             " Set Vim to work with Debian 
colorscheme dw_purple           " My favorite Color Scheme
syntax on                       " redundent but works
filetype plugin indent on       " File type plug ins and autoendent
execute pathogen#infect()
set encoding=utf-8 				" Is there any other encoding really?
set history=1000                " Remeamber 
set nocompatible        		" Make Vim more useful
set noswapfile          		" Desable The Swap File
set clipboard=unnamed   		" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set wildmenu            		" Enhance command-line completion
set noswapfile          		" Desable swap file
set t_Co=256            		" 256 color terminal
set showcmd						" Show (partial) command in status line.
set showmatch		        	" Show matching brackets.
set ignorecase		        	" Do case insensitive matching
set smartcase		        	" Do smart case matching
set incsearch		        	" Incremental search
set autoread                    " Automatically read for syntax
set autowrite		        	" Automatically save before commands like :next and :make
set mouse=a		        		" Enable mouse usage (all modes)
set number                      " Enables Line Numbers 
set numberwidth=5   			" number of culumns for line numbers
set autoindent                  " Who does not want auto endent
set ruler                       " show curser position
set magic                       "for regular expersions turn magic on
set esckeys                     " Allow cursor keys in insert mode
set backspace=indent,eol,start  " Allow backspace in insert mode
set modelines=4         		" Respect modeline in files
set modeline                    " show status line  
set tabstop=4 					" Make tabs as wide as two spaces
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ "Markers
set list 						" Show “invisible” characters
set nostartofline 				" Dont go to start of line when moving around
set showmode 					" Show the current mode
set title 						" Show the filename in the window titlebar
set scrolloff=3 				" Start scrolling three lines before the horizontal window border
set laststatus=2                " Status line setup
set noswapfile          		" write .swp files
set foldenable                  " Vse Foldable Text
set ls=2                        " ls
set cmdheight=5                 " Lots of space
set visualbell                  " No sound
set smartindent                 " Set Smartindent
set confirm                     " Set Confermation
set backup                      " Make Backup
set nostartofline               " Do not goto start of line
set matchpairs+=<:>             " use % to jump between pairs
set foldenable                  " Turn Folding on
set foldmethod=marker           " Use {{{}}} To mark Folding
set omnifunc=syntaxcomplete     " Complete
set fillchars=vert:│            " that's a vertical box-drawing character useful for split views ala :vsplit
set incsearch                   " do highlight as you type
set hlsearch                    " do not highlight searched for phrases
set showmatch                   " show matching brackets
set matchtime=3                 " blinking time for matching brackets
set timeoutlen=500              " time waiting for next char in command"
set grepprg=grep\ -nH\ $*
set smarttab
set shiftwidth=4
set tabstop=4
set ai "Auto indent"
set si "smart indent"


   """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""                     "Undo File 
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#}}}
"#-----keymap{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast  Save
nmap <leader>w :w!<cr>
" Use space to inter insert mode
" Going all the way to the end/Start of Line
noremap H ^
noremap L $
" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk
" Move Form window to window
nnoremap <C-j> <C-w>j   
nnoremap <C-k> <C-w>k   
nnoremap <C-h> <C-w>h   
nnoremap <C-l> <C-w>l   
" Force Save
nmap :w<cr> :w!<cr>
" Use Brake to to exit insert mode
map <C-z> <Esc> 
"Cut n past
vmap <C-C> y: call system("xclip -i -selection clipboard", getreg("\""))<CR>
nmap <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
imap <C-v> <Esc><C-v>
"Nerd Tree
map <leader>n :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr
"Nerd Commenter
nmap <Leader>z <Plug>NERDCommenterToggle
vmap <Leader>z <Plug>NERDCommenterToggle
" Clear Search Matches
nmap cm :call clearmatches()
" Change case
"inoremap <C-u> <esc>mzgUiw`za
"faster Commands
nmap ; :
" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT
" Close all the buffers
map <leader>ba :bufdo bd<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
" Firefox keybindings
       nmap <leader> tn  :tabnext<CR>
    map <C-t> :tabnew<CR>
	map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 


" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
nnoremap ,z zMzvzz
" move between matching opening and ending code; example { code }
map <tab> %
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>
" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
"Fuction Keys Mapping
"   F1: help Key
    map <F1> :help 
	"F2: Show/Hide Marker Charcters
    map <silent> <F2> :set invlist<CR>
	"F3: HOW/Hide found pattern (After search)
    map <silent> <F3> :set invhlsearch<CR>
    "F4: Remove whitespace from end of lines
    map <silent> <F4> :%s/\s\+$//g<CR>
    "F5: Reload .vimrc
    map <silent> <F5> :source ~/.vimrc<CR>
    "F6: Format paragraph
    map <silent> <F6> gwap
	"F7: Spell Check on and off 
	nn<F7>:setlocal spell! spelllang=en_us<CR>
	map <F7><C-o>setlocal spell! spellang=en_us<CR>
	map <silent> <F8> g<C-G>
    "F9: Mapping for creating HTML of current buffer
    map <silent> <F9> :runtime! syntax/2html.vim<CR>

	"F11 Use to toggle between 'paste' and 'nopaste'
	set pastetoggle=<F11>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""	
"#}}}
"#***Light Line Settings***{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:lightline = {
      \ 'colorscheme': 'Tomorrow',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive','absolutepath'],['percent'],['ctrlpmark'] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'filename': 'LightlineFilename',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'fileencoding': 'LightlineFileencoding',
      \   'mode': 'LightlineMode',
      \   'ctrlpmark': 'CtrlPMark',
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

function! LightlineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightlineFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' && has_key(g:lightline, 'ctrlp_item') ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

function! LightlineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = ''  " edit here for cool mark
      let branch = fugitive#head()
      return branch !=# '' ? mark.branch : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction


  autocmd FileType text setlocal textwidth=78
function! LightlineFiletype()
						  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

function! LightlineFileencoding()
  return winwidth(0) > 70 ? (&fenc !=# '' ? &fenc : &enc) : ''
endfunction

function! LightlineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP' && has_key(g:lightline, 'ctrlp_item')
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#}}}
"#***Fuctions***{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! WordProcessorMode()
	setlocal textwidth=80
	"setlocal smartindent
	setlocal spell spelllang=en
	"setlocal noexpandtab
g:grammarous#use_vim_spelllang`. Default 0, to enable
endfu

com! WP call WordProcessorMode()

fun! RangerChooser()
    exec "silent !ranger --choosefile=/tmp/chosenfile " . expand("%:p:h")
    if filereadable('/tmp/chosenfile')
        exec 'edit ' . system('cat /tmp/chosenfile')
        call system('rm /tmp/chosenfile')
    endif
    redraw!
endfun
map ,r :call RangerChooser()<CR>
function! OpenCurrentLine()
	let line = getline (".")
	Let line = substitute(line, '^\(_*\)$','"\1'","g")
	exec "!xdg-open" line '>&/dev/null &'
endfunction
map <f8> :call OpenCurrentLine()
 command Preview :!firefox %<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#}}}
"#Auto Commands{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""For HTML
autocmd FileType html inoremap ;b <b></b><Space><Esc>FbT>i
autocmd FileType html inoremap ;i <em></em><Space><Esc>FeT>i
autocmd FileType html inoremap ;1 <h1></h1><Enter><Enter><Esc>2kf<i
autocmd FileType html inoremap ;2 <h2></h2><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ;3 <h3></h3><Enter><Enter><++><Esc>2kf<i
autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>02kf>a
autocmd FileType html inoremap ;a <a<Space>href=""><++></a><Space><++><Esc>F"i
autocmd FileType html inoremap ;ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
autocmd FileType html inoremap ;li <Esc>o<li></li><Esc>F>a
autocmd FileType html inoremap ;ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#}}}



























