export PS1="\n\[$(tput sgr0)\]\[\033[38;5;14m\][\[$(tput sgr0)\]\[\033[38;5;15m\]\T\[$(tput sgr0)\]\[\033[38;5;14m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n\[$(tput sgr0)\]\[\033[38;5;14m\][\[$(tput sgr0)\]\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;14m\]@\[$(tput sgr0)\]\[\033[38;5;13m\]\h\[$(tput sgr0)\]\[\033[38;5;14m\]]\[$(tput sgr0)\]\[\033[38;5;11m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Shortcuts for ls
alias ll='ls -l'
alias lll='ls -alt'


### Symfony development ###

# start symfony server (sss): starts running symfony project from the base directory utilizing PHP's built in webserver
alias sss='php bin/console server:run'
