export PATH="$PATH:~/dotfiles/scripts"

alias jup="source ~/VirtualEnv/jupyter/bin/activate"
alias cdai="cd ~/Documents/school/Classes/AI\ for\ Robotics"

alias ipnb="jupyter notebook --ip='*'"
alias ipce="jupyter console --existing"

alias dsup="VBoxManage startvm datascience --type headless"
alias dssh="ssh brig@datascience"
alias dsdown="VBoxManage controlvm datascience acpipowerbutton"

alias stats="python -m pstats vimauto.profile < ~/dotfiles/profile_helper.txt"


# The next line updates PATH for the Google Cloud SDK.
source '/Users/brigrockwell/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/brigrockwell/google-cloud-sdk/completion.bash.inc'
