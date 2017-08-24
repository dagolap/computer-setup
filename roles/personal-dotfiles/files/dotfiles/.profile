# Java
export JAVA_HOME='/usr/lib/jvm/java-1.8.0/'
export GRADLE_HOME='/opt/gradle/gradle-3.5/'
export PATH="$HOME/bin:/opt/gradle/gradle-3.5/bin:$PATH"

# Golang
export GOPATH="$HOME/dev/go"
export PATH="$PATH:$GOPATH/bin"

# Vagrant
export VAGRANT_DEFAULT_PROVIDER='virtualbox'

# Editor stuff
export EDITOR='emacsclient -nw -c -a ""'
alias emacs='emacsclient -nw -c -a ""'
alias e='emacsclient -nw -c -a ""'
alias ew='emacsclient -c -a ""'
alias vim=e

# Resolution and screen configuration
alias res_add1080='xrandr --newmode "1920x1080_60" 173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync && xrandr --addmode eDP-1 1920x1080_60'
alias res_edp1080='xrandr --output eDP-1 --mode 1920x1080_60'
alias res_work='xrandr --output eDP-1 --mode 1920x1080_60 --pos 0x0 --rotate normal --output HDMI-2 --mode 2560x1440 --rotate normal --pos 1920x-800'
