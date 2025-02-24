
# Terminal Customisation
export COLORTERM="truecolor"
#export PS1="${debian_chroot:+($debian_chroot)}\[\e[32m\]\u@\[\e[34m\]\h:\[\e[0m\]\w\n==> "

# .bashrc
#export PATH="/mnt/apps/users/ikarunak/helix/hx:$PATH"
export HELIX_RUNTIME="/mnt/apps/users/ikarunak/helix/runtime"
export ANT_HOME='/mnt/apps/users/ikarunak/apache-ant-1.10.15'

export PATH="${ANT_HOME}/bin:$PATH"
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and funtions
if [[ -f ~/.bash_aliases ]]; then
	. ~/.bash_aliases
fi
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/mnt/apps/users/ikarunak/conda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/mnt/apps/users/ikarunak/conda/etc/profile.d/conda.sh" ]; then
        . "/mnt/apps/users/ikarunak/conda/etc/profile.d/conda.sh"
    else
        export PATH="/mnt/apps/users/ikarunak/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


set bell-style none
. "$HOME/.cargo/env"


if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
else  
  export PS1="${debian_chroot:+($debian_chroot)}\n\[\e[32m\]┌──(\u@\h)-[\w] [\t]\n\[\e[31m\]└─<default> \[\e[0m\]"
fi
