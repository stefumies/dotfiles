export TERM=xterm-256color

fpath+=~/.zfunc

export LANG=en_US.UTF-8
export PODMAN_COMPOSE_WARNING_LOGS=false
export DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"
export GOPATH=$HOME/Go
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/share/bob/nvim-bin
export PATH=$PATH:$HOME/Odin
export PATH=$PATH:$HOME/ols
export PATH=$PATH:$HOME/Tools/ols
export PATH=$PATH:$HOME/home/stephendavies/.local/bin
export PATG=$PATH:/usr/share/java/pycharm-community/bin

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vi'
 else
   export EDITOR='nano'
 fi

alias vi=nvim
alias vim=nvim
alias vv=nvim
alias pp=podman
alias pc="podman compose"
alias dot="cd ~/dotfiles"
alias dev="cd ~/Development"
alias vf="cd ~/Development/Verifone"
alias lz="lazygit"
alias yz="yazi"
alias charm="pycharm-community"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "/home/stefu/.ghcup/env" ] && . "/home/stefu/.ghcup/env" # ghcup-env

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
