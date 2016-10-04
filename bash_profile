export PATH="$PATH:~/dotfiles/scripts"

alias jup="source ~/VirtualEnv/jupyter/bin/activate"
alias cdcn="cd ~/Documents/school/Classes/Computer\ Networking"

alias ipnb="jupyter notebook --ip='*'"
alias ipce="jupyter console --existing"

alias dsup="VBoxManage startvm datascience --type headless"
alias dssh="ssh brig@datascience"
alias dsdown="VBoxManage controlvm datascience acpipowerbutton"
alias cnup="VBoxManage startvm \"Computer Networks CS-6250\" --type headless"
alias cnsh="ssh mininet@mininet"
alias cndown="VBoxManage controlvm \"Computer Networks CS-6250\" acpipowerbutton"

alias stats="python -m pstats vimauto.profile < ~/dotfiles/profile_helper.txt"

set -o vi


# The next line updates PATH for the Google Cloud SDK.
source '/Users/brigrockwell/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/brigrockwell/google-cloud-sdk/completion.bash.inc'
