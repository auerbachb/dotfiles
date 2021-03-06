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

export GOPATH=$HOME/code/go/
export RBENV_ROOT=/usr/local/var/rbenv
export ANDROID_SDK_ROOT=$HOME/android-sdk
export PYTHON_PATH=$HOME/Library/Python/2.7
export WORKDIR=$HOME/Hipmunk

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home

export PATH=$HOME/.rbenv/bin:$HOME/.rbenv/shims:$RBENV_ROOT/shims:$HOME/bin:/usr/local/bin:/usr/pkg/bin:/usr/pkg/sbin:$HOME/.tmuxifier/bin:$GOPATH/bin:/opt/chef/embedded/bin:$ANDROID_SDK_ROOT/platform-tools:$PYTHON_PATH/bin:$PATH

#eval "$(rbenv init -)" #turn back on if you start using ruby (github.com/sstephenson/rbenv)
#eval "$(tmuxifier init -)" #learn about if u want to re-enable

#source $HOME/.fzf.zsh #learn about if u want to re-enable

#docker variables
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/brettonauerbach/.boot2docker/certs/boot2docker-vm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
