# ALiases
alias v='nvim'
alias p='python3'

alias cd='z'
alias ..='cd ../'
alias ...='cd ../../'
alias d='cd ~/Downloads'

alias l='ls -lh'
alias ll='ls -lah'

alias zshconfig="v ~/.zshrc"

# Zoxide
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

# Starship
eval "$(starship init zsh)"

export PATH=$PATH:/opt/miniconda3/bin/:/opt/rez/bin/rez

export REZ_PACKAGES_PATH=/home/mrjeem/rez2/packages/:/ganglia/rez2/packages/:/ganglia/rez/package/:/home/mrjeem/rez/packages/

source /opt/rez/completion/complete.zsh
