#Noam's DOTfiles

This is my personal home directory and dev environment setup. I've put it
together mostly for personal use.

![i3 desktop](http://i.imgur.com/E9CenEg.png?1)
[Large](http://i.imgur.com/E9CenEg.png)

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
