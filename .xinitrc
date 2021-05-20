# .xinitrc file

# Sets the background to the last selected from nitrogen
nitrogen --restore &

# Set the animated wallpaper using asetroot
#asetroot ~/Documents/wallpapers/gifs/pixel-8/ -t 103 &

# Automatically lock the screen after 7 minutes 
xautolock -time 6 -noclose -locker "betterlockscreen -l blur -t 'Go away'" &

# Automatically sleep after 12 minutes
xautolock -time 12 -noclose -locker "systemctl suspend" &

# Automatically hide the mouse after 10 seconds of inactivity
unclutter --timeout 10 &

# Launch notification daemon dunst
dunst &

# Speed xrate up for faster input from the keyboard
xset r rate 300 50

# Set compose key to caps lock so I can write danish letters on US keyboard layout
setxkbmap -option compose:caps

# Load colors from .Xressources
xrdb ~/.Xresources

# Sleep 4 seconds and then launch polybar
#$(sleep 4s && "$HOME/.config/polybar/blocks/launch.sh") &

# Launch compositer
picom --experimental-backends &

# Launch ssh-agent to use ssh with a key passphrase
ssh-agent zsh &

# Fix ghidra java application in dwm
export _JAVA_AWT_WM_NONREPARENTING=1

# Launch windows manager (dwm)
exec dwm
