#!/bin/bash
echo "restoring harman rice..."

cp -r ~/dotfiles/harman/hypr ~/.config/
cp -r ~/dotfiles/harman/quickshell ~/.config/
cp -r ~/dotfiles/harman/swaync ~/.config/
hyprctl reload
wal -R

echo "done! harman restored"

