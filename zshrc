ZSH=$HOME/.zsh

source $ZSH/zsh.sh

export VISUAL=vim
export EDITOR=vim

HISTFILE=$HOME/.history
HISTSIZE=10000
SAVEHIST=10000

setopt CORRECT \
       CORRECT_ALL \
       EXTENDED_GLOB \
       extended_history \
       inc_append_history \
       hist_expire_dups_first

if [ -x /usr/libexec/path_helper ]; then
  eval `/usr/libexec/path_helper -s`
fi

export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$RBENV_ROOT/shims:$HOME/bin:/usr/local/bin:/usr/pkg/bin:/usr/pkg/sbin:$HOME/.tmuxifier/bin:$GOPATH/bin:/opt/chef/embedded/bin:$ANDROID_SDK_ROOT/platform-tools:$PATH

export GOPATH=$HOME/code/go/
export RBENV_ROOT=/usr/local/var/rbenv
export ANDROID_SDK_ROOT=$HOME/android-sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home

eval "$(rbenv init -)"
eval "$(tmuxifier init -)"

source ~/.fzf.zsh
