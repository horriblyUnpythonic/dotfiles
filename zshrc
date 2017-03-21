alias cdpy="cd ~/Manzama/PyApp"

export PATH=$PATH:/usr/local/bin

source ~/dotfiles/scripts/git-prompt.zsh 
alias stats="python -m pstats vimauto.profile < ~/dotfiles/profile_helper.txt"

SAVEHIST=100
HISTFILE=~/.zsh_history

setopt inc_append_history
setopt share_history

set -o vi
alias ll="ls -hal"

# The next line updates PATH for the Google Cloud SDK.
source ~/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
source ~/google-cloud-sdk/completion.zsh.inc
