# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
export TZ=EST5EDT
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

case $TERM in
   xterm* | linux |  rxvt)
      PS1="\[\033]0;Terminal: \u@\h (\l)\007\][\u@\h]-[\w]\#\$ "
      ;;
   *)
      PS1='[\u@\h]-[\#:\w]\$ '
      ;;
esac

export HISTIGNORE="&:bg:fg:h:w:clear"

# Load custom bash files
# get aliases
if [ -f $HOME/.aliases ]; then
 . $HOME/.aliases
fi

# load bash functions
if [ -f $HOME/.bash_functions ]; then
 . $HOME/.bash_functions
fi

# Quick info on login
#echo "Last 3 logins were: "
#last -a -3 $USER
echo "Logged in to: `/usr/bin/tty` "
#echo "Users logged in: `users` "
#echo "Establishing Prompt"
