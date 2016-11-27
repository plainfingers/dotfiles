if [ -s ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

#exec fvwm
xrandr --dpi 160
exec i3
