#Noam's DOTfiles 0.6

This is my personal home directory and dev environment setup. I've put it 
together mostly for personal use. 

Blog: <http://CLUSTERfoo.com>

My code on github: <https://github.com/CLUSTERfoo/>

##TOC

1. *In This Package*
2. *Setup & Installation*
3. *Upgrading and Backing Up*
4. *UNIX Tools (Mac and Linux)*
5. *Linux Tools*
6. *Mac Tools*
7. *Windows Tools*
8. *License*



##In This Packge

* `zshrc`       :    Settings for Zsh (Z-shell).
* `xmobarrc`    :    Xmobar settings.
* `xsession`    :    Xsession executable.
* `xmonad-custom.desktop`   
                :    Linux desktop entry for my xmonad setup.
* `xmonad/`     :    Settings for Xmonad windows manager (Linux)   
* `xmodmap`     :    Remap keyboard keys (linux)
* `vimrc`       :    Settings for Vim. 
* `iTerm/`      :    Settings folder for the iTerm2 terminal emulator on 
OS X.
* `.git`        :    This is a git repo. Simply  use pull to upgrade to 
                     latest version (or push your own custom repo).
* `setup.py`    :    Setup script. Not yet written. 
* `README.md`   :    You're looking at it.







##Setup & Installation

### 1 - Make Zsh Your Default Shell

Zsh comes with most popular UNIX systems. To set it as your default shell,
simply input the following command into your terminal:

    chsh -s /bin/zsh

The command to switch back to bash is simply:

    chsh -s /bin/bash


### 1 (optional) - Get [*Oh-My-Zsh*](https://github.com/robbyrussell/oh-my-zsh)

Provides some really neat features like shell syntax highlighting and other Zsh
plugins.


### 2 - Clone DOTfiles Repo ##

Clone this repo into your $HOME folder. In your terminal, type:

    cd ~
    git clone https://github.com/CLUSTERfoo/DOTfiles.git

Alternatively, you can simply download the latest tagged zip file and dump it in
your home folder.


###3 - Installation

First, backup your old dotfiles. Next, create symbolic
links of the dotfiles in this package to the home folder, for example:

    ln -s ~/DOTfiles/iTerm/ ~/.iTerm
    ln -s ~/DOTfiles/vimrc ~/.vimrc

The only exception is `xmonad-custom.desktop`: its symbolic link should go in 
`/usr/share/xsessions` (at least in Ubuntu; your system may differ). 

And you're done!

## Update and Backup

Since this folder is a git repo, all you have to do to get updates is use `git
pull`. Note that this will override any custom changes you've made to the files.

To back up your own version, create your own remote git repo and push
all your changes.

##UNIX tools (Mac and linux):

A list of complimentary packages and plugins I'm using.

###Zsh and Oh-My-Zsh

I have switched from Bash to Zsh as my default shell. I highly recommend it! 
I'm using the [*oh-my-zsh*](https://github.com/robbyrussell/oh-my-zsh) Zsh 
configuration framework.

###Vim Plugins and Pathogen

I am using Vim as my editor and the Pathogen plugin to manage my plugins. These
are the plugins I'm currently using:

* [Vim Powerline](https://github.com/Lokaltog/vim-powerline)
                :    A better-looking, more functional vim statusline.
* [NERDTree](https://github.com/scrooloose/nerdtree)
                :    "The NERD tree allows you to explore your filesystem and to 
                     open files and directories. It presents the filesystem to 
                     you in the form of a tree which you manipulate with the 
                     keyboard and/or mouse. It also allows you to perform simple 
                     filesystem operations.
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
                :    Indent Guides is a plugin for visually displaying indent 
                     levels in Vim. Can detect both tab and space indent styles.
###Other Packages:

* `ack`         :    Kinda like grep. "`ack-grep`" in some Linux distros.
* `doxygen`     :    Turns code into documentation you can browse through.
* `macvim`      :    A GUI Vim editor for OS X.
* `tmux`        :    Indispensable for a terminal-only environment. Create multiple
                     terminal sessions inside a single terminal window or remote
                     session.
* `mc` ("Midnight Commander")
                :    File manager / browser for your terminal.
## Linux Tools

###Custom Environment

I am running a custom X environment that uses the following packages:

* [Xmonad](http://xmonad.org/)        
                :     A tiling windows manager, built in Haskell, easy to customize
                      and extend (also in Haskell), and light as fuck. 
                      YOU WANT THIS.
* Xmobar        :     Light status bar (also Haskell-based). 
* Trayer or StaloneTray
                :     As a dock for icons. I like StaloneTray better because it's 
                      clickable, but it's been acting out on me so I'm using Trayer. 
* Nautilus or `pcmanfm`
                :     Graphical file managers / desktops. PCman is much nicer and 
                      lighter, but also started acting up for no reason so I'm 
                      back to Nautilus for the moment, which is pretty good too.
###Other Linux Tools

* `git-cola`    :    Git GUI for visualizing tree.
* ReText        :    Markdown editor with live preview.  
* `arandr`      :    Quick GUI for `xrandr` (for working with multiple monitors).
* `clipit`      :    Clipboard that remembers you copy-paste history. 
* `xfce4-appfinder` 
                :    App finder. Kinda sucky, but it's the only one I found.
                     PCman had an app finding feature I miss. 

## Mac OS Tools

* Homebrew      :    I am using [Homebrew](http://mxcl.github.com/homebrew/), "The 
                     missing package manager for OS X". It's awesome.
* KeyRemap4MacBook    
                :    I use this to remap my CAPSLOCK to ESC and vice-versa.
                     Your tendons will thank you if you're a Vim user.
* DiffMerge     :    It diffs, it merges. That about it.
* Source Tree   :    Git GUI for visualizing your merge tree.
* Butler        :    Mostly use it for the clipboard function. 
* Moom          :    Quickly move windows around with your keyboard.

##Windows Tools

* Internet Explorer.
* Clonazepam, Jim Beam and a sledgehammer.

##License

*Lives Are At Stake!* License 2.0
