#! /bin/bash

connected_primary=$(xrandr --verbose -q | grep "connected primary")
output=$(echo $connected_primary | cut -d' ' -f1)
rotation=$(echo $connected_primary | cut -d' ' -f6)

if [ "$rotation" == "normal" ]; then
  rotate_to='left'
else
  rotate_to='normal'
fi

xrandr --output $output --rotate $rotate_to
