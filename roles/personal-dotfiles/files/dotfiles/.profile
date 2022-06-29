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
#export EDITOR='emacsclient -nw -c -a ""'
export EDITOR='nvim'
alias emacs='emacsclient -nw -c -a ""'
alias e='emacsclient -nw -c -a ""'
alias ew='emacsclient -c -a ""'

# Deno
export DENO_INSTALL="/home/dagolap/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Flutter
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/bin/apps/flutter/bin:$PATH"

# Dotnet
export PATH="$HOME/.dotnet/tools:$PATH"

# Snap
export PATH="/var/lib/snapd/snap/bin:$PATH"

