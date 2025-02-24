

# Bash shell settings
# Typing a directory name just by itself will automatically change into that directory.
shopt -s autocd

# Automatically fix directory name typos when changing directory.
shopt -s cdspell

# Automatically expand directory globs and fix directory name typos whilst completing.
# Note, this works in conjuction with the cdspell option listed above.
shopt -s direxpand dirspell

# Enable the ** globstar recursive pattern in file and directory expansions.
# For example, ls **/*.txt will list all text files in the current directory hierarchy.
shopt -s globstar

# Ignore lines which begin with a <space> and match previous entries.
# Erase duplicate entries in history file.
HISTCONTROL=ignoreboth:erasedups

# Ignore saving short- and other listed commands to the history file.
HISTIGNORE=?:??:history

# The maximum number of lines in the history file.
HISTFILESIZE=99999

# The number of entries to save in the history file.
HISTSIZE=99999

# Set Bash to save each command to history, right after it has been executed.
PROMPT_COMMAND='history -a'

# Save multi-line commands in one history entry.
shopt -s cmdhist

# Append commands to the history file, instead of overwriting it.
# History substitution are not immediately passed to the shell parser.
shopt -s histappend histverify

# User specific aliases and functions

alias c='clear'
alias rel='source ~/.bashrc'
alias topu='top | grep ikarunak'

alias ..='cd ..'
alias ...='cd ../..'

alias cs='cd;ls;'

alias ls='ls --color=auto'
alias ll='ls -la'

alias grep='grep --color=auto'

alias ports='netstat -tulanp'

# start bash screen session

alias sesh='screen -S default'
alias rsesh='screen -r default'

# Tmux commands

alias tenv='conda activate tmux-env'


# Watch nvidia

alias nvidia='watch nvidia-smi'


# Request a gpu session
alias igpulow='srun --partition=gpu --gpus=1 --mem=8G --cpus-per-task=4 --pty bash'
alias igpu='srun --partition=gpu --gpus=1 --mem=16G --cpus-per-task=4 --pty bash'
alias igpuhigh='srun --partition=gpu --gpus=a100:1 --mem=32G --cpus-per-task=8 --pty bash'

alias allocgpu='salloc --partition=gpu --gpus=1 --mem=8G --cpus-per-task=4 --pty bash'
# aliases for conda environments

alias act='conda activate'
alias d='conda deactivate'
alias envlist='conda env list'

alias jlab='jupyter-lab --no-browser --ip 0.0.0.0 --port 8080'


# Schedule commands

alias myjobs='squeue -u ikarunak'
alias jobstats='sacct --format="JobID,JobName,Partition,Elapsed,TotalCPU,ReqCPUS,ReqMem,MaxRSS,AveRSS,State"'
