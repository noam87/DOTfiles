#!/bin/sh
# Make dotfiles

# Remove old backups if they exist.
if [ -d ~/.DOTfiles_backup ]
then
	echo "    ~ ~ Removing old .DOTfiles_backup folder ~ ~"
	rm -fR ~/.DOTfiles_backup;
fi

# Make backup folder if it does not exist.
if [ ! -d ~/.DOTfiles_backup ]
then
	echo "    ~ ~ Making .DOTfiles_backup folder ~ ~"
	mkdir ~/.DOTfiles_backup;
fi


if [ -f ~/.123456 ]
then
	mv ~/.123456 ~./DOTfiles_backup/.123456
fi

# Backup old iTerm directory if it exists.
if [ -d ~/.iTerm ]
then
	mv ~/.iTerm  ~/.DOTfiles_backup/.iTerm; 
fi

# Symlink .iTerm directory
echo "    ~ ~ Making .iTerm directory ~ ~"
ln -s ~/.DOTfiles/.iTerm/ ~/.iTerm;

# Backup old .vimrc if it exists
if [ -f ~/.vimrc ]
then
	mv ~/.vimrc  ~/.DOTfiles_backup/.vimrc;
fi

# Symlink .vimrc
echo "    ~ ~ Making .vimrc ~ ~"
ln -s  ~/.DOTfiles/.vimrc ~/.vimrc;

# Backup .zshrc if it exists
if [ -f ~/.zshrc ]
then
	mv ~/.zshrc  ~/.DOTfiles_backup/.zshrc;
fi

# Symlink .zshrc
echo "    ~ ~ Making ~/.zshrc ~ ~"
ln -s  ~/.DOTfiles/.zshrc ~/.zshrc;

echo "    ~ ~ All set! \
Your old DOTfiles are backed up in .DOTfiles_bacup. ~ ~" 
