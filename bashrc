# Go
GOROOT=/usr/local/opt/go/libexec
GOPATH="$HOME/Projects/go"
GO="$GOPATH/bin:$GOROOT/bin"

# various path assignments
LOCALSBIN="/usr/local/sbin"
HOMEBIN="$HOME/bin"
NPM="/usr/local/lib/node_modules"
NPM_BIN="$PWD/node_modules/.bin"

export GOROOT
export GOPATH
#export PATH="$NPM_BIN:$NPM:$GO:$HOMEBIN:$LOCALSBIN:$PATH"
export PATH="$NPM_BIN:$NPM:$GO:$HOMEBIN:$PATH"

# JDK
# /usr/libexec/java_home -verbose lists JDKs installed
#export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"

# functions
mkdir() { /bin/mkdir -p "$@" && cd "$@"; }
