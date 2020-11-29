# I'm lazy to type n every time...
alias vim="nvim"

# Commands starting with space won't be included in the history
HISTCONTROL=ignoreboth

ATHAME_ENABLED=1
ATHAME_SHOW_MODE=1
ATHAME_SHOW_COMMAND=1

# General envs
export BROWSER=qutebrowser
export EDITOR=nvim
export TERM=rxvt
export PATH=$PATH:/usr/local/cuda/bin
export PATH=$PATH:/opt/cuda/bin
export PATH=$PATH:~/.config/scripts
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH="$JAVA_HOME/bin:$PATH"
export LD_LIBRARY_PATH=/usr/lib32:/usr/lib:/usr/local/lib:/usr/local/cuda/lib64:/usr/lib/cuda/extras/CUPTI/lib64:$LD_LIBRARY_PATH
export PATH=$PATH:/opt/google-cloud-sdk/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Golang envs
export GOPATH=$HOME/gopath
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOROOT/bin
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Kubernetes and Helm autocompletion
if [ -n "$ZSH_VERSION" ]; then
   source <(kubectl completion zsh)
   source <(helm completion zsh)
elif [ -n "$BASH_VERSION" ]; then
   source <(kubectl completion bash)
   source <(helm completion bash)
fi

# Pyenv
export PATH="/home/mauri870/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Rust's Cargo
source $HOME/.cargo/env

# taskwarrior aliases
alias tm='task modify'
alias te='task edit'
alias tl='task list'
alias ta='task add'
alias td='task done'

# general aliases
alias ls="exa"
alias perm="stat -c '%a'"
alias ll="exa -l"
alias smv="mv -i"
alias cb="sed -r \"s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g\" | xclip -selection clipboard"
alias weather='curl -s wttr.in | sed -n "1,7p"'
alias con="$EDITOR $HOME/.config/i3/config"
alias comp="$EDITOR $HOME/.config/compton.conf"
alias fixit='sudo rm -f /var/lib/pacman/db.lck'
alias mirrors='rankmirrors -n 6 /etc/pacman.d/mirrorlist'
alias printer='system-config-printer'
alias update='yay -Syu'
alias qemu='qemu-system-x86_64'
alias screencast='ffscreencast -c1 -a1 --oargs="-c:a flac" --cargs="-video_size 320x180"'

# useful functions
mcd() { mkdir -p $1; cd $1 }
cdl() { cd $1; ls }
bak() { cp "$1"{,.bak}; }
