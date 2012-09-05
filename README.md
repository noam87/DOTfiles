#Noam's DOTfiles v0.3

Blog: <http://CLUSTERfoo.com>

My code on github: <https://github.com/CLUSTERfoo/>


##TOC

1. *In This Package*
2. *Dependencies*
3. *Installation*
4. *Upgrading and Backing Up*
5. *Other Packages*
6. *License*




##In This Packge

* `zshrc`	-->	Settings for Zsh (Z-shell).
* `vimrc` 	-->	Settings for Vim. 
* `iTerm/`	-->	Settings folder for the iTerm2 terminal emulator on 
OS X.
* `.git`	-->	This is a git repo. Simply  use pull to upgrade to 
			llatest version (or push your own custom repo).
* `make.sh`	-->	Script that puts everything in its right place. 
* `README.md`	-->	You're looking at it.



##Dependencies

A list of complimentary packages and plugins I'm using. 

###Zsh and Oh-My-Zsh

I have switched from Bash to Zsh. I highly recommend it! 

Zsh is very much Bash-compatible: you will feel at home right away, and all 
your old shell scripts should still work. (You can even append your old Bash
setup to your `.zshrc` like so:

	cat .bash_profile >> .zshrc

I am also using the *oh-my-zsh* Zsh framework. 

###Vim and Pathogen

I am using Vim as my editor and the Pathogen plugin to manage my plugins. 



##Installation

This guide assumes you've installed git in your system. If not, 
[get it here](http://git-scm.com/).


### 1 - Make Zsh Your Default Shell

Zsh comes with most popular UNIX systems. To set it as your default shell,
simply input the following command into your terminal:

	chsh -s /bin/zsh

The command to switch back to bash is simply:

	chsh -s /bin/bash


### 1.1 - Get Oh-My_Zsh

*You can skip this step for now and come back to it later. All this does is make
your Zsh all pretty with syntax highlighting and other whatnots.*



### 2 - Clone DOTfiles Repo ##

First, you must clone this repo into your HOME folder. In your terminal, type:

	cd ~
	git clone https://github.com/CLUSTERfoo/DOTfiles.git


###3 - Automatic Installation

You now have a DOTfiles directory in your home folder. In this folder 
are all the files listed in the "In This Package" section. To install everything
automatically, simply run the `make.sh` script using the following command:

	cd ~/DOTfiles
	source make.sh

The `make.sh` script is commented and easy to read. Or:

###3.1 - Make Manually

You can it yourself. First, backup your old dotfiles. Next, create symbolic
links of the dotfiles in this package:

	ln -s ~/DOTfiles/iTerm/ ~/.iTerm
	ln -s  ~/DOTfiles/vimrc ~/.vimrc
	ln -s  ~/DOTfiles/zshrc ~/.zshrc

And you're done!

## Update and Backup

Since this folder is a git repo, all you have to do to get updates is use `git
pull`. See the git manual.

To back up your own version, simply create your own remote git repo and push
all your changes.

##Other Packages

###Homebrew

I am using [Homebrew](http://mxcl.github.com/homebrew/), "The missing package 
manager for OS X". It's awesome.
My current packages include:

* `ack` 	-->	Kinda like grep.
* `lynx`	-->	A text web browser for your terminal. Because... who 
			knows. The zombie apocalypse and all you have is a 
			Commodore. 
* `macvim`	-->	A GUI Vim editor for OS X. 

###KeyRemap4MacBook

I use this to remap my CAPSLOCK to ESC and vice-versa. One of the best
decisions I've ever made! -- Your tendons will thank you if you're a Vim user.

###DiffMerge

It diffs, it merges. That about it.

##License

GPL v3.0 or Creative Commons or whichever of the two applies. 

