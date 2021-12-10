# various path assignments
LOCALSBIN="/usr/local/sbin"
HOMEBIN="$HOME/bin"
PYTHON="/usr/local/opt/python/libexec/bin"

export PATH="$PYTHON:$HOMEBIN:$LOCALSBIN:$PATH"

# z - https://github.com/rupa/z
. `brew --prefix`/etc/profile.d/z.sh

# functions
mkdir() { /bin/mkdir -p "$@" && cd "$@"; }

# silence zsh message in macos
export BASH_SILENCE_DEPRECATION_WARNING=1
