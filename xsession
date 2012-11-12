#!/bin/bash

# xrdb -merge .Xresources; xrdb -merge .xdefaults

# trayer systray
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 10 --height 16 --transparent true --tint 0x000000 &

# FIXME stalone systray
# clickable, unlike trayer, but for some reason causes bug at login.
# stalonetray --background black --dockapp-mode simple --geometry 3x1-2 --icon-size 16 &

# Allow file manager to take care of plugin USB drives and Dropbox icons
# FIXME pcmanfm -d &  better than nautilus but for some reason doesn't work (process 
# starts but no window comes up)
nautilus -n &

clipit &

dropbox start &

exec xmonad
