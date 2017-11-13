#Noam's DOTfiles

This is my personal home directory and dev environment setup. I've put it
together mostly for personal use.

![i3 desktop](http://i.imgur.com/E9CenEg.png?1)
[Large](http://i.imgur.com/E9CenEg.png)

##Setup & Installation

### 1 - Make Zsh Your Default Shell and Install Oh-My-Zsh

Instructions [here](https://github.com/robbyrussell/oh-my-zsh).

### 2 - Clone DOTfiles Repo

Clone this repo into your $HOME folder:

    $ cd ~
    $ git clone https://github.com/noam87/DOTfiles.git

###3 - Install Home Directory Files

#### The easy way:

Requires  Ruby and [rake](http://rake.rubyforge.org/).

`cd` into `DOTfiles` directory and run:

    $ rake

The script also backs up your old dotfiles in a `~/DOTbackup` directory.

#### The Manual Install:

Create symbolic links to the dotfiles in this package.

All files in the `home/` directory are made to mirror the structure of
your actual `$HOME` directory, for example, this reates a symlink in your home
directory that points to the vimrc file:

    ln -s ~/DOTfiles/home/vimrc ~/.vimrc

