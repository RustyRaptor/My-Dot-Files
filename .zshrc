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
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#--------Programs{{{
export EDITOR="vim"
export READER="zathura"
export viewer="~/scripts/img"
export BROWSER="uzbl"
export BROWASERCLI="w3m"
export COMICER="comix"
export PAGER="most"
export PLAYER="mpv"
export FILEMANAGER="ranger"
source ~/.local/bin/bashmarks.sh
#}}}
#--------Paths{{{
export CDPATH="~/bin/:~/scripts"
export PATH="$PATH:/home/kevin/scripts:/home/kevin/bin:/sbin:/usr:/usr/sbin"
export PATH="$PATH:/home/kevin/scripts:/home/kevin/bin:/sbin:/usr:/usr/sbin:/home/kevin/scripts/Fun"
export GOPATH="home/kevin/.go"
export PATH="$PATH:$GOPATH/bin"
#}}}
#--------History {{{
#------------------------------------------------------
# get more info: $man zshoptions

setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt INTERACTIVE_COMMENTS        # pound sign in interactive prompt
HISTFILE=~/.zsh_history            # where to save zsh history
HISTSIZE=10000
SAVEHIST=10000
cfg-history() { $EDITOR $HISTFILE ;}

#
# }}}
#--------Theme{{{
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="cypher"
ZSH_THEME="agnoster"
#ZSH_THEME="dstufft"i
#ZSH_THEME="essembeh"
#ZSH_THEME="nanotech"
#ZSH_THEME="bira"
#ZSH_THEME="darkblood"
#ZSH_THEME="eastwood"
#ZSH_THEME="3den"
#ZSH_THEME="gozilla"
#ZSH_THEME="fishy"
#ZSH_THEME="flazz"
#ZSH_THEME="fox"
#ZSH_THEME="half-life"
#ZSH_THEME="humza"
#ZSH_THEME="gallois"
#ZSH_THEME="gnzh"
#ZSH_THEME="josh"
#ZSH_THEME="crunch"
#ZSH_THEME="trapd00r"
#ZSH_THEME="kolo"
#ZSH_THEME="mh"
#ZSH_THEME="mgutz"
#ZSH_THEME="KIWI"
#ZSH_THEME="mgutz'
#ZSH_THEME="kardan"
#ZSH_THEME="maran"
#ZSH_THEME="mikeh"
#ZSH_THEME="kafeitu"
#ZSH_THEME="jreese"

#}}}
#--------Oh-My-Zsh-Settings{{{
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
 DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colorize command-not-found debian theme zsh_reload chucknorris)
zstyle ':completion:*' menu select      # to activate the menu, press tab twice

source $ZSH/oh-my-zsh.sh
#}}}
#--------User configuration{{{

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
 export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="mate ~/.zshrc"
 alias ohmyzsh="mate ~/.oh-my-zsh"
#}}}
#--------Autocomplete {{{
#------------------------------------------------------
# http://www.refining-linux.org/archives/40/ZSH-Gem-5-Menu-selection/
# https://github.com/robbyrussell/oh-my-zsh/blob/master/lib/completion.zsh


autoload -U compinit && compinit        # enable autocompletion
fpath+=(~/.zsh/completion)              # set path to custom autocompletion
zstyle ':completion:*' menu select      # to activate the menu, press tab twice
unsetopt menu_complete                  # do not autoselect the first completion entry
setopt completealiases                  # autocompletion CLI switches for aliases
zstyle ':completion:*' list-colors ''   # show colors on menu completion

# http://unix.stackexchange.com/a/297000
setopt complete_in_word                 # tab completion from both ends
setopt glob_complete                    # wildcard completion eg. *-tar

# setopt auto_menu         # show completion menu on succesive tab press
# setopt always_to_end

# show dots if tab compeletion is taking long to load
expand-or-complete-with-dots() {
  echo -n "\e[31m......\e[0m"
  zle expand-or-complete
  zle redisplay
}
zle -N expand-or-complete-with-dots
bindkey "^I" expand-or-complete-with-dots

# autocomplete case-insensitive (all),partial-word and then substring
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# better completion for killall
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'

# when new programs is installed, auto update autocomplete without reloading shell
zstyle ':completion:*' rehash true

#}}}
#--------Vim Mode {{{
#------------------------------------------------------
# enable vim mode on commmand line
bindkey -v

# edit command with editor
# http://stackoverflow.com/a/903973
# usage: type someshit then hit Esc+v
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line



# no delay entering normal mode
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
# bindkey -a '^R' redo	# conflicts with history search hotkey
bindkey -a '^T' redo
bindkey '^?' backward-delete-char	#backspace

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward

# use cursor blinker color as indicator of vi mode
# http://andreasbwagner.tumblr.com/post/804629866/zsh-cursor-color-vi-mode
# http://reza.jelveh.me/2011/09/18/zsh-tmux-vi-mode-cursor

# bug; 112 ascii randomly showing up

#zle-keymap-select () {
#  if [ $KEYMAP = vicmd ]; then
#    if [[ $TMUX = '' ]]; then
#      echo -ne "\033]12;Red\007"
#    else
#      printf '\033Ptmux;\033\033]12;red\007\033\\'
#    fi
#  else
#    if [[ $TMUX = '' ]]; then
#      echo -ne "\033]12;Grey\007"
#    else
#      printf '\033Ptmux;\033\033]12;grey\007\033\\'
#    fi
#  fi
#}
#zle-line-init () {
#  zle -K viins
#  echo -ne "\033]12;Grey\007"
#}
#zle -N zle-keymap-select
#zle -N zle-line-init

# }}}
#--------Functions{{{
#-------------------------------------------------------------------


##############################
#----------Functions---------#
##############################

cfg-bash() { $EDITOR ~/.bashrc ;}
cfg-ranger() { $EDITOR ~/.config/ranger/config ;}
cfg-comix() { $EDITOR ~/.config/comix/keybindings.conf ;}
cfg-mpd() { $EDITOR ~/.mpd/mpd.conf ;}
cfg-mplayer() { $EDITOR ~/.mplayer/config ;}
cfg-mpv() { $EDITOR ~/.config/mpv/input.conf ;}
cfg-mocp() { $EDITOR ~/.moc/config ;}
cfg-mutt() { $EDITOR ~/.muttrc ;}
cfg-Xres() { $EDITOR ~/.Xresource ;}
cfg-ncmpcpp() { $EDITOR ~/.ncmpcpp/config ;}
cfg-i3wm() { $EDITOR ~/.i3/config ;}
cfg-cursor() { $EDITOR ~/.icons/default/index.theme ;}
cfg-cursor-list() { ls ~/.icons ;}
cfg-grub() { sudo $EDITOR /etc/default/grub ;}
cfg-ranger() { $EDITOR ~/.config/ranger/rc.conf ;}
cfg-ranger-rifle() { $EDITOR ~/.config/ranger/rifle.conf ;}
cfg-ranger-commands() { $EDITOR ~/.config/ranger/commands.py ;}
cfg-fstab() { sudo $EDITOR /etc/fstab ;}
cfg-profile() { $EDITOR ~/.profile ;}
cfg-xresources() { $EDITOR ~/.Xresources ;}

reloadxd() { xrdb ~/.Xdefaults ;}
rld-xmodmap() { xmodmap ~/.Xmodmap ;}
reloadxr() { xrdb -load ~/.Xresources ;}

killall-zombies() { kill -HUP $(ps -A -ostat,ppid | grep -e '[zZ]'| awk '{ print $2 }') ;}

rationalise-dot() {
	if [[ $LBUFFER = *.. ]]; then
	LBUFFER+=/..
	else
	LBUFFER+=.
fi
}
zle -N rationalise-dot
bindkey . rationalise-dot

lsg() {
		figlet -f smkeyboard List Grep
  keyword=$(echo "$@" |  sed 's/ /.*/g')
  ls -hlA --color=yes \
  | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}' \
  | grep -iE $keyword
}

[ -n "$RANGER_LEVEL" ] && PS1="$PS1"'(in ranger) '

#ranger cd
function rcd {
    tempfile='/tmp/chosendir'
    ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}



myip()
{
figlet myip
lynx -dump -hiddenlinks=ignore -nolist [url]http://checkip.dyndns.org:8245/[/url] | grep "Current IP Address" | cut -d":" -f2 | cut -d" " -f2
}
:wupinfo ()
{
echo -ne "${green}uptime is ${green} \t ";uptime | awk /'up/ {print $3,$4,$5,$6,$7,$8,$9,$10}'
}

cd() 
{
  if [ -n "$1" ]; then
    builtin cd "$@" && ls
  else
    builtin cd ~ && ls
  fi
}

lnet ()
{
	figlet -f fender Net Address
/sbin/ifconfig | awk /'inet addr/ {print $2}' 
echo ""
/sbin/ifconfig | awk /'Bcast/ {print $3}' 
echo ""
}
myip()
{
lynx -dump -hiddenlinks=ignore -nolist [url]http://checkip.dyndns.org:8245/[/url] | grep "Current IP Address" | cut -d":" -f2 | cut -d" " -f2
}
upinfo()
{
echo -ne "${green}uptime is ${green} \t ";uptime | awk /'up/ {print $3,$4,$5,$6,$7,$8,$9,$10}'
}
cd() 
{
  if [ -n "$1" ]; then
    builtin cd "$@" && ls
  else
    builtin cd ~ && ls
  fi
}

calc() {
		figlet -f larry3d Calculator 
		echo press ctrl+D to exit
  if which python2 &>/dev/null; then
    python2 -ic "from __future__ import division; from math import *; from random import *"
  elif which python3 &>/dev/null; then
    python3 -ic "from math import *; import cmath"
  elif which bc &>/dev/null; then
    bc -q -l
  else
    echo "Requires python2, python3 or bc for calculator features"
  fi
}

mkdircd() { mkdir -p -v $1; cd $1 ;}	          # create folder then cd into it
nohup-command() { nohup "$@" >/dev/null 2>&1& }   # background a process w/o error msg
open() { xdg-open "$@" > /dev/null 2>&1 ;}        # open with default GUI program

# ls recent items at bottom with green TODAY yel/low YESTERDAY substituted with file permission also
# https://www.reddit.com/r/archlinux/comments/41s1w4/what_is_your_favorite_one_liner_to_use/cz50y1m
# http://askubuntu.com/a/152005
lst() {
  ls -vAFq --color=yes -got --si --time-style=long-iso "$@" \
  | sed "s/$(date +%Y-%m-%d)/\x1b[32m     TODAY\x1b[m/;s/$(date +'%Y-%m-%d' -d yesterday)/\x1b[33m YESTERDAY\x1b[m/" \
  | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}' | tac
}

lsl() {
  ls -hl --color=yes "$@" \
  | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}'
}

export PATH_SCREENSHOT=~/Pictures/screenshots
pix() { scrot -d 2 "$PATH_SCREENSHOT/fullscr_`date +'%F_%Hh%Ms%S'`.png" ;}
# uses ip or ifconfig, good on older or newer system
m-ip() {
  figlet  Network Information 
  echo "router ip:" $(netstat -rn | awk 'FNR == 3 {print $2}')
  # newer system like archlinux
  ip addr | awk '/global/ {print $1,$2}' | cut -d\/ -f1
  ip addr | awk '/global/ {print $3,$4}'
  ip addr | awk '/ether/ {print $1,$2}'
  ip addr | awk '/scope link/ {print $1,$2}' | cut -d\/ -f1
  # older system like debian
  ifconfig | awk '/inet addr/ {print $1,$2}' | awk -F: '{print $1,$2}'
  ifconfig | awk '/Bcast/ {print $3}' | awk -F: '{print $1,$2}'
  ifconfig | awk '/inet addr/ {print $4}' | awk -F: '{print $1,$2}'
  ifconfig | awk '/HWaddr/ {print $4,$5}'
  ifconfig | awk '/Scope:Link/ {print $1,$3}' | cut -d\/ -f1
  # echo External IP $(curl -s http://checkip.dyndns.org/ | grep -o "[[:digit:].]\+")
  # echo External IP: $(curl -s http://ipaddr.io/)
  # echo External IP: $(curl -s https://icanhazip.com/)
  # echo External IP: $(curl -s https://ifconfig.co/)
  # echo External IP: $(curl -s http://pasteip.me/api/cli/ && echo)
  echo external ip: $(curl -s http://ipecho.net/plain)
  echo "---------------------------------------------------"
}

mount-discimage() {
  if [ $# -lt 1 ]
  then
    echo -e "mount ISO filesystem images (iso,nrg,bin,mdf,img)"
    echo -e "\nUsage:\n$0 <disc_image>"
    echo -e "\nExample:\n$0 disc_image.iso"
    echo -e "$0 disc_image.iso disc_image2.bin disc_image3.mdf"
    echo -e "$0 *.iso"
    return 1
  fi

  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    fuseiso -n -p "$arg" "/tmp/$arg"
  done

  # if mount was sucessful then cd and ls the mountpoint
  if [ $? -eq 0 ]; then
    cd "/tmp/$1" && ls
  else
    return 1
  fi
}

unmount-discimage() {
  if [ $# -lt 1 ]
  then
    echo -e "unmount ISO filesystem images (iso,nrg,bin,mdf,img)"
    echo -e "\nUsage:\n$0 <mount_point|disc_image>"
    echo -e "\nExample:\n$0 disc_image.iso"
    echo -e "$0 disc_image.iso disc_image2.bin"
    echo -e "$0 mount_point1 mount_point2"
    echo -e "cd /tmp && $0 mount_point"
    echo -e "cd /tmp && $0 *.iso"
    return 1
  fi

  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    fusermount -u "$arg"
  done
}

mount-img() {
  if [ $# -lt 1 ]; then
    echo -e "mount image to access files"
    echo -e "\nUsage: $0 <img_file>"
    echo -e "\nExample: $0 foo.img"
    return 1
  fi

  mkdir -p "/tmp/$1"
  sudo mount "$PWD/$1" "/tmp/$1"

  # if mount was sucessful then cd and ls the mountpoint
  if [ $? -eq 0 ]; then
    cd "/tmp/$1" && ls
  else
    return 1
  fi
}

unmount-img() {
  if [ $# -lt 1 ]; then
    echo -e "unmount image"
    echo -e "\nUsage: $0 <img_file>"
    echo -e "\nExample: $0 foo.img"
    return 1
  fi

  sudo umount "/tmp/$1"
  rmdir "/tmp/$1"
}

detox() {
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    filter_name=$(echo "$arg" | sed 's/%20/ /g' | sed 's/ /_/g' | tr '[:upper:]' '[:lower:]')
    mv -- "$arg" "$filter_name"
  done
}


cpbak() { cp $1{,.bak} ;}		          # create backup copy
#}}}
#-------------Alias List{{{
#--------------------------------------------------------------
##############################
#----Alias-------------------#
##############################

#_____________________________________________________________#
 alias sudo='sudo -i'
 alias sudo='sudo '					# make aliases work with sudo
#_____________________________________________________________#
#---------------------don't have to type cd to go back--------#
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
#-------------------------------------------------------------#
alias -g ND='*(/om[1])' 		# newest directory
alias -g NF='*(.om[1])' 		# newest file



#-------------------------listing files-----------------------#
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
# Always use color output for `ls`
export colorflag='color=always'
alias ls='ls --color=auto'
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
	export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
	colorflag="-G"
	export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi


# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"
# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
# Ls Files Only
alias lsf='ls --color=always -p | grep -v '/$''		
# sort by extension
alias lx='ls -lXB'
# sort by size
alias lk='ls -lSr'
# sort by change time
alias lc='ls -lcr'
# sort by access time
alias lu='ls -lur'
# recursive ls 
alias lr='ls -l | less'
# sort by date
alias lt='ls -ltr'
# ls + more
alias lm='ls -al |most'
#list Files and use pick to select them
alias lsp='ls | pick | xargs xdg-open'
#------------------------------------------------------------#
#--------------------- Shortcuts-----------------------------#
alias docs="cd ~/Documents"/
alias dl="cd ~/Downloads"
alias bk="cd /media/Shared_Docs/Books"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias g="git"
alias h="history"
alias j="jobs"
#------------------------------------------------------------#
#--------------------Language aliases------------------------#
alias rb='ruby'
alias py='python'
alias ipy='ipython'
alias jj="java jar-"
#------------------------------------------------------------#
#---------------- Directory Manepulation---------------------#
alias md='mkdir -p'
alias rd='rmdir'
#------------------------------------------------------------#
#----------------------Vim Like Exit-------------------------#
alias :q='exit'
alias q="exit"
#------------------------------------------------------------#
#--------------------Safer Commands--------------------------#
alias rm='rm -i -v'
alias cp='cp -i -v'
alias mv='mv -i -v'
alias du='du -kh'
alias df='df -kTh'lias mkdir="mkdir -p"
#-------------------------------------------------------------#
#------------------------programs-----------------------------#
alias mail="mutt"
alias scld="calcurse"
alias r="ranger"
alias fm="ranger:"
alias Ranger="ranger"
alias e="vin"
alias edit="vim"
alias inxi="inxi -Fxzc2"
alias weechat="weechat-curses"
alias news='newsbeuter'
alias v="vim"
alias bc='bc -q -l'					# dont show opening msg, use math library
alias cal='cal -3'					# show 3 months
alias df='df -hT --total'			# human readable, print filetype, and total
alias du='du -d1 -h'					# max depth, human readable
alias emacs='emacs -nw'					# cli mode
alias feh='feh --auto-zoom --scale-down -g 1360x768 -B white'
alias free='free -h'					# human readable
alias info='infobrowser'				# GNU info act like man command
alias mount='mount | column -t'				# align in column
alias nano='nano -c -$'					# word wrapping
alias menu='pdmenu'
alias hale9000='ruby ~/betty/main.rb'
alias trash='trash-put -v'
alias psg='ps -ef | grep $1'
alias less='less -R --tabs=4'       # colorful 'less', tab stops = 4
alias mkdir='mkdir -p -v'
alias reload='source ~/.bashrc'
alias wget='wget -c'
alias which='type -a'
alias quota='quota -vs'
alias Copy='cp'
alias pmix=" pa-mixer-mk2.py"
alias neofetch='neofetch --backend w3m --source ~/hacker.jpg'
alias wtf='dmesg'
alias wifi='wicd-curses'

#-------------------------------------------------------------#
#----------------controll audio levels------------------------#
alias mute="pamixer -m"
alias vd="pamixer -d 10"
alias p="mocp -G &> /dev/null"
alias next="mocp -f &> /dev/null"
alias prev="mocp -r &> /dev/null"
alias vu="pamixer -i 10"
#-------------------------------------------------------------#
#-----------------------Tmux Commands-------------------------#
alias kl='tmux kill-window'
alias nw='tmux new-window'
#-------------------------------------------------------------#
#-------------------------net commands------------------------#
alias ports='netstat -nape --inet'
alias opennet='lsof -i'
alias ping='ping -c 4'
#-------------------------------------------------------------#
#-----------------------Disk Commands-------------------------#
alias localrepo='sudo sh ~/scripts/mount_IS0_repo mount'

alias fdisk="sudo fdisk -l"
#-------------------------------------------------------------#
#---------------------alias to fix dyslixia-------------------#
alias root='sudo'
alias s='sudo'
alias sodu='sudo'
#-------------------------------------------------------------#
#------------------------Just for fun-------------------------#
# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

alias 99bottles='x="bottles of beer";y="on the wall";for b in {99..1};do echo "$b $x $y, $b $x. Take one down pass it around, $(($b-1)) $x $y"; sleep 3;done'

alias matrix='echo -e "\e[32m"; while :; do for i in {1..16}; do r="$(($RANDOM % 2))"; if [[ $(($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 4)) == 1 ]]; then v+="\e[1m $r   "; else v+="\e[2m $r   "; fi; else v+="     "; fi; done; echo -e "$v"; v=""; done'

alias matrix2='echo -e "\e[31m"; while $t; do for i in `seq 1 30`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="\e[1m $r";else v="\e[2m $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";done;'

alias matrix3='COL=$(( $(tput cols) / 2 )); clear; tput setaf 2; while :; do tput cup $((RANDOM%COL)) $((RANDOM%COL)); printf "%$((RANDOM%COL))s" $((RANDOM%2)); done'

alias matrix4='echo -ne "\e[32m" ; while true ; do echo -ne "\e[$(($RANDOM % 2 + 1))m" ; tr -c "[:print:]" " " < /dev/urandom | dd count=1 bs=50 2> /dev/null ; done'

alias matrix5='tr -c "[:digit:]" " " < /dev/urandom | dd cbs=$COLUMNS conv=lcase,unblock | GREP_COLOR="1;32" grep --color "[^ ]"'

alias colorrainbow='yes "$(seq 1 255)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .01; done'

alias roulette='[ $[ $RANDOM % 6 ] == 0 ] && echo Die || echo Live'           # command line Russian roulette

alias einsteiny='A=1;B=100;X=0;C=0;N=$[$RANDOM%$B+1];until [ $X -eq $N ];do read -p "N between $A and $B. Guess? " X;C=$(($C+1));A=$(($X<$N?$X:$A));B=$(($X>$N?$X:$B));done;echo "Took you $C tries, Einstein";'                 # numbers guessing game

alias etchasketch='c=12322123;x=20;y=20;while read -sn1 p;do k=${c:(p-1)*2:2};let x+=$((k/10-2));let y+=$((k%10-2));echo -en \\033[$y\;"$x"HX;done'   # use the 1 2 3 and 4 keys to move the cursor around the screen (It's an etch-a-sketch for your terminal!)
alias starwars="telnet towel.blinkenlights.nl"
#-------------------------------------------------------------#
#}}}
#-------- Suffix Alias {{{
#------------------------------------------------------
# open file with default program base on extension
# Ex: 'alias -s avi=mplayer' makes 'file.avi' execute 'mplayer file.avi'

alias -s {avi,flv,mkv,mp4,mpeg,mpg,ogv,wmv}=$PLAYER
alias -s {flac,mp3,ogg,wav}=$PLAYER
alias -s {gif,GIF,jpeg,JPEG,jpg,JPG,png,PNG}=img
alias -s {djvu,pdf,ps}="background $READER"
alias -s txt=$EDITOR
alias -s epub="background $EBOOKER"
alias -s {cbr,cbz}="background $COMICER"
# might conflict with emacs org mode
alias -s {at,ch,com,de,net,org}="background $BROWSER"
alias -s {html,htm}=$BROWSERCLI
# archive extractor
alias -s ace="atool l"
alias -s rar="unrar l"
alias -s {tar,bz2,gz,xz}="tar tvf"	#tar.bz2,tar.gz,tar.xz
alias -s zip="unzip -l"

#}}}
#################################################################

