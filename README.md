#Noam's DOTfiles, Feb 2013

This is my personal home directory and dev environment setup. I've put it 
together mostly for personal use. 

![Xmonad desktop running Vim and git-cola](http://i.imgur.com/5nE0V.png?1)

Blog: <http://CLUSTERfoo.com>

My code on github: <https://github.com/CLUSTERfoo/>

##Setup & Installation

### 1 - Make Zsh Your Default Shell and Install Oh-My-Zsh

Instructions [here](https://github.com/robbyrussell/oh-my-zsh).

### 2 - Clone DOTfiles Repo

Clone this repo into your $HOME folder:

    $ cd ~
    $ git clone https://github.com/CLUSTERfoo/DOTfiles.git

###3 - Install Home Directory Files

#### The easy way:  

Requires  Ruby and [rake](http://rake.rubyforge.org/). 

Simply `cd` into your `DOTfiles` directory and run:

    $ rake 

The script also backs up your old dotfiles in a `~/DOTbackup` directory. I've 
only tested this script on one Ubuntu and one Mac... read the `Rakefile` before
running it to make sure it doesn't interfere with your own setup (it's 
pretty straight forward).

If you don't trust the installation script do a manual install:

#### The Manual Install:

Create symbolic links to the dotfiles in this package. 

All files in the `home/` directory are made to mirror the structure of 
your actual `$HOME` directory, for example:

    ln -s ~/DOTfiles/home/vimrc ~/.vimrc

Creates a symlink in your home directory that points to the vimrc file.

#### Install Desktop Environment (Linux)

This is the location in Ubuntu. I don't know if
other systems are the same. You might require sudo:

        $ sudo ln ~/DOTfiles/xmonad-custom.desktop /usr/share/xsessions/xmonad-custom.desktop

This will create a new Xmonad login session that you can choose from in the 
Ubuntu login screen dropdown. 

## Update and Backup

Since this folder is a git repo, all you have to do to get updates is use `git
pull`. Note that this will override any custom changes you've made to the files.

To back up your own version, create your own remote git repo and push
all your changes.

##License

*Lives Are At Stake!* License 2.0
