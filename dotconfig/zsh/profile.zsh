# yarn global
export PATH=$HOME/.yarn/bin:$PATH

# composer vendor
export PATH=$HOME/.config/composer/vendor/bin:$PATH

# local
export PATH=$HOME/.local/bin:$PATH

# Flutter
# export PATH=/opt/flutter/bin:$PATH

# ruby
export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH

# GPG Key
export GPG_TTY=$(tty)

# FNM
export PATH=/home/yudi/.fnm:$PATH
eval "`fnm env`"

# FZF
export FZF_DEFAULT_COMMAND='rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'

# Android
export ANDROID_SDK=$HOME/Android/Sdk
export PATH=$HOME/Android/Sdk/platform-tools:$PATH

# tmp
export TMPDIR="/tmp"
