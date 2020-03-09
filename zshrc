alias cdpy="cd ~/Manzama/PyApp"
alias cdrp="cd ~/Manzama/purgatory/report_builders/"
alias jup="source ~/VirtualEnv/jupyter/bin/activate"
alias ipython="python"

alias sshtmp="gcloud compute ssh p-w-temp-worker"
alias sshgen="gcloud compute ssh p-w-general-a-7"
alias sshdev="gcloud compute ssh p-web-dev-5"
alias sshvag="cdpy && vagrant ssh"

export PATH="$PATH:~/dotfiles/scripts:/usr/local/bin:~/VirtualEnvs/bin"

source ~/dotfiles/scripts/git-prompt.zsh 
alias stats="python -m pstats vimauto.profile < ~/dotfiles/profile_helper.txt"

SAVEHIST=100
HISTFILE=~/.zsh_history

setopt inc_append_history
setopt share_history

# set -o vi
alias ll="ls -hal"

# The next line updates PATH for the Google Cloud SDK.
source ~/Documents/code/google-cloud-sdk/path.zsh.inc

# The next line enables shell command completion for gcloud.
source ~/Documents/code/google-cloud-sdk/completion.zsh.inc
