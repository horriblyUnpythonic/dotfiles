alias cdpy="cd ~/Manzama/PyApp"


source ~/dotfiles/scripts/git-prompt.zsh 
alias stats="python -m pstats vimauto.profile < ~/dotfiles/profile_helper.txt"

SAVEHIST=100
HISTFILE=~/.zsh_history

setopt inc_append_history
setopt share_history

# The next line updates PATH for the Google Cloud SDK.
source ~/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
source ~/google-cloud-sdk/completion.zsh.inc
