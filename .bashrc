
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
#               ██████   █████  ███████ ██   ██
#               ██   ██ ██   ██ ██      ██   ██
#               ██████  ███████ ███████ ███████
#               ██   ██ ██   ██      ██ ██   ██
#               ██████  ██   ██ ███████ ██   ██
#################################################################
#!/usr/bin/env Bash                                             #
#!/bin/sh                                                       #
#################################################################
#-----Exports{{{
#################################################################
#-----------------------Bash Exports----------------------------#
#################################################################

#-----------------------Defualt Apps----------------------------#
export EDITOR="vim"
export BROWSER="uzbl"
export BROWASERCLI="w3m"
export COMICER="comix"
export BROWSERCLI="w3b"
export PAGER="most"
export PLAYER="mpv"
export FILEMANAGER="ranger"
export IMAGEVIEWER="xli"
export OPENER="xdg-open"
#---------------------------------------------------------------#

#-----------------------------Paths-----------------------------#

export PATH="$PATH:/home/kevin/scripts:/home/kevin/bin:/sbin:/usr:/usr/sbin:/home/kevin/scripts/Fun"
export GOPATH="home/kevin/.go"
export PATH="$PATH:$GOPATH/bin"



    BASE16_SHELL=$HOME/.config/base16-shell/
    [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

#}}}
#-----Command History Setup{{{
#---------------------------------------------------------------#
############################
#--Command History Setup---#
############################

#---------------------Shell Options-----------------------------#
shopt -s histappend	# append history not overwrite it
shopt -s checkwinsize	# check window on resize; for word wrapping
shopt -s autocd		# instead of 'cd Pictures', just run Pictures
shopt -s cdspell	# auto correct cd; cd /sur/src/linus' >> 'cd /usr/src/linux'
shopt -s nocaseglob
shopt -s cmdhist
shopt -s expand_aliases
shopt -s histverify
shopt -s globstar
#---------------------------------------------------------------#
#-------------------Shell History Veirables---------------------#
HISTCONTROL=erasedups:ignoreboth
HISTSIZE=1000000
HISTFILESIZE=1000000
 HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
HISTIGNORE="&:ls:[bf]g:history:exit:q:cd:"  #ignore these commands from history
HISTCONTROL=ignoredups
HISTTIMEFORMAT='%F %T '
PROMPT_DIRTRIM=2 # Automatically trim long paths in the prompt (requires Bash 4.x)

#----------------------------------------------------------------#

#-------------------History Command Bindings---------------------#
#Better Way of moving in history
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

#enter a few charcters and up down to cycle threw history
if [ -t 1 ]
then
    bind '"[A":history-search-backward'
    bind '"[B":history-search-forward'
fi
#----------------------------------------------------------------#
#}}}
#-----Bash-it Prompt{{{
#############################
#-------Bash it Prompt------#
#############################
# Lock and Load a custom theme file
#location '.bash-it/themes/'
############Selected Theme############### 
# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt
export BASH_IT_THEME='powerline-multiline'
#export BASH_IT_THEME='powerline-plain'
#export BASH_IT_THEME='powerline'
#export BASH_IT_THEME='bakke'
#export BASH_IT_THEME='brainy'
#export BASH_IT_THEME='cooperkid'
#export BASH_IT_THEME='doubletime_multiline'
#export BASH_IT_THEME='doubletime_multiline_pyonly'
#export BASH_IT_THEME='zitron'
#export BASH_IT_THEME='dos'
#export BASH_IT_THEME='rana'
#export BASH_IT_THEME='duru'
#export BASH_IT_THEME='gallifrey'
#export BASH_IT_THEME='luan'
#export BASH_IT_THEME='modern'
#export BASH_IT_THEME='tonka'
#export BASH_IT_THEME='binaryanomaly'
#export BASH_IT_THEME='bruton'
#export BASH_IT_THEME='pro'
#export BASH_IT_THEME='zork'
#export BASH_IT_THEME='sexy'
#export BASH_IT_THEME='wanelo'
#export BASH_IT_THEME='tylenol'
#export BASH_IT_THEME='tonotdo'
#export BASH_IT_THEME='slick'
#export BASH_IT_THEME='roderik'
#export BASH_IT_THEME='pro'
#export BASH_IT_THEME='pure'
#export BASH_IT_THEME='morris'
#export BASH_IT_THEME='emperor'
#export BASH_IT_THEME='bruton'
#export BASH_IT_THEME='hawali50'
#---------------------------------------#
#}}}
#-----Bash it Veriables{{{
#############################
#------Bash-It Veriables-_--#
#############################
# Path to the bash it configuration
export BASH_IT='/home/kevin/.bash-it'
source ~/.local/bin/bashmarks.sh
# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
 #export BASH_IT_REMOTE='bash-:wit'

# Your place for hosting Git repos. I use this for private repos.
#export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
#unset MAILCHECK

# Change this to your console based IRC client of choice.
#export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
#export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
#export SCM_CHECK=true


# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else)
# Will otherwise fall back on $HOSTNAME.
export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
 export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
#}}}
#-----Terminal Greater{{{
#-------------------------------------------------------------
##############################
#-----start up  Screen-------#
##############################

# A fun Computer Joke Or Fact
fortune computers

#}}}
#-----Functions{{{
##############################
#----------Functions---------#
##############################
#-----Configoration edit shoty cuts-----#
cfg-bash() { $EDITOR ~/.bashrc ;}
cfg-mpd() { $EDITOR ~/.mpd/mpd.conf ;}
cfg-mplayer() { $EDITOR ~/.mplayer/config ;}
cfg-mpv() { $EDITOR ~/.config/mpv/input.conf ;}
cfg-mocp() { $EDITOR ~/.moc/config ;}
cfg-mutt() { $EDITOR ~/.muttrc ;}
cfg-Xres() { $EDITOR ~/.Xresource ;}
cfg-i3wm() { $EDITOR ~/.i3/config ;}
cfg-cursor() { $EDITOR ~/.icons/default/index.theme ;}
cfg-grub() { sudo $EDITOR /etc/default/grub ;}
cfg-ranger() { $EDITOR ~/.config/ranger/rc.conf ;}
cfg-ranger-rifle() { $EDITOR ~/.config/ranger/rifle.conf ;}
cfg-ranger-commands() { $EDITOR ~/.config/ranger/commands.py ;}
cfg-fstab() { sudo $EDITOR /etc/fstab ;}
cfg-hosts() { sudo $EDITOR /etc/hosts ;}
cfg-profile() { $EDITOR ~/.profile ;}
cfg-mc() { $EDITOR ~/.config/mc/ini ;}
cfg-sudoers() { sudo $EDITOR /etc/sudoers ;}
cfg-ncmpcpp() { $EDITOR ~/.ncmpcpp/config ;}
cfg-samba() { sudo $EDITOR /etc/samba/smb.config ;}
#---------------------------------------#
#----------Reload Config files----------#
rld-xmodmap() { xmodmap ~/.Xmodmap ;}
rld-dxres() { xrdb -load ~/.Xresources ;}
#--------------------------------------#

#-----------zombe Apocolypse-----------#
killall-zombies() { kill -HUP $(ps -A -ostat,ppid | grep -e '[zZ]'| awk '{ print $2 }') ;}
#--------------------------------------#


#------------ls Varations--------------#
lsg() {
		figlet -f smkeyboard List Grep
  keyword=$(echo "$@" |  sed 's/ /.*/g')
  ls -hlA --color=yes \
  | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}' \
  | grep -iE $keyword
}

# ls recent items at bottom with green TODAY yel/low YESTERDAY substituted with file permission also
lst() {
  ls -vAFq --color=yes -got --si --time-style=long-iso "$@" \
  | sed "s/$(date +%Y-%m-%d)/\x1b[32m     TODAY\x1b[m/;s/$(date +'%Y-%m-%d' -d yesterday)/\x1b[33m YESTERDAY\x1b[m/" \
  | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}' | tac
}

lsl() {
  ls -hl --color=yes "$@" \
  | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(" %0o ",k);print}'
}
#-------------------------------------------------------------#
#----------------------------CD Improvments-------------------#
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

# list files every time you change diractory
cd() 
{
  if [ -n "$1" ]; then
    builtin cd "$@" && ls
  else
    builtin cd ~ && ls
  fi
}

mkdircd() { mkdir -p -v $1; cd $1 ;}	          # create folder then cd into it
nohup-command() { nohup "$@" >/dev/null 2>&1& }   # background a process w/o error msg
open() { xdg-open "$@" > /dev/null 2>&1 ;}        # open with default GUI program

#-------------------------------------------------------------#
#-------------------------------Usful info--------------------#
upinfo()
{
echo -ne "${green}uptime is ${green} \t ";uptime | awk /'up/ {print $3,$4,$5,$6,$7,$8,$9,$10}'
}

m-ip() 
{
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
  echo "***************************************************"
}
#----------------------Mounting Iso Files------------------#
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
  }
#-------------------------------------------------------------#
#---------------------------other-----------------------------#
# http://blog.metamatt.com/blog/2013/01/09/previewing-markdown-files-from-the-terminal/
mdless(){ pandoc -s -f markdown -t man "$*" | groff -T utf8 -man | less ;}
#-------------------------------------------------------------#
alias vless="/usr/share/vim/vim74/macros/less.sh"       # vim as a pager
open() { xdg-open "$@" > /dev/null 2>&1 ;}              # open with program   
#-------------------------------------------------------------#
#Remove White Spaces for file Names
detox() {
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    filter_name=$(echo "$arg" | sed 's/%20/ /g' | sed 's/ /_/g' | tr '[:upper:]' '[:lower:]')
    mv -- "$arg" "$filter_name"
  done
}
#-------------------------------------------------------------#
#backup file maker
cpbak() { cp $1{,.bak} ;}		          # create backup copy
#Show
fp() { stat --format '%a %n' "$@" ;}
# display mime of file application/zip, application/x-tar
ft() { file --mime-type -b "$@" ;}

#-------------------------------------------------------------#
#}}}
#-----Alias List{{{
##############################
#----Alias-------------------#
##############################
#_____________________________________________________________#
# alias sudo='sudo -i'
# alias sudo='sudo '					# make aliases work with sudo
#_____________________________________________________________#
#---------------------don't have to type cd to go back--------#
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
#-------------------------------------------------------------#
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
alias mail="Alphine"
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
alias ?="man"
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
#-----Turbo-Less{{{
#---------------------------------------------------
# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lEsspipe)"

alias more='less'
export PAGER=most
export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
# Use this if lesspipe.sh exists.
export LESS='-i -N -w -z-4 -g -e -M -X -F -R -P%t?f%f \
:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'
# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
#}}}
#-----completions{{{
#----------------------------------------------------------------

complete -cf sudo
complete -cf man
complete -A hostname   rsh rcp telnet rlogin ftp ping disk
complete -A export     printenv
complete -A variable   export local readonly unset
complete -A enabled    builtin
complete -A alias      alias unalias
complete -A function   function
complete -A user       su mail finger
complete -A helptopic  help     # Currently same as builtins.
complete -A shopt      shopt
complete -A stopped -P '%' bg
complete -A job -P '%'     fg jobs disown
complete -A directory  mkdir rmdir
complete -A directory   -o default cd
complete -f -o default -X \
'!*.+(gif|GIF|jp*g|JP*G|bmp|BMP|xpm|XPM|png|PNG)' xv gimp ee gqview
complete -f -o default -X '!*.+(mp3|MP3)' mpg123 mpg321
complete -f -o default -X '!*.+(ogg|OGG)' ogg123
complete -f -o default -X \
'!*.@(mp[23]|MP[23]|ogg|OGG|wav|WAV|pls|\
m3u|xm|mod|s[3t]m|it|mtm|ult|flac)' xmms
complete -f -o default -X '!*.@(mp?(e)g|MP?(E)G|wma|avi|AVI|\
asf|vob|VOB|bin|dat|vcd|ps|pes|fli|viv|rm|ram|yuv|mov|MOV|qt|\
QT|wmv|mp3|MP3|ogg|OGG|ogm|OGM|mp4|MP4|wav|WAV|asx|ASX)' xine
complete -f -o default -X '!*.pl'  perl perl5

if [ "$PS1" ]; then
	complete -cf sudo man
fi
# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brewexport OPENER=$(find_alt xdg-open exo-open gnome-open )
 --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Perform file completion in a case insensitive fashion
bind "set completion-ignore-case on"
# Treat hyphens and underscores as equivalent
bind "set completion-map-case on"
# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"
# Immediately add a trailing slash when autocompleting symlinks to directories
bind "set mark-symlinked-directories on"

#  This is a 'universal' completion function - it works when commands have
#+ a so-called 'long options' mode , ie: 'ls --all' instead of 'ls -a'
#  Needs the '-o' option of grep
#+ (try the commented-out version if not available).
#  First, remove '=' from completion word separators
#+ (this will allow completions like 'ls --color=auto' to work correctly).
COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
#

#}}}
#-------- Image Resizer (32|96|128|480|600|768|720|960|1080) {{{
#------------------------------------------------------
# Resizing Pictures to different resolutions

image-resize-32x32() {
  if [ $# -lt 1 ]
  then
    echo -e "resize pictures to another resolution"
    echo -e "\nUsage:\n$0 <picture>"
    echo -e "\nExample:\n$0 pic1.png pic2.png pic3.png"
    echo -e "$0 *.jpg"
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    convert "$arg" -resize 32x32 "${arg%.*}"_32x32_resized."${arg##*.}"
  done
}

image-resize-96x96() {
  if [ $# -lt 1 ]
  then
    echo -e "resize pictures to another resolution"
    echo -e "\nUsage:\n$0 <picture>"
    echo -e "\nExample:\n$0 pic1.png pic2.png pic3.png"
    echo -e "$0 *.jpg"
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    convert "$arg" -resize 96x96 "${arg%.*}"_96x96_resized."${arg##*.}"
  done
}

image-resize-128x128() {
  if [ $# -lt 1 ]
  then
    echo -e "resize pictures to another resolution"
    echo -e "\nUsage:\n$0 <picture>"
    echo -e "\nExample:\n$0 pic1.png pic2.png pic3.png"
    echo -e "$0 *.jpg"
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    convert "$arg" -resize 128x128 "${arg%.*}"_128x128_resized."${arg##*.}"
  done
}

image-resize-640x480() {
  if [ $# -lt 1 ]
  then
    echo -e "resize pictures to another resolution"
    echo -e "\nUsage:\n$0 <picture>"
    echo -e "\nExample:\n$0 pic1.png pic2.png pic3.png"
    echo -e "$0 *.jpg"
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    convert "$arg" -resize 640x480 "${arg%.*}"_640x480_resized."${arg##*.}"
  done
}

image-resize-800x600() {
  if [ $# -lt 1 ]
  then
    echo -e "resize pictures to another resolution"
    echo -e "\nUsage:\n$0 <picture>"
    echo -e "\nExample:\n$0 pic1.png pic2.png pic3.png"
    echo -e "$0 *.jpg"
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    convert "$arg" -resize 800x600 "${arg%.*}"_800x600_resized."${arg##*.}"
  done
}

image-resize-1024x768() {
  if [ $# -lt 1 ]
  then
    echo -e "resize pictures to another resolution"
    echo -e "\nUsage:\n$0 <picture>"
    echo -e "\nExample:\n$0 pic1.png pic2.png pic3.png"
    echo -e "$0 *.jpg"
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    convert "$arg" -resize 1024x768 "${arg%.*}"_1024x768_resized."${arg##*.}"
  done
}

image-resize-1280x720() {
  if [ $# -lt 1 ]
  then
    echo -e "resize pictures to another resolution"
    echo -e "\nUsage:\n$0 <picture>"
    echo -e "\nExample:\n$0 pic1.png pic2.png pic3.png"
    echo -e "$0 *.jpg"
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    convert "$arg" -resize 1280x720 "${arg%.*}"_1280x720_resized."${arg##*.}"
  done
}

image-resize-1280x960() {
  if [ $# -lt 1 ]
  then
    echo -e "resize pictures to another resolution"
    echo -e "\nUsage:\n$0 <picture>"
    echo -e "\nExample:\n$0 pic1.png pic2.png pic3.png"
    echo -e "$0 *.jpg"
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    convert "$arg" -resize 1280x960 "${arg%.*}"_1280x960_resized."${arg##*.}"
  done
}

image-resize-1920x1080() {
  if [ $# -lt 1 ]
  then
    echo -e "resize pictures to another resolution"
    echo -e "\nUsage:\n$0 <picture>"
    echo -e "\nExample:\n$0 pic1.png pic2.png pic3.png"
    echo -e "$0 *.jpg"
    return 1
  fi
  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    convert "$arg" -resize 1920x1080 "${arg%.*}"_1920x1080_resized."${arg##*.}"
  done
}

# }}}
#-------- Format USB Stick/HDD/SDCards {{{
#------------------------------------------------------
# DEMO: https://www.youtube.com/watch?v=7txO1cdNJsQ
# DESC: format USB Stick/Hard Drive; It will create a single partition that fills the whole drive space

format2usb-ext2() {
  if [ $# -lt 2 ]; then
    echo -e "format and create a partition that fills up the whole device"
    echo -e "\nUsage: $0 <label> <device>"
    echo -e "Example: $0 MY_USB sdx"
    return 1
  fi

  # check if the device is mounted
  mount_status=$(mount | grep /dev/"$2" | wc -l)
  if [ "$mount_status" -ne 0 ]
  then
    lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep "$2"
    echo -e "${Red}/dev/$2 is mounted. You have to unmount /dev/$2 ${Color_Off}"
    return 1
  fi

  # list out all drives
  lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep --color -E "$2|$"
  
  echo -n -e "${Red}WARNING: You are about to FORMAT a drive. Do you want to continue? [y/n] ${Color_Off}"
  read REPLY
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    echo "... You chose to continue"
  else
    return 1
  fi

  # delete existing partition then create new linux partition
  echo -e "d\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\no\nn\np\n1\n\n\nw" | sudo fdisk /dev/"$2"

  # delete partiton x8 using d\n\n
  # d    delete a partition
  #      default, partition

  # o    create a new empty DOS partition table
  # n    add a new partition
  # p    print the partition table
  # 1    partition number 1
  #      default, start immediately after preceding partition
  #      default, extend partition to end of disk
  # w    write table to disk and exit

  # format device
  echo -e "y\n" | sudo mkfs.ext2 -L "$1" /dev/"$2"1

  # set permission
  mkdir -p /tmp/testmount
  sudo mount /dev/"$2"1 /tmp/testmount
  sudo chmod -R 777 /tmp/testmount
  sudo umount /tmp/testmount
  rmdir /tmp/testmount
}

format2usb-ext3() {
  if [ $# -lt 2 ]; then
    echo -e "format and create a partition that fills up the whole device"
    echo -e "\nUsage: $0 <label> <device>"
    echo -e "Example: $0 MY_USB sdx"
    return 1
  fi

  # check if the device is mounted
  mount_status=$(mount | grep /dev/"$2" | wc -l)
  if [ "$mount_status" -ne 0 ]
  then
    lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep "$2"
    echo -e "${Red}/dev/$2 is mounted. You have to unmount /dev/$2 ${Color_Off}"
    return 1
  fi

  # list out all drives
  lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep --color -E "$2|$"

  echo -n -e "${Red}WARNING: You are about to FORMAT a drive. Do you want to continue? [y/n] ${Color_Off}"
  read REPLY
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    echo "... You chose to continue"
  else
    return 1
  fi

  # delete existing partition then create new linux partition
  echo -e "d\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\no\nn\np\n1\n\n\nw" | sudo fdisk /dev/"$2"

  # delete partiton x8 using d\n\n
  # d    delete a partition
  #      default, partition

  # o    create a new empty DOS partition table
  # n    add a new partition
  # p    print the partition table
  # 1    partition number 1
  #      default, start immediately after preceding partition
  #      default, extend partition to end of disk
  # w    write table to disk and exit

  # format device
  echo -e "y\n" | sudo mkfs.ext3 -L "$1" /dev/"$2"1

  # set permission
  mkdir -p /tmp/testmount
  sudo mount /dev/"$2"1 /tmp/testmount
  sudo chmod -R 777 /tmp/testmount
  sudo umount /tmp/testmount
  rmdir /tmp/testmount
}

format2usb-ext4() {
  if [ $# -lt 2 ]; then
    echo -e "format and create a partition that fills up the whole device"
    echo -e "\nUsage: $0 <label> <device>"
    echo -e "Example: $0 MY_USB sdx"
    return 1
  fi

  # check if the device is mounted
  mount_status=$(mount | grep /dev/"$2" | wc -l)
  if [ "$mount_status" -ne 0 ]
  then
    lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep "$2"
    echo -e "${Red}/dev/$2 is mounted. You have to unmount /dev/$2 ${Color_Off}"
    return 1
  fi

  # list out all drives
  lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep --color -E "$2|$"

  echo -n -e "${Red}WARNING: You are about to FORMAT a drive. Do you want to continue? [y/n] ${Color_Off}"
  read REPLY
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    echo "... You chose to continue"
  else
    return 1
  fi

  # delete existing partition then create new linux partition
  echo -e "d\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\no\nn\np\n1\n\n\nw" | sudo fdisk /dev/"$2"

  # delete partiton x8 using d\n\n
  # d    delete a partition
  #      default, partition

  # o    create a new empty DOS partition table
  # n    add a new partition
  # p    print the partition table
  # 1    partition number 1
  #      default, start immediately after preceding partition
  #      default, extend partition to end of disk
  # w    write table to disk and exit

  # format device
  echo -e "y\n" | sudo mkfs.ext4 -L "$1" /dev/"$2"1

  # set permission
  mkdir -p /tmp/testmount
  sudo mount /dev/"$2"1 /tmp/testmount
  sudo chmod -R 777 /tmp/testmount
  sudo umount /tmp/testmount
  rmdir /tmp/testmount
}

format2usb-fat32() {
  if [ $# -lt 2 ]; then
    echo -e "format and create a partition that fills up the whole device"
    echo -e "\nUsage: $0 <label> <device>"
    echo -e "Example: $0 MY_USB sdx"
    return 1
  fi

  # check if the device is mounted
  mount_status=$(mount | grep /dev/"$2" | wc -l)
  if [ "$mount_status" -ne 0 ]
  then
    lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep "$2"
    echo -e "${Red}/dev/$2 is mounted. You have to unmount /dev/$2 ${Color_Off}"
    return 1
  fi

  # list out all drives
  lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep --color -E "$2|$"

  echo -n -e "${Red}WARNING: You are about to FORMAT a drive. Do you want to continue? [y/n] ${Color_Off}"
  read REPLY
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    echo "... You chose to continue"
  else
    return 1
  fi

  # delete existing partition then create new linux partition
  echo -e "d\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\no\nn\np\n1\n\n\nt\nb\nw" | sudo fdisk /dev/"$2"

  # delete partiton x8 using d\n\n
  # d    delete a partition
  #      default, partition

  # o    create a new empty DOS partition table
  # n    add a new partition
  # p    print the partition table
  # 1    partition number 1
  #      default, start immediately after preceding partition
  #      default, extend partition to end of disk
  # t    change a partition type (L to list all types)
  # b    W95 FAT32
  # w    write table to disk and exit

  # fat32 likes the labels to be in uppercase
  label_name=$(echo "$1" | tr '[:lower:]' '[:upper:]')

  # format device
  sudo mkfs.fat -F 32 -n "$label_name" -I /dev/"$2"1

  # set permission
  mkdir -p /tmp/testmount
  sudo mount /dev/"$2"1 /tmp/testmount
  sudo chmod -R 777 /tmp/testmount
  sudo umount /tmp/testmount
  rmdir /tmp/testmount
}

format2usb-ntfs() {
  if [ $# -lt 2 ]; then
    echo -e "format and create a partition that fills up the whole device"
    echo -e "\nUsage: $0 <label> <device>"
    echo -e "Example: $0 MY_USB sdx"
    return 1
  fi

  # check if the device is mounted
  mount_status=$(mount | grep /dev/"$2" | wc -l)
  if [ "$mount_status" -ne 0 ]
  then
    lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep "$2"
    echo -e "${Red}/dev/$2 is mounted. You have to unmount /dev/$2 ${Color_Off}"
    return 1
  fi

  # list out all drives
  lsblk -o "NAME,SIZE,FSTYPE,TYPE,LABEL,MOUNTPOINT,UUID" | grep --color -E "$2|$"

  echo -n -e "${Red}WARNING: You are about to FORMAT a drive. Do you want to continue? [y/n] ${Color_Off}"
  read REPLY
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    echo "... You chose to continue"
  else
    return 1
  fi

  # delete existing partition then create new linux partition
  echo -e "d\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\nd\n\no\nn\np\n1\n\n\nt\n7\nw" | sudo fdisk /dev/"$2"

  # delete partiton x8 using d\n\n
  # d    delete a partition
  #      default, partition

  # o    create a new empty DOS partition table
  # n    add a new partition
  # p    print the partition table
  # 1    partition number 1
  #      default, start immediately after preceding partition
  #      default, extend partition to end of disk
  # t    change a partition type (L to list all types)
  # 7    HPFS/NTFS/exFAT
  # w    write table to disk and exit

  # format device
  sudo mkfs.ntfs -f -L "$1" /dev/"$2"1

  # set permission
  mkdir -p /tmp/testmount
  sudo mount /dev/"$2"1 /tmp/testmount
  sudo chmod -R 777 /tmp/testmount
  sudo umount /tmp/testmount
  rmdir /tmp/testmount
}

# }}}
#-------- Mount Disc Images (ISO|NRG|BIN|MDF|IMG) {{{
#------------------------------------------------------

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

# }}}
#-------- Mount Archive (ISO|ZIP|RAR|TAR) {{{
#------------------------------------------------------
# http://ubuntuforums.org/showthread.php?t=1207096
mount-archive() {
  if [ $# -lt 1 ]
  then
    echo -e "mount archive files (iso|zip|rar|tar...etc)"
    echo -e "\nUsage:\n$0 <archive>"
    echo -e "\nExample:\n$0 file.zip"
    echo -e "$0 *.zip"
    return 1
  fi

  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    gvfs-mount "archive://$( ( echo -n 'file://' ; readlink -f $arg ; ) | perl -MURI::Escape -lne 'print uri_escape($_)')"
  done

  # if mount was sucessful then cd into gvfs dir and ls the mountpoint
  if [ $? -eq 0 ]; then
    cd "/run/user/$(id -u)/gvfs" && ls
  else
    return 1
  fi
}

unmount-archive() {
  if [ $# -lt 1 ]
  then
    echo -e "unmount archive files (iso|zip|rar|tar)"
    echo -e "\nUsage:\n$0 <mount_point>"
    echo -e "\nExample:\n$0 archive:host=file%253Afoo%bar.zip"
    echo -e "cd /run/user/${UID}/gvfs/ && $0 archive:host=file%253Afoo%bar.zip"
    return 1
  fi

  myArray=( "$@" )
  for arg in "${myArray[@]}"; do
    gvfs-mount -u "/run/user/$(id -u)/gvfs/$arg"
  done
}

# }}}
#-------- Keybinding {{{
#------------------------------------------------------
# movement and autocompeletion at the prompt
bind 'set completion-ignore-case on'	# case insensitive on tab completion
bind '"\t":menu-complete' 		# Tab: Cycle thru completion
bind '"\e[1;3D":backward-kill-word' 	# Alt + arrowleft : delete word backward
bind '"\e\e[D":backward-kill-word' 	# Alt + arrowleft : delete word backward
bind '"\e[1;3A":kill-whole-line' 	# Alt + arrowup : delete whole line
bind '"\e[1;3B":undo'			# Alt + arrowdown : undo
bind '"\e[1;5C":forward-word'		# Ctrl + arrowright : Jump a word forward
bind '"\e[1;5D":backward-word'		# Ctrl + arrowleft : Jump a word backward
bind '"\e[Z":menu-complete-backward'	# Shift+Tab: Cycle backwards
bind '"\e[A": history-search-backward'	# ArrowUp: history completion backwards
bind '"\e[B": history-search-forward'	# ArrowDown: history completion forward
#}}}
#################################################################


# add this configuration to ~/.bashrc
export HH_CONFIG=hicolor         # get more colors
shopt -s histappend              # append new history items to .bash_history
export HISTCONTROL=ignorespace   # leading space hides commands from history
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"   # mem/file sync
# if this is interactive shell, then bind hh to Ctrl-r (for Vi mode check doc)
if [[ $- =~ .*i.* ]]; then bind '"\C-r": "\C-a hh -- \C-j"'; fi

