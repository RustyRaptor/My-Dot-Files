                      #################################################
                   ####====Tekninja Kevin's Dot Files and rice========###
                    #################################################


##info 

 I maintain this repository as a home for my dotfiles (which are also used
 to rice my computer). 


## Basic goals and principles of my rice:
    + More Screen Space: I want to keep Decorations to 'minimal'. I want to keep
	  the UI as distraction free as Possable by automating  as much as possible and 
	  keep UI clutter to a minimum.
	+ Naturalness: -- I want the number of key presses I have to make to get what
	I want to be as little as possible.
	+ Economy: -- All the basic programs I use should be simple and light on system
	resources. Because of this, many are terminal or ncurses programs
	+ Keyboard/vim-centrality: -- All my terminal apps (and other programs) use vim
	keys when possible. My hands never need leave the home row or thereabout.
	+ Lots of color: -- Many rices stick to one general color palette. I like my
	system to be very vibrant. If you disagree, you can easily change it.
	+ Throw back to msdos -- Lots of Ascii and ansi and large text thanks to figlet 

## Attention!!!
	All files and configs in this repository are a backup copy of the original 
	files of my OS. They are not a model or a guide Exaples are that some links 
	are hardcoded to my machine and not all my vim plug ins are listed. Althow 
	you are welcomed to cut n past any thing you can find usefull. Be aware You 
	take full responsibility for the consequences of using them in your OS.


## Screen Shots

 ![Main Desktop](screenshots/jillyfishrice1.png)  
 :
 ![musicplaying](srceenshots/jillyfishrice2.png)

 ![vim](screenshots/jillyfishrice3.png)

![ranger](screenshots/jellyfishrice.png)


- 

## Programs whose configs can be found here and some of what i configured

* Calcurse
    * pretty Standard config

* Compton
  * Custom Shadows and transparency settings
  
* dunst
  * lightweight notification daemon - https://dunst-project.org/
  * Configured to placed in left hand corner

* i3-WM
  * i3 version 4.13
  * I Added Alt+Shift+I Ignore mode,
  * Resize with going into resize mode
  * I Have custom Hot keys to launch apps
  * Refreash Xresources and mount nfs drives on 
	start up
  
* ncmpcpp & mpd
  * uses Character's for icons on play list
  * custom colors

* urxvt
  * Custom Color Settings (not a theme but 
    looks good transparent on mostwallpapers)
  * Using NerdFonts and powerline fonts (i had
    to Load a crap tun of fonts to get what 
	I wanted
  * Clickable urls to launch firefox
    uses tabs perl plug in shift + left and right
    to move form tab to tab. shift down to create 
	a tab. Shift up to name it.
  * Shortcuts to change the terminal font size
  * Font size management with Ctrl + arrow keys

* Vim
  * Uses Powerline
  * Lots Custom key bindings
  * AutoSaves when Leaving insert 
  * latex preview using Mupdf 
  * Return to the same line when you reopen a file
  * Ctrl C to exit instert mode (if you owned a C64 you get it)

* Ranger
  * Mapped x plus first letter to move files to dirs
  * mapped y plus first letter to copy files to dirs
  * use with trash-cli
  * use with color them molokai for IBM CGA feel
  * added associations in rifle for emulators,dosbox,
    gdebi & gdebi-gtk,gimp 


* Zsh
  * Sourced out aliases to aliasrc 
  * completions, vim mode
  * CTRL+Z to send jobs to background and to foreground
  * color for ls,dir,grip
  * wd Plug in for dir bookmarks
  * use with pick to select files with ls
  * use with oh-my-zsh and power line zsh
   
## Suggest programs Links
 * Cli File Manager: https://github.com/ranger/ranger 
 * [Nerd Tree Plug in for vim](https://github.com/scrooloose/nerdtree.git) Adds A Sidebar file manager etc. to Vim.
 * [powerline Fonts](https://github.com/Lokaltog/powerline-fonts) Fonts collection used with powerline
 * [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) great for beginning Zsh users.
 * [syntastic](https://github.com/vim-syntastic/syntastic.git) Advanced Syntax Correcting for Vim
 * Cli File Manager: https://github.com/ranger/ranger 
 * Debian - https://www.debian.org/
 * https://wiki.archlinux.org/index.php/Compton
## Contact & Suggestions

 If you have something to say about my dotfiles (good or bad), please do so by
 email. Recommendations are very welcome, too.

 Feel free to reach me at[spidermankevin78@gmail.com](mailto:spidermankevin78@gmail.com)

 In that sense, I would like to thank [Luke Smith](https://github.com/lukesmithxyz)
 for his [dotfiles](https://github.com/LukeSmithxyz/voidrice) and his
 [YouTube channel](https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA).
 [Alex Booker](https://github.com/bookercodes) for his wonderful tutorials on
 [i3wm](https://www.youtube.com/playlist?list=PL5ze0DjYv5DbCv9vNEzFmP6sU7ZmkGzcf)
 and the [unixporn subreddit](https://www.reddit.com/r/unixporn/)[](.)
[##More](##More) About Me
 
	## My Current Setup
		- Os: `Debian Jessie`
		- Shell: `Zsh`
		- Window Manager: `i3-wm
		- Application Launcher: `gmrun & pdmenu`
		- Bar: `bumbleestatus on i3bar`
		- Compositor: `compton`
		- Gtk2/3 Theme:  `Oomox-black_blue` 
		- Icon Theme: `Paper Dark Mono`
		- Cursor: `Breeze Obsidian`
		- Music Player: `mpd` + `ncmpcpp`
		- Notifications: `dunst`
		- Terminal Emulator: `urxvt`
		- Text Editor: `vim`
		- Video Player: `mpv`
		- Web Browser: `Firefox/w3b `
		- Text Editor/IDE: `vim`
		- Graphics: `gimp & imagtricks`
		-  
## More about Ricing


================================================================================
## What The Heck are Dot files  
 > Dotfiles are plain text configuration files on Unix-y systems for things like
 > my shell, ~/.zshrc, our editor in ~/.vimrc, and many others. They are called
 > "dotfiles" as they typically are named with a leading . Making them hidden
 > files on your system, although this is not a strict requirement.
 > Since these files are all plain text, we can gather them together in a git
 > repository and use that to track the changes you make over time.

## What is a rice.
 -- From [Thoughtbot](https://thoughtbot.com/upcase/videos/intro-to-dotfiles).

 > "Rice" is a word that is commonly used to refer to making visual improvements
 > and customizations on one's desktop. It was inherited from the practice of
 > customizing cheap Asian import cars to make them appear to be faster than they
 > actually were - which was also known as "ricing". Here on /r/unixporn, the
 > word is accepted by the majority of the community and is used sparingly to
 > refer to a visually attractive desktop upgraded beyond the default.
 
 -- From [/r/unixporn](https://www.reddit.com/r/unixporn/wiki/themeing/dictionary).
=============================================================================== 

		
		
