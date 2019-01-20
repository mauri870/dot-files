# General envs
# export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"
export BROWSER=qutebrowser
export EDITOR=vim
export TERM=rxvt-unicode-256color
export PATH=$PATH:/usr/local/cuda/bin
export PATH=$PATH:~/.config/scripts
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export PATH="$JAVA_HOME/bin:$PATH"
export LD_LIBRARY_PATH=/usr/lib32:/usr/lib:/usr/local/lib:/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export PATH=$PATH:/opt/google-cloud-sdk/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Golang envs
export GOPATH=$HOME/gopath
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOROOT/bin
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Qt envs
export QT_VERSION=5.8.0
export QT_DIR=$HOME/Qt/5.8
export QT_STUB=false
export QT_DEBUG=false

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

# taskwarrior aliases
alias tm='task modify'
alias tl='task list'
alias ta='task add'
alias td='task done'

# general aliases
alias ls="exa"
alias ll="exa -l"
alias cb="sed -r \"s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g\" | xclip -selection clipboard"
alias weather='curl -s wttr.in | sed -n "1,7p"'
alias minbacklight='sudo su -c "echo 1 >/sys/class/backlight/intel_backlight/brightness"'
alias maxbacklight='sudo su -c "echo 907 >/sys/class/backlight/intel_backlight/brightness"'
alias con="$EDITOR $HOME/.config/i3/config"
alias comp="$EDITOR $HOME/.config/compton.conf"
alias fixit='sudo rm -f /var/lib/pacman/db.lck'
alias mirrors='pacman-mirrors --fasttrack && sudo pacman -Syyu'
alias printer='system-config-printer'
alias update='yay -Syu'
alias qemu='qemu-system-x86_64'
alias screencast='ffscreencast -c1 -a1 --oargs="-c:a flac" --cargs="-video_size 320x180"'

# torch installation
. /home/mauri870/torch/install/bin/torch-activate
