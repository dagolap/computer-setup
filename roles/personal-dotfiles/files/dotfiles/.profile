# General local bin path
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Java
export JAVA_HOME='/usr/lib/jvm/java-1.8.0-openjdk/'

# Golang
export GOPATH="$HOME/dev/go"
export PATH="$PATH:$GOPATH/bin"

# Javascript
NPM_PACKAGES="$HOME/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Vagrant
export VAGRANT_DEFAULT_PROVIDER='virtualbox'

# Editor stuff
export EDITOR='emacsclient -nw -c -a ""'
alias emacs='emacsclient -nw -c -a ""'
alias e='emacsclient -nw -c -a ""'
alias ew='emacsclient -c -a ""'
