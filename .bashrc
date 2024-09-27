#!/usr/bin/env sh

# Aliases
alias v='nvim'
alias p='python3'

alias cat='bat'

# ssh
alias cd='z'
alias ..='cd ../'
alias ...='cd ../../'
alias d='cd ~/Downloads'

# ssh
alias l='ls -lh'
alias ll='ls -lah'

# ssh
alias s='ssh -X'
alias sm='ssh -X hamza.malik@morty'

alias shconf="v ~/.bashrc"

# Mounts
alias mntc='sudo mount /dev/nvme0n1p3 /mnt/win_c/'
alias mntd='sudo mount /dev/sda1 /mnt/win_d/'

# nmcli
alias up='nmcli connection up'
alias down='nmcli connection down'
alias upA='nmcli connection up Anima'
alias downA='nmcli connection down Anima'
alias upa='nmcli connection up avp'
alias downa='nmcli connection down avp'

# QEMU
alias upwin='quickemu -vm ~/.local/opt/vms/windows-11.conf --width 1920 --height 1080 --display spice --spice-port 5930'
alias cwin='sudo spicy --title "windows-11" --port "5930" --spice-shared-dir "/home/mrjeem/Public" "" >/dev/null 2>&1 &'
alias upmac='quickemu -vm ~/.local/opt/vms/macos-sonoma.conf --width 1920 --height 1080 --display spice --spice-port 5931'
alias cmac='sudo spicy --title "macos" --port "5931" --spice-shared-dir "/home/mrjeem/Public" "" >/dev/null 2>&1 &'

# Local env
export PATH="$HOME/.local/bin:$PATH"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:$HOME/.local/share/applications/"

# Zoxide
eval "$(zoxide init bash)"
eval "$(fzf --bash)"

# Starship
eval "$(starship init bash)"

# Rez
export PATH="$PATH:$HOME/.local/opt/rez/bin/rez"
source $HOME/.local/opt/rez/completion/complete.sh
export REZ_PACKAGES_PATH="$HOME/rez/packages/"

# PyEnv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
