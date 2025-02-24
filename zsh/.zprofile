export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# launch hyprland
# https://www.reddit.com/r/hyprland/comments/127m3ef/starting_hyprland_directy_from_systemd_a_guide_to/
if [ "$(tty)" = "/dev/tty1" ]; then
  if uwsm check may-start; then
    exec uwsm start hyprland.desktop
  fi
fi
