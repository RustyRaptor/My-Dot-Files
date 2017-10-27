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
"===========M""MMMMM""M oo                              =========#
"===========M  MMMMM  M                                 =========#
"===========M  MMMMP  M dP 88d8b.d8b. 88d888b. .d8888b. =========#
"===========M  MMMM' .M 88 88'`88'`88 88'  `88 88'  `"" =========#
"===========M  MMP' .MM 88 88  88  88 88       88.  ... =========#
"===========M     .dMMM dP dP  dP  dP dP       `88888P' =========#
"===========MMMMMMMMMMM                                 =========#
"================================================================#

" Author - TekNinja-Kevin Tangereen Spidermankevin78@gmail.com 
" Last Update October 23th 2017
" License - © 2017 WTFPL - http://www.wtfpl.net/ 

"*******************************************
"#***General Settings***{{{
"================================================================="
"=###################General Settings############################="
"================================================================="
runtime! debian.vim             " Set Vim to work with Debian 
"=======color=Schemes{{{
"colorscheme luna      		" My favorite Color Scheme.
"colorscheme xoria256
"colorscheme fruity
"colorscheme molokai
"colorscheme blue
"colorscheme solarized
"colorscheme eclipse
"colorscheme wal
"colorscheme zenburn
"colorscheme leo
"colorscheme darkZ
"colorscheme adaryn
"colorscheme adrian
"colorscheme kolor
 "colorscheme  skittles_berry
 "colorscheme Tomorrow-Night-Eighties
 "colorscheme zmrok
 "colorscheme vc
" colorscheme neonbrainfuck
" colorscheme anotherdark
colorscheme ironman
"colorscheme base16-default
"colorscheme hybrid
"colorscheme guardian
"colorscheme matrix
"colorscheme jammy
"colorscheme inkpot
"colorscheme mustang
colorsheme robinghood

#}}}
hi Normal ctermbg=none          " Trasparent Back Ground
hi NotText ctermbg=none         " Trasparent Back Ground
hi LineNr ctermbg=none          " Transparent Back Ground
"=============================
syntax on                       " Redundent but works.
filetype plugin indent on       " File type plug ins and autoendent
"================================================================="
set encoding=utf-8 				" Is there any other encoding really?
set history=1000                " Remeamber 
set nocompatible        		" Make Vim more useful
set noswapfile          		" Desable The Swap File
set clipboard=unnamed   		" Use the OS clipboard by default 
set wildmenu            		" Enhance command-line completion.
set t_Co=256            		" 256 color terminal.
set showcmd						" Show (partial) command in status line.
set showmatch		        	" Show matching brackets.
set showmode 					" Show the current mode
set showtabline=2               " Show tab line all the time.
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
set undodir=~/.vim_runtime/temp_dirs/undodir
set undofile
set switchbuf=useopen,usetab,newtab
set stal=2
"================================================================="
" watch for changes then auto source vimrc
" http://stackoverflow.com/a/2403926
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END
"================================================================="
"#}}} 
"#***Plug Ins***{{{
"================================================================="
"##########################Plug-Ins###############################"
"================================================================="
"
"================================================================="
"==========================Nerd Tree=============================="
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
"================================================================"
"==========================synastics============================="
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
autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120


autocmd Syntax javascript set syntax=jquery   " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"================================================================"
"======================Window Manager============================"
let g:winManagerWindowLayout = 'FileExplorer,BufExplorer'
"let g:tex_flavor='latex'
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
"================================================================"
"=====================Make calcurse notes========================"
"================================================================"
autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
autocmd BufRead,BufNewFile ~/.calcurse/notes/* set filetype=markdown

"++++++++++++++++++scrooloose/syntastic settings+++++++++++++++++"
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
" powerline
let g:Powerline_symbols = 'fancy'
" vimwiki with markdown support
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
"#}}} 
"#***keymap***{{{
"================================================================"
"############################Key Map#############################"
"================================================================"
noremap H ^                         " Shift H goto Start of  line
noremap L $                         " Shift L goto End of line" 
nmap H ^
nmap L $
nmap <leader>e :Explore
nmap <leader>q :quit
nnoremap j gj                       " Use actial line insted of logical line
nnoremap k gk                       "                ===
nnoremap <C-j> <C-w>j  				" Move to window above 
nnoremap <C-k> <C-w>k   			" Move to window Below
nnoremap <C-h> <C-w>h   			" Move to window on left
nnoremap <C-l> <C-w>l               " Move to window on right
map cm :call clearmatches()         " Clear Search Matches
nmap ; :
map <leader>l :tabn<cr>             " Goto Next tab 
map <leader>h :tabp<cr>             " Goto Previous 
map <C-t> :tabnew<CR>               " Goto New Tab
map <leader>nn :NERDTree
map <leader>b :bufexplore
map <leader>s :setlocal spell! spelllang=en_us
imap <C-c> <esc>                   

" move between matching opening and ending code; example { code }
map <tab> %

" Change case
inoremap <C-u> <esc>mzgUiw`za
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
	nmap<F7>:setlocal spell! spelllang=en_us<CR>
	map <F7><C-o>:setlocal spell! spellang=en_us<CR>
	map <silent> <F8> g<C-G>
    "F9: Mapping for creating HTML of current buffer
    map <silent> <F9> :runtime! syntax/2html.vim<CR>

	"F11 Use to toggle between 'paste' and 'nopaste'
	set pastetoggle=<F11>
"================================================================="	
"#}}}
"#***Status Line Settings***{{{
"================================================================="
"##################Status Line Settings###########################"
"================================================================="
     set rtp+=~/.config/powerline/bindings/vim
	  
    let g:powerline_pycmd = "py"
	 python from powerline.vim import setup as powerline_setup
	 python powerline_setup()
	 
"================================================================"
"#}}}
"#***Fuctions***{{{
"================================================================"
"########################Fuctions################################"
"================================================================"
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
"================================================================="
"#}}}
"#***folding**** {{{
"------------------------------------------------------
" enable folding; http://vim.wikia.com/wiki/Folding


" fold color
hi Folded cterm=bold ctermfg=DarkBlue ctermbg=none
hi FoldColumn cterm=bold ctermfg=DarkBlue ctermbg=none

"refocus folds; close any other fold except the one that you are on
nnoremap ,z zMzvzz


"}}}
" reopen file where you left off at{{{{
" http://stackoverflow.com/questions/774560
" make sure to have permissions to ~/.viminfo if it doesnt work
" sudo chown user:group ~/.viminfo
" where user is your username and group is often the same as your username
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

"}}}
" Abreviations {{{
" -----------------------------------------------------------------------------

" Time
iab _datetime <C-R>=strftime("%a %b %d %T %Z %Y")<CR>
iab _time <C-R>=strftime("%H:%M")<CR>
iab _date <C-R>=strftime("%d %b %Y")<CR>

" Personal
iab _name Vicente Gimeno Morales - Electro7
iab _mail vgimeno@grupocener.com

" Heads
iab _ct #-----------------------------------------------------------------------------#<ESC>ki
iab _cc // <CR>//----------------------------------------------------------------------------<ESC>ki

" HOME
iab _home ~/

"}}}
"********************************************





















