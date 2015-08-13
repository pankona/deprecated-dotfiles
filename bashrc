
env >> /home/aka/.start_log.txt

export PS1="[\u \w]\$ "

alias vi='vim'
alias ls='ls --color'
alias grep='grep --color=auto'
alias make='colormake'

HISTCONTROL=erasedups
HISTIGNORE="cd*:history*:ls*:which*:exit"

export ANDROID_SDK=$HOME/android-sdk-linux
export PATH=$PATH:$ANDROID_SDK/platform-tools
export PATH=$PATH:$ANDROID_SDK/tools
export PATH=$PATH:/home/aka/android-ndk-r10c

alias eclimd=/usr/share/eclipse/eclimd

set -o vi

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/home/aka/work/KonaReflection/src/cocos2d/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/home/aka/work/KonaReflection/src/cocos2d/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/home/aka/android-ndk-r10c
#export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/home/aka/android-sdk-linux
#export PATH=$ANDROID_SDK_ROOT:$PATH
#export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT=/usr/bin
#export PATH=$ANT_ROOT:$PATH

# added by travis gem
[ -f /home/aka/.travis/travis.sh ] && source /home/aka/.travis/travis.sh

source ~/bin/git-completion.bash

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export GOROOT="/home/aka/work/go"
export PATH="$PATH:$GOROOT/bin"
export GOPATH="/home/aka/work/gocode"
export PATH="$PATH:$GOPATH/bin"

export PATH="/home/aka/bin:$PATH"

export PATH="/home/aka/work/go_appengine:$PATH"
