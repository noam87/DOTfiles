#Noam's DOTfiles, Feb 2013

This is my personal home directory and dev environment setup. I've put it 
together mostly for personal use. 

![Xmonad desktop running Vim and git-cola](http://i.imgur.com/5nE0V.png?1)


[Full Screen](http://clusterfoo.com/wp-content/uploads/2013/01/Screenshot-from-2013-01-11-235146.png)


Blog: <http://CLUSTERfoo.com>

My code on github: <https://github.com/CLUSTERfoo/>

##TOC

1. *In This Package*
2. *Setup & Installation*
3. *Upgrading and Backing Up*
4. *License*



##Files in this Package

* `zshrc`       :   Settings for Zsh (Z-shell).
* `xmobarrc`    :   Xmobar settings.
* `xsession`    :   Xsession executable.
* `xmonad-custom.desktop`   
                :   Linux desktop entry for my xmonad setup.
* `xmonad/`     :   Settings for Xmonad windows manager (Linux)   
* `xmodmap`     :   Remap keyboard keys (linux)
* `Sublime Text 2/` :
                    Settings for Sublime.
* `vimrc`       :   Settings for Vim. 
* `iTerm/`      :   Settings folder for the iTerm2 terminal emulator on
                    OS X.
* `.git`        :   This is a git repo. Simply  use pull to upgrade to 
                    latest version (or push your own custom repo).
* `setup.py`    :   Setup script. Not yet written. 
* `README.md`   :   You're looking at it.
* `packages.yaml`
                :   packages I use.







##Setup & Installation

### 1 - Make Zsh Your Default Shell

Zsh comes with most popular UNIX systems. To set it as your default shell,
simply input the following command into your terminal:

    chsh -s /bin/zsh

The command to switch back to bash is simply:

    chsh -s /bin/bash


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

#### Exceptions:

The following files are *not* symlinked in the home directory: 

* `xmonad-custom.desktop`: its symbolic link should go in 
`/usr/share/xsessions` (at least in Ubuntu; your system may differ). 

* `Sublime Text 2/Packages/User`: its symlink should go in the `Packages/User`
directory of your Sublime installation. 

* `jellybeans.vim`: its symlink goes in the vim color schemes directory.

And you're done!

## Update and Backup

Since this folder is a git repo, all you have to do to get updates is use `git
pull`. Note that this will override any custom changes you've made to the files.

To back up your own version, create your own remote git repo and push
all your changes.

##License

*Lives Are At Stake!* License 2.0
