#lL###############################################################
#################################################################
#┌─────────────────────────────────────────────────────────────┐#
#│ ______        __      __  __                                │#
#│/\__  _\      /\ \    /\ \/\ \  __            __             │#
#│\/_/\ \/    __\ \ \/'\\ \ `\\ \/\_\    ___   /\_\     __     │#
#│   \ \ \  /'__`\ \ , < \ \ , ` \/\ \ /' _ `\ \/\ \  /'__`\   │#
#│    \ \ \/\  __/\ \ \\`\\ \ \`\ \ \ \/\ \/\ \ \ \ \/\ \L\.\_ │#
#│     \ \_\ \____\\ \_\ \_\ \_\ \_\ \_\ \_\ \_\_\ \ \ \__/.\_\│#
#│      \/_/\/____/ \/_/\/_/\/_/\/_/\/_/\/_/\/_/\ \_\ \/__/\/_/│#
#│                                             \ \____/        │#
#│                                              \/___/         │#
#└─────────────────────────────────────────────────────────────┘#
#################################################################
#               ________      _______. __    __                 #
#              |       /     /       ||  |  |  |                #
#              `---/  /     |   (----`|  |__|  |                #
#                 /  /       \   \    |   __   |                #
#                /  /----.----)   |   |  |  |  |                #
#               /________|_______/    |__|  |__|                #
#################################################################
#!/usr/bin/env zsh
# Author - TekNinja-Kevin Tangereen Spidermankevin78@gmail.com 
# Last Update October 23th 2017
# License - © 2017 WTFPL - http://www.wtfpl.net/ 
##################################################################
#--------------Color Variables----------------#{{{
###############################################
###################################
##----------------------------////#
##======:Colors Variables:====////#
##----------------------------////#
###################################
#

#--------Color Codes{{{
#======================================================
# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

# Underline
UBlack='\e[4;30m'       # Black
URed='\e[4;31m'         # Red
UGreen='\e[4;32m'       # Green
UYellow='\e[4;33m'      # Yellow
UBlue='\e[4;34m'        # Blue
UPurple='\e[4;35m'      # Purple
UCyan='\e[4;36m'        # Cyan
UWhite='\e[4;37m'       # White

# Background
On_Black='\e[40m'       # Black
On_Red='\e[41m'         # Red
On_Green='\e[42m'       # Green
On_Yellow='\e[43m'      # Yellow
On_Blue='\e[44m'        # Blue
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Cyan
On_White='\e[47m'       # White

# High Intensity
IBlack='\e[0;90m'       # Black
IRed='\e[0;91m'         # Red
IGreen='\e[0;92m'       # Green
IYellow='\e[0;93m'      # Yellow
IBlue='\e[0;94m'        # Blue
IPurple='\e[0;95m'      # Purple
ICyan='\e[0;96m'        # Cyan
IWhite='\e[0;97m'       # White

# Bold High Intensity
BIBlack='\e[1;90m'      # Black
BIRed='\e[1;91m'        # Red
BIGreen='\e[1;92m'      # Green
BIYellow='\e[1;93m'     # Yellow
BIBlue='\e[1;94m'       # Blue
BIPurple='\e[1;95m'     # Purple
BICyan='\e[1;96m'       # Cyan
BIWhite='\e[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\e[0;100m'   # Black
On_IRed='\e[0;101m'     # Red
On_IGreen='\e[0;102m'   # Green
On_IYellow='\e[0;103m'  # Yellow
On_IBlue='\e[0;104m'    # Blue
On_IPurple='\e[10;95m'  # Purple
On_ICyan='\e[0;106m'    # Cyan
On_IWhite='\e[0;107m'   # White

# }}}
#other Related Veriables#
export colorflag='color=always'
export LS_COLORS='no=0:fi=0:di=4;34:ln=1;36:pi=40;33:so=1;35:do=1;35:bd=40;33;1:cd=40;33;1:or=40;31;1:ex=1;32:*.tar=1;31:*.tgz=1;31:*.arj=1;31:*.taz=1;31:*.lzh=1;31:*.zip=1;31:*.rar=1;31:*.z=1;31:*.Z=1;31:*.gz=1;31:*.bz2=1;31:*.tbz2=1;31:*.deb=1;31:*.pdf=1;31:*.jpg=1;35:*.jpeg=1;35:*.gif=1;35:*.bmp=1;35:*.pbm=1;35:*.pgm=1;35:*.ppm=1;35:*.pnm=1;35:*.tga=1;35:*.xbm=1;35:*.xpm=1;35:*.tif=1;35:*.tiff=1;35:*.png=1;35:*.mpg=1;35:*.mpeg=1;35:*.mov=1;35:*.avi=1;35:*.wmv=1;35:*.ogg=1;35:*.mp3=1;35:*.mpc=1;35:*.wav=1;35:*.au=1;35:*.swp=1;30:*.pl=36:*.c=36:*.cc=36:*.h=36:*.core=1;33;41:*.gpg=1;33:*.txt=1;37:*.rem=0;44:*.bak=1;95'
ZLS_COLORS="$LS_COLORS"
COLORTERM=yes
#-----------------------#
#############################
#END OF SECTION#}}}
#--------------Zsh-General-Settings-----------#{{{
###############################################
#--------Zsh-General-Setting------------------#
###############################################


#---------------------------------------------#
if [ -f ~/.alert ]; then echo '>>> check ~/.alert'; fi

#------------------General-Variables----------#
export LANG='en_US.UTF-8' 					  #Speak English or Die
export ARCHFLAGS="-arch x86_64"  			  #64bit 
ZSH_THEME="agnoster"                          #Promt theme.
DISABLE_AUTO_UPDATE="true"                    #disable automatic zsh updats.
DISABLE_AUTO_TITLE="true"                     #do not change window title.
ENABLE_CORRECTION="true"        			  #check spelling ageist history and file/Folder names.
COMPLETION_WAITING_DOTS="true"  			  #Show dots whale thinking
DIRSTACKSIZE=20                               #it's Good to Have a big stack.
#Path Varibles--------------------------------#
export MANPATH="/usr/local/man:$MANPATH"
export ZSH=$HOME/.oh-my-zsh                   #Defualt Og-My-Zsh Location
export PATH="$PATH:$HOME/scripts"             #add Personal scripts to search path
export PATH="$PATH:$HOME/bin"                 #every one sould have a personal bin
export PATH="$PATH:/sbin"                     #sbin not on defualt search path in the deb 
export PATH="$PATH:/usr/sbin"                 #the other sbin
export PATH="$PATH:/home/kevin/scripts/Fun"   #oh pretty (but wast of time[im good at that])
export POWERLINE_CONFIG_COMMAND=/usr/local/bin/powerline-config
export ZSH_PLUG=$HOME/.oh-my-zsh/plugins      #so I dont have to keep typing plugs path 
#---------------------------------------------#
#--------------Some-Options-------------------#
setopt INTERACTIVE_COMMENTS                   # able to comments on commands 
setopt PROMPT_CR                              # Add Carage return after prompt
setopt NOTIFY                                 # allow notifications
setopt AUTO_CD                                # instead of 'cd folder' if you could just type <name of folder>
setopt MULTIOS                                # now we can pipe to multiple outputs!
setopt CORRECT                                # spell check commands!  (Sometimes annoying)
unsetopt correctall                           # Makes spell check less anoying
setopt AUTO_PUSHD                             # This makes cd=pushd
setopt AUTO_NAME_DIRS                         # This will use named dirs when possible
setopt NO_BEEP                                # Beeps are anoying
setopt RM_STAR_WAIT                           # wait for answer on wildcard when using rm
#---------------------------------------------#
#-----------------Globbing--------------------#
setopt extendedglob                           #Extend that shit biacth
unsetopt caseglob                             #
#---------------------------------------------#
#END Of SECTION}}}
#--------------Zsh Plug-ins-------------------#{{{
####################################
#---------Zsh Plug-Ins------------ #
####################################
#
#--------Uzing AutoLaod------------#
autoload -Uz zutil
autoload -Uz compinit
autoload -Uz promptinit
autoload -Uz colors
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
autoload -Uz zcalc
autoload -Uz zftp
autoload -Uz curses
#----------------------------------#

#------------zle-------------------#
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
#----------------------------------#
#------------Sources---------------#
source $ZSH/oh-my-zsh.sh
source $HOME/.local/bin/bashmarks.sh
source $HOME/.aliasrc
source ~/.aliasrc
source ~/.local/share/icons-in-terminal/icons_bash.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/plugins/
source $ZSH_PLUG/web-search/web-search.plugin.zsh
source $ZSH_PLUG/history-substring-search/history-substring-search.zsh
source $ZSH_PLUG/zsh_reload/zsh_reload.plugin.zsh
source $ZSH_PLUG/colorize/colorize.plugin.zsh
source $ZSH_PLUG/autojump/autojump.plugin.zsh
source $ZSH_PLUG/command-not-found/command-not-found.plugin.zsh
source $ZSH_PLUG/cp/cp.plugin.zsh
source $ZSH_PLUG/rsync/rsync.plugin.zsh
source $ZSH_PLUG/web-search/web-search.plugin.zsh
source $ZSH_PLUG/chucknorris/chucknorris.plugin.zsh
source $ZSH_PLUG/compleat/compleat.plugin.zsh
source $ZSH_PLUG/zsh-completions.plugin.zsh
source $ZSH_PLUG/copybuffer/copybuffer.plugin.zsh
source $ZSH_PLUG/wd/wd.plugin.zsh
source $ZSH_PLUG/themes/themes.plugin.zsh
source $ZSH_PLUG/copydir/copydir.plugin.zsh
source $ZSH_PLUG/dirhistory/dirhistory.plugin.zsh
source $ZSH_PLUG/taskwarrior/taskwarrior.plugin.zsh
#----------------------------------#
. /home/kevin/.oh-my-zsh/powerline.zsh
source /home/kevin/.oh-my-zsh/powerline.zsh
#
####################################
#END OF SECTION#}}}
#--------------Zsh Defualt Programs-----------#{{{
####################################
#---------Defualt Programs---------#
####################################
#-------------exports--------------#
export OPENER="rifle"              #Rangers opener Works great for cli also easer to configer then xdg
export EDITOR="vim"                #To late to use anthing else
export READER="zathura"            #Great PDF reader
export IMAGEVIEWER="~/scripts/img" #script that uses w3mimage to desplay images in the terminal
export COMICER="comix"             #Nuff Said
export PAGER="most"                #becouse it's colored less is good also
export MUSIC="ncmpcpp"             #Flaver of the week
export ROOTER="sudo"                 #Super user dodad
export GUIROOTER='gksudo'
export BROWSER='firefox'           #Open Source legand
export BROWSERCLI='w3m'            #images do i have to say anything else
export WORDPROCESSOR='abiword'     #lightest one i could find 
export FILEMANAGER=$'ranger'       #Best of The Best 
export MUSICER='mpv'               #yep
export PLAYER='mpv'                #yep again
export NFOVIEWER='nfoview'         #to view nfo files why else
export POWERLINE_CONFIG_COMMAND=/usr/bin/powerline-config
export CD_WRITER='genisoimage'
unset SSH_ASKPASS
#----------------------------------#
####################################
#END OF SECTION#}}}
#--------------Zsh History Settings-----------#{{{
####################################
#-------Zsh History Setting--------#
####################################
#------------Verables--------------#
HISTFILE=~/.zsh_history            # where to save zsh history
HISTSIZE=10000
SAVEHIST=10000
HIST_STAMPS="mm/dd/yyyy"
#----------------------------------#
#------------Options---------------#
setopt HIST_FIND_NO_DUPS
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_ALLOW_CLOBBER
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY
#----------------------------------#
#----------htsr Setting------------#
export HH_CONFIG=hicolor,casesensitive
export HH_CONFIG=favorites,monochromatic
export HH_CONFIG=keywords,hicolor,debug
#----------------------------------#
###################################
#END OF SECTION#}}}
#--------------Zsh Completions----------------#{{{
###################################--
#--------AutoComplete-------------#
###################################
#
#------------Options--------------#
autoload -U compinit && compinit  # enable autocompletion
setopt  COMPLETE_IN_WORD
fpath+=(~/.zsh/completion)        # set path to custom autocompletion
unsetopt menu_complete    		  # do not autoselect the first completion entry
setopt completealiases            # autocompletion CLI switches for aliases
zmodload -i zsh/complist
setopt complete_in_word           # tab completion from both ends
setopt glob_complete              # wildcard completion eg. *-tar
setopt always_to_end
#------------ZStyle---------------#
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"
zstyle ':completion::complete:*' use-cache 1                  # Faster! (?)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  
zstyle ':completion:*' menu select                            #To activate the menu, press tab twice.
zstyle ':completion:*' verbose yes                            #verbose
zstyle ':completion:*:descriptions' format '%B%d%b'i          #show descriptions
zstyle ':completion:*:messages' format '%d'                  
zstyle ':completion:*:warnings' format 'No matches for: %d'   #Tell Me there were no matches
zstyle ':completion:*' _completer _complete _match _approximate
zstyle ':completion:*' group-name ''                          #generate descriptions with magic
zstyle ':completion:*' auto-description 'specify: %d'         #generate descriptions with magic
zstyle ':completion:*:default' list-prompt '%S%M matches%s'   #Don't promt for a huge list page it
zstyle ':completion:*' file-sort modification reverse         #See new Files First
zstyle ':completion:*:manuals' separate-sections true         #put man page in sectuion
zstyle ':completion:*' list-separator 'fREW'
zstyle ':completion:*:approximate:*' max-errors 'reply=(  $((  ($#PREFIX+$#SUFFIX)/3  ))  )'
zstyle ':completion:*:corrections' format '%B%d (errors %e)%b'
zstyle ':completion::*:(rm|vi):*' ignore-line true           #ingore fineshed typed words
zstyle ':completion:*' ignore-parents parent pwd             #dont list pwd in cd complete
zstyle ':completion::approximate*:*' prefix-needed false     #for windcards
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin ~/bin ~/scripts
zstyle ':completion:*' ignore-perants parent pwd
# autocomplete case-insensitive (all),partial-word and then substring
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'
zstyle ':completion:*' rehash true
zstyle ':completion:*:kill:*' force-list always
 
# add sudo in front of current command
sudo_ (){
    BUFFER="sudo $BUFFER"
    CURSOR=$#BUFFER
}
zle -N sudo_
bindkey "^f" sudo_
#---------------------------------#
#END OF SECTION}}}
#--------------Zsh Keybings-------------------#{{{
###################################
#----------Key Bindings-----------#
###################################
bindkey '\e[1~' beginning-of-line                                         #Home key
bindkey '\e[4~' end-of-line                                               #End Key
bindkey -a u undo                                                         #Undu
bindkey -a '^T' redo                                                      #Redo
bindkey '^?' backward-delete-char	                                      #backspace
bindkey '\e[A' up-line-or-history
bindkey '\e[B' down-line-or-history
bindkey '\eOA' up-line-or-history
bindkey '\eOB' down-line-or-history
bindkey '\e[C' forward-char
bindkey '\e[D' backward-char
bindkey '\eOC' forward-char
bindkey '\eOD' backward-char
bindkey '\e[2~' overwrite-mode
bindkey '\e[3~' delete-char
[[ -n '$key[Up]'   ]] && bindkey -- '$key[Up]'   up-line-or-beginning-search
[[ -n '$key[Down]' ]] && bindkey -- '$key[Down]' down-line-or-beginning-search

# copy current command to clipboard (Ctrl+X)
zle -N copyx; copyx() { echo -E $BUFFER | xsel -ib }; bindkey '^X' copyx
######################################
#-------Vim Mode Keybindings---------#
######################################
bindkey -v                           #enable Vim Mode
autoload -U edit-command-line        #enable edit line in vim
zle -N edit-command-line             #
bindkey -M vicmd "q" push-line                                            #Oh wow this is awsome
bindkey -M viins '\C-i' complete-word                                     #
bindkey -M vicmd '!' edit-command-output
bindkey -M viins ' ' magic-space
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd 'u' undo
bindkey -M vicmd v edit-command-lin  #
bindkey -M vicmd "/" history-incremental-search-backward                  #ecamintal search backwords
bindkey -M vicmd "?" history-incremental-search-forward                   #incremental search forword
bindkey -M vicmd "//" history-beginning-search-backward
bindkey -M vicmd "??" history-beginning-search-forward
KEYTIMEOUT=1                         #you got 10 secondes

fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
#####################################
#END OF SECTION#}}}
#-------------Zsh Aliases-----------{{{
#-------PIPES ALIASES--------#
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"
alias -g M="| most"
alias -g B="&|"
alias -g HL="--help"
alias -g LL="2>&1 | less"
alias -g CA="2>&1 | cat -A"
alias -g NE="2> /dev/null"
alias -g NUL="> /dev/null 2>&1"
alias -g LC="| wc -l"
#-------------------------------------------------------------#
#--------------------use the newest---------------------------#
alias -g ND='*(/om[1])' 		# newest directory
alias -g NF='*(.om[1])' 		# newest file
#-------------------------------------------------------------#
#}}}
#--------------Zsh Suffix Alias----------------#{{{
##################################
#=========Suffix-Alias===========#
##################################

#open file with default program base on extension
# Ex: 'alias -s avi=mplayer' makes 'file.avi' execute 'mplayer file.avi'
alias -s {avi,flv,mkv,mp4,mpeg,mpg,ogv,wmv}=$PLAYER
alias -s {flac,mp3,ogg,wav}=$PLAYER
alias -s {gif,GIF,jpeg,JPEG,jpg,JPG,png,PNG}=$IMAGEVIEWER
alias -s {djvu,pdf,ps}="background $READER"
alias -s txt=$EDITOR
alias -s {md,markdown}=$EDITOR
alias -s epub="background $EBOOKER"
alias -s {cbr,cbz}="background $COMICER"
alias -s {exe,com,bat}=/usr/bin/dosbox
# might conflict with emacs org mode
alias -s {at,ch,com,de,net,org}="background $BROWSER"
alias -s {html,htm}=$BROWSERCLI
# archive extractor
alias -s ace="atool l"
alias -s rar="unrar l"
alias -s {tar,bz2,gz,xz}="tar tvf"	#tar.bz2,tar.gz,tar.xz
alias -s zip="unzip -l"

#}}}
#--------------Zsh Startup Screen--------------#{{{
#------------------------------////
# System Information:
#-------------------------=----////
#clear
echo -e "${white}";toilet -f future --metal "TekNinja, " $USER@$HOST;
#echo -ne "${blue}Today is:\t\t${darkgray}" `date`; echo ""
#echo -e "${white}Kernel Information: \t${darkgray}" `uname -smr`
echo -ne "${purple}";upinfo;echo ""
#echo -ne ;screenfetch
echo -e "${purple}";remindme
#}}}
#--------------Zsh Syntax-Highlighting-------#{{{
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_STYLES[default]='none'
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES=(
        'alias'                  'fg=cyan'
        'builtin'                'fg=yellow'
        'function'               'fg=blue,bold'
        'command'                'fg=green'
        'hashed-commands'        'fg=green,underline'
        'precommand'             'fg=cyan,bold'
        'commandseparator'       'fg=yellow'
        'assign'                 'fg=magenta'
        'path'                   'underline'
        'double-hyphen-option'   'fg=blue,bold'
        'single-hyphen-option'   'fg=blue,bold'
        'unknown-token'          'fg=red'
)
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'
ZSH_HIGHLIGHT_PATTERNS+=('sudo' 'fg=red,bold')
ZSH_HIGHLIGHT_STYLES[root]='bg=red'
#}}}
##################################################################
#--------------Zsh Shotcuts fuction---------------------{{{
function sc() {
  if [ $2 ]
  then
    shortcut $1 $2
  elif [ $1 ]
  then
    cd "$(shortcut $1)"
  else
    printf "Usage:\n\tSet shortcut: sc <name> <path>\n\tGo to shortcut: sc <name>\n"
  fi
}
#}}}
##################################################################
