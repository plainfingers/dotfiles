if [ -s ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

#exec fvwm
xrandr --dpi 175
exec i3
