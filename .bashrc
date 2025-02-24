
# Terminal Customisation
export COLORTERM="truecolor"


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

set bell-style none
. "$HOME/.cargo/env"


if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
else  
  export PS1="${debian_chroot:+($debian_chroot)}\n\[\e[32m\]┌──(\u@\h)-[\w] [\t]\n\[\e[31m\]└─<default> \[\e[0m\]"
fi
