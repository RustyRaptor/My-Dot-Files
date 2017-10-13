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
"dwm
"syntastic
"#-----General Settings{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime! debian.vim             " Set Vim to work with Debian 
colorscheme satori       		" My favorite Color Scheme.
hi Normal ctermbg=none          " Trasparent Back Ground
hi NotText ctermbg=none         " Trasparent Back Ground
hi LineNr ctermbg=none          " Transparent Back Ground
syntax on                       " Redundent but works.
filetype plugin indent on       " File type plug ins and autoendent
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8 				" Is there any other encoding really?
set history=1000                " Remeamber 
set nocompatible        		" Make Vim more useful
set noswapfile          		" Desable The Swap File
set clipboard=unnamed   		" Use the OS clipboard by default 
set wildmenu            		" Enhance command-line completion.
set t_Co=256            		" 256 color terminal.
set showcmd						" Show (partial) command in status line.
set showmatch		        	" Show matching brackets.
set ignorecase		        	" Do case insensitive matching.
set smartcase		        	" Do smart case matching.
set incsearch		        	" Incremental search.
set autoread                    " Automatically read for syntax.
set autowrite		        	" Automatically save before commands like :next and :make
set mouse=a		        		" Enable mouse usage (all modes).
set number                      " Enables Line Numbers 
set numberwidth=5   			" Number of culumns for line numbers.
set smartindent                 " Set Smartindent
set autoindent                  " Who does not want auto endent.
set ruler                       " show curser position.
set magic                       " for regular expersions turn magic on
set esckeys                     " Allow cursor keys in insert mode
set backspace=indent,eol,start  " Allow backspace in insert mode
set modelines=4         		" Respect modeline in files
set modeline                    " show status line  
set tabstop=4 					" Make tabs as wide as two spaces
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_ "Markers
set list 						" Show “invisible” characters
set nostartofline 				" Dont go to start of line when moving around
set showmode 					" Show the current mode
set title 						" Show the ilename in the window titlebar
set scrolloff=3 				" Start scrolling three lines before the horizontal window border
set laststatus=2                " Status line on
set cmdheight=5                 " Lots of space
set visualbell                  " No sound
set confirm                     " Set Confermation
set backup                      " Make Backup
set matchpairs+=<:>             " use % to jump between pairs
set hidden                     "        
set foldenable                  " Turn Folding on
set foldmethod=marker           " Use {{{}}} To mark Folding
set omnifunc=syntaxcomplete     " Complete
set fillchars=vert:│            " that's a vertical box-drawing character useful for split views ala :vsplit
set incsearch                   " do highlight as you type
set matchtime=3                 " blinking time for matching brackets
set backupdir=$HOME/.vim/backup " but not when they clog .
set directory=$HOME/.vim/swap   "  Same for swap files
set timeoutlen=1000             " time waiting for next char in command"
set grepprg=grep\ -nH\ $*      
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Undo File 
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#}}} 
"#-----Plug Ins***{{{
""""""""""""""""""""""""''''''''''''''''''''''''''''''''''''''''''''''''"
"Nerd Tree
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
""""""""""""""""""""""synastics""""""""""""""""""""""""""""""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "X"
let g:syntastic_style_error_symbol = ">"
let g:syntastic_warning_symbol = "!"
let g:syntastic_style_warning_symbol = ">"
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_compiler_options = " -std=c++11"
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_coffeescript_checkers = ["coffeelint"]
let g:syntastic_markdown_checkers = ['mdl']
let g:syntastic_css_checkers = ["csslint", "prettycss"]
let g:syntastic_python_checkers = ["flake8", "python"]
let g:syntastic_html_checkers = ['validator']
let g:livepreview_previewer = 'evince'
let g:html_indent_inctags = "html,body,head,tbody"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""window Manager""""""""""""""""""""""""""
let g:winManagerWindowLayout = 'FileExplorer,BufExplorer'
"let g:tex_flavor='latex'
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#}}} 
"#***keymap***{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap H ^                         " Shift H goto Start of  line
noremap L $                         " Shift L goto End of line" 
nnoremap j gj                       " Use actial line insted of logical line
nnoremap k gk                       "                ===
nnoremap <C-j> <C-w>j  				" Move to window above 
nnoremap <C-k> <C-w>k   			" Move to window Below
nnoremap <C-h> <C-w>h   			" Move to window on left
nnoremap <C-l> <C-w>l               " Move to window on right
map cm :call clearmatches()         " Clear Search Matches
nmap ; :      
map <leader>l :bnext<cr>            " Goto Next Buffer 
map <leader>h :bprevious<cr>        " Goto Previous Buffer
map <C-t> :tabnew<CR>               " Goto New Tab
map <leader>nn :NERDTreeToggle<cr>  "Nerdtree file Tree
imap <C-c> <esc>                    "use Brake as an exit to insertmode
"last Tab Magic Trick
let g:lasttab = 1  			" 
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

"Fuction Keys Mapping  
   "F1: help Key
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"#}}}
"#***Fuctions***{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! WordProcessorMode()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spell spelllang=en
	setlocal noexpandtab
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


























