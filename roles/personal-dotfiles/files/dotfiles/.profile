# Java
export JAVA_HOME='/usr/lib/jvm/java-1.8.0-openjdk/'
export GRADLE_HOME='/home/dagolap/bin/apps/gradle-4.3.1/'
export PATH="$HOME/bin:/home/dagolap/bin/apps/gradle-4.3.1/bin/:$PATH"
#export JAVA_HOME='/usr/lib/jvm/java-10-openjdk/'
#export GRADLE_HOME='/home/dagolap/bin/apps/gradle-4.8.1/'
#export PATH="$HOME/bin:/home/dagolap/bin/apps/gradle-4.8.1/bin/:$PATH"

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
