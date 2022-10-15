export TERM="xterm-256color"
export ZSH=/usr/share/oh-my-zsh
export ZSH_POWER_LEVEL_THEME=/usr/share/zsh-theme-powerlevel10k
# Change local for tmux
export LANG=en_IN.UTF-8

source $ZSH_POWER_LEVEL_THEME/powerlevel10k.zsh-theme

plugins=(archlinux
        jsontools
        vscode web-search
        tig
        gitfast
        colored-man-pages
        colorize
        command-not-found
        cp
        dirhistory
        sudo
        zsh-syntax-highlighting
        zsh-autosuggestions)

#ALIASES
alias resource="source ~/.zshrc"
alias lzd="lazydocker"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source $ZSH/oh-my-zsh.sh

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# For the github github ssh config
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/cloud/github
