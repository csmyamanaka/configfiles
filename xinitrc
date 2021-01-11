## Xinit configurations
## "xinitrc"
## M. Yamanaka
## email: myamanaka@live.com
## website: csmyamanaka.com
## license: MIT (See included "LICENSE" file for details)

##
## Environment variables that I find useful
##
export IMGDIR=$HOME/.local/media/images
export MUSICDIR=$HOME/.local/media/music
export TEMPDIR=$HOME/.local/tmp
export DLDIR=$HOME/Downloads

##
## Some X11 configurations
##
xrdb $HOME/.config/Xresources

#for left-handed trackpad/mouse usage
xmodmap -e "pointer = 3 2 1"

#make caps-lock key more useful
setxkbmap -option "caps:escape"

##
## Appearance/Rice
##
hsetroot -fill $HOME/.local/media/images/pic.jpg
xcompmgr &

tint2 &

exec openbox
