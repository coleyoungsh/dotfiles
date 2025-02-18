#! /bin/sh
printf "%b" "\e[1;32mDownloading \e[1;0mCatppuccin cmus theme...\e[0m"
sudo curl -sO --output-dir /usr/share/cmus https://raw.githubusercontent.com/Sekki21956/cmus/refs/heads/main/catppuccin.theme
printf "%b" "\e[1;32m *DONE*\e[0m"
printf "%b" "\n\e[1;34mOpen cmus and run \e[1;35m:colorscheme catppuccin\e[0m\e[1;34m to finish\n"
