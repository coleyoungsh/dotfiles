export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# launch hyprland
if uwsm check may-start; then
  exec uwsm start hyprland-uwsm.desktop
fi
