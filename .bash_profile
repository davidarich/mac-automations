# Set the terminal line format & color
export PS1="\n\[$(tput sgr0)\]\[\033[38;5;14m\][\[$(tput sgr0)\]\[\033[38;5;15m\]\T\[$(tput sgr0)\]\[\033[38;5;14m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;14m\][\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;14m\]@\[$(tput sgr0)\]\[\033[38;5;13m\]\h\[$(tput sgr0)\]\[\033[38;5;14m\]]\[$(tput sgr0)\]\[\033[38;5;11m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Shortcuts for ls
alias ls='ls -GFh'
alias ll='ls -lGFh'
alias lll='ls -altGFh'

# Set colors for ls
LS_COLORS="GxFxCxDxBxegedabagaced"
export LS_COLORS


### Symfony development ###

# start symfony server (sss): starts running symfony project from the base directory utilizing PHP's built in webserver
alias sss='php bin/console server:run'
