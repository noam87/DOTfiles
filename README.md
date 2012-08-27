#Noam's DOTfiles v0.1

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

* `.zshrc`	-->	Settings for Zsh (Z-shell).

	This is the Zsh equivalent of `.bash_profile`. I highly recommend 
	switching to
Zsh.
* `.vimrc` 	-->	Settings for Vim.  
 
	I have commented settings that are plugin-dependent. These can be simply 
	commented out. Or, better yet, you can install these wonderful plugins 
	on your	own system.
* `.iTerm/`	-->	Settings folder for the iTerm2 terminal emulator on 
OS X.
* `.git`	-->	This is a git repo. 
 
	You can use pull to upgrade to the latest version, or push to your own 
	repo to make your own changes and backup.
* `make.sh`	-->	Shell puts everything in its right place.
 
	See "Installation".
* `README.md`	-->	You're looking at it.




##Dependencies

All of the plugin-dependent settings can be are highlighted and can be commented 
out. However, here is a list of packages and plugins that are referenced in this
library:


###Zsh and Oh-My-Zsh

I have switched from Bash to Zsh. I highly recommend it! 

Zsh is very much Bash-compatible: you will feel at home right away, and all 
your old shell scripts should still work. (You can even append your old Bash
setup to your `.zshrc` like so:

	cat .bash_profile >> .zshrc

I am also using the *oh-my-zsh* Zsh framework. For more info on *oh-my-zsh* and
my `Custom/` plugins folder, see my [DOTomz\_Custom](https://github.com/CLUSTERfoo/DOTomz_Custom)


###Vim and Pathogen

I am using Vim as my editor and the Pathogen plugin to manage my plugins. For 
this see, my `.vim` files in my [DOTvim](https://github.com/CLUSTERfoo/DOTvim) repo.




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

See my [DOTomz\_Custom](https://github.com/CLUSTERfoo/DOTomz_Custom) repo for instructions.


### 2 - Clone DOTfiles Repo ##

First, you must clone this repo into your HOME folder. In your terminal, type:

	cd ~
	git clone https://github.com/CLUSTERfoo/DOTfiles.git


###3 - Automatic Installation

You now have a hidden .DOTfiles directory in your home folder. In this folder 
are all the files listed in the "In This Package" section. To install everything
automatically, simply run the `make.sh` script using the following command:

	cd ~/.DOTfiles
	source make.sh

The `make.sh` script is commented and easy to read. Or:

###3.1 - Make Manually

You can it yourself. First, backup your old dotfiles. Next, create symbolic
links of the dotfiles in this package:

	ln -s ~/.DOTfiles/.iTerm/ ~/.iTerm
	ln -s  ~/.DOTfiles/.vimrc ~/.vimrc
	ln -s  ~/.DOTfiles/.zshrc ~/.zshrc

And you're done!

## Update and Backup

Since this folder is a git repo, all you have to do to get updates is use `git
pull`. See the git manual.

To back up your own version, simply create your own remote git repo and push
all your changes.

##Other Packages

###Homebrew
I am using [Homebrew](http://mxcl.github.com/homebrew/), "The missing package manager for OS X". It's awesome.
My current packages include:

* `ack` 	-->	Like grep, but I hear is better.
 
	I've not yet taken `ack` out for a spin.
* `lynx`	-->	A text web browser for your terminal.
 
	Because... who knows. The zombie apocalypse and all you have is a 
	Commodore. 
* `macvim`	-->	A GUI Vim editor for OS X. 
 
	I do most of my editing in the terminal, but for a quick edit this is 
	better than having TextEdit as your default. 




##License

GPL v3.0 or Creative Commons or whichever of the two applies. 

