# yarn global
export PATH=$HOME/.yarn/bin:$PATH

# composer vendor
export PATH=$HOME/.config/composer/vendor/bin:$PATH

# local
export PATH=$HOME/.local/bin:$PATH

# ruby
export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH

# GPG Key
export GPG_TTY=$(tty)

# Node
export N_PREFIX=$HOME/.local

# FZF
export FZF_DEFAULT_COMMAND='rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'

# Android
export ANDROID_SDK=$HOME/Android/Sdk
export PATH=$HOME/Android/Sdk/platform-tools:$PATH
export PATH=$HOME/Android/Sdk/tools:$PATH

# Java Application 
# export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel ${_JAVA_OPTIONS}"
export JAVA_HOME=/usr/lib/jvm/default
export JAVA_FONTS=/usr/share/fonts/TTF
