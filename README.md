#Noam's DOTfiles v0.4

This is my personal home directory and dev environment setup. I've put it 
together mostly for personal use. 

Blog: <http://CLUSTERfoo.com>

My code on github: <https://github.com/CLUSTERfoo/>

![](http://i.imgur.com/ajjNy.png)

##TOC

1. *In This Package*
2. *Dependencies*
3. *Setup & Installation*
4. *Upgrading and Backing Up*
5. *Other Packages*
6. *License*



##In This Packge

* `zshrc`	    :	Settings for Zsh (Z-shell).
* `vimrc` 	    :	Settings for Vim. 
* `iTerm/`	    :	Settings folder for the iTerm2 terminal emulator on 
OS X.
* `.git`	    :	This is a git repo. Simply  use pull to upgrade to 
			        latest version (or push your own custom repo).
* `setup.py`	:	Setup script. Not yet written. 
* `README.md`	:	You're looking at it.



##Dependencies

A list of complimentary packages and plugins I'm using.

###Zsh and Oh-My-Zsh

I have switched from Bash to Zsh. I highly recommend it! I'm using the 
[*oh-my-zsh*](https://github.com/robbyrussell/oh-my-zsh) Zsh configuration 
framework.

###Vim and Pathogen

I am using Vim as my editor and the Pathogen plugin to manage my plugins. These
are the plugins I'm currently using:

* [Vim Powerline](https://github.com/Lokaltog/vim-powerline)
                :   A better-looking, more functional vim statusline.
* [NERDTree](https://github.com/scrooloose/nerdtree)
                :   "The NERD tree allows you to explore your filesystem and to 
                    open files and directories. It presents the filesystem to 
                    you in the form of a tree which you manipulate with the 
                    keyboard and/or mouse. It also allows you to perform simple 
                    filesystem operations."



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
links of the dotfiles in this package by copying the following commands into
your terminal:

	ln -s ~/DOTfiles/iTerm/ ~/.iTerm
	ln -s ~/DOTfiles/vimrc ~/.vimrc
	ln -s ~/DOTfiles/zshrc ~/.zshrc
    ln -s ~/DOTfiles/tmux.conf ~/.tmux.conf 

And you're done!

## Update and Backup

Since this folder is a git repo, all you have to do to get updates is use `git
pull`. Note that this will override any custom changes you've made to the files.

To back up your own version, create your own remote git repo and push
all your changes.

##Other Packages

###Homebrew

I am using [Homebrew](http://mxcl.github.com/homebrew/), "The missing package 
manager for OS X". It's awesome. My current packages include:

* `ack` 	:   Kinda like grep.
* `doxygen` :   Turns code into documentation you can browse through.
* `lynx`	:   A text web browser for your terminal. Because... who knows. The 
                zombie apocalypse and all you have is a Commodore. 
* `macvim`	:   A GUI Vim editor for OS X.
* `tmux`    :   Indispensable for a terminal-only environment. Create multiple
                terminal sessions inside a single terminal window or remote
                session.

###KeyRemap4MacBook

I use this to remap my CAPSLOCK to ESC and vice-versa. One of the best
decisions I've ever made! -- Your tendons will thank you if you're a Vim user.

###DiffMerge

It diffs, it merges. That about it.

##Quick Changelog

    v0.4    :   Added Tmux configuration file.
                Switched vim colorscheme to 'Pablo'.
    v0.3.1  :   Removed old setup script.
                New Brew formulas.
                README edit. 

##License

GPL v3.0 or Creative Commons or whichever of the two applies. 

