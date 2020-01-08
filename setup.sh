#!/bin/bash

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    ln -s `pwd`/$f ~/$f
done

echo "Add `dirname ~`/`basename ~`/.xkb/load_xkbmap.sh in startup programs"
gnome-session-properties
