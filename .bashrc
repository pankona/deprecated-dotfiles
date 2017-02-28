#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

set -o vi

source $HOME/work/dotfiles/startup.sh
source $HOME/work/dotfiles/hack-spirit.sh

alias vi='vim'
alias ls='ls --color=auto'
alias python='python2.7'
alias acroread='sudo unshare -n sudo -u ${USER} ACRO_ALLOW_SUDO=1 acroread'
alias ifconfig-watch='watch -n 1 "ifconfig"'
alias mymine='REDMINE_URL=https://acsmine.tok.access-company.com/redmine/ REDMINE_API_KEY=eb45b9fa1814812c75cf0c84b4dcb0f8e2807853 mymine'

PS1="[\u \w]\$ "

function android-emulator() {
    if [ -z $1 ]; then
        echo 'usage: android-emulator "AVD name"'
        return 1
    fi;
    emulator -avd $1 -use-system-libs &> /dev/null &
}

function netctl-switch() {
    sudo netctl-auto switch-to $(netctl-auto list | peco)
}

function zulip() {
    cd /home/pankona/work/zulip-client
    npm run start &
    cd -
}

function hibernate() {
    sudo pm-hibernate
}

function kkzm-watch() {
    watch -n 1 'kkzm | tail -n 15'
}

alias remote-desktop='rdesktop Y39-31633 -u TOK\Yosuke.Akatsuka -g 1280x800'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

source ~/bin/git-completion.bash

export PATH=$PATH:$HOME/bin

export GOROOT=$HOME/work/go
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/work/go/bin:$GOPATH/bin

export PATH=$PATH:$HOME/android-ndk-r10e
export NDK_ROOT=$HOME/android-ndk-r10e
export PATH=$PATH:$NDK_ROOT/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin/

export ANDROID_SDK_ROOT=$HOME/android-sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH

# necessary for gomobile
export ANDROID_HOME=$ANDROID_SDK_ROOT

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# mypr
export MYPR_GITHUB_USERNAME=aYosukeAkatsuka

# gogland
export PATH=$PATH:$HOME/bin/gogland/bin

# NFAgent
NFA_HOME=/home/pankona/work/paneE
