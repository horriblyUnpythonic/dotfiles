export PATH="$PATH:~/dotfiles/scripts"

alias jup="source ~/VirtualEnv/jupyter/bin/activate"
alias mus="source ~/VirtualEnv/music/bin/activate"
alias cdml="cd ~/Documents/school/Classes/trading_machine_learning/"
alias cdkl="cd ~/Music/Lyrics/Kelly/"

alias ipnb="jupyter notebook --ip='*'"
alias ipce="jupyter console --existing"

alias dsup="VBoxManage startvm datascience --type headless"
alias dssh="ssh brig@datascience"
alias dsdown="VBoxManage controlvm datascience acpipowerbutton"
alias cnup="VBoxManage startvm \"Computer Networks CS-6250\" --type headless"
alias cnsh="ssh mininet@mininet"
alias cndown="VBoxManage controlvm \"Computer Networks CS-6250\" acpipowerbutton"

alias stats="python -m pstats vimauto.profile < ~/dotfiles/profile_helper.txt"

# set -o vi
alias gosh="ssh -i ~/.ssh/google_ssh_key blratbri@104.198.74.21"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/Documents/code/google-cloud-sdk/path.bash.inc' ]; then source '~/Documents/code/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/Documents/code/google-cloud-sdk/completion.bash.inc' ]; then source '~/Documents/code/google-cloud-sdk/completion.bash.inc'; fi

alias ll="ls -hal"

# set -o vi
