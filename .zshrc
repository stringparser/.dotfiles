# env
export ZSH=$HOME/.oh-my-ZSH
export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8
export MANPATH="/usr/local/man:$MANPATH"
export UPDATE_ZSH_DAYS=30

# zsh config
ZSH_THEME="dracula"

# plugins
plugins=(git nvm)

# augment PATH
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/Library/Python/3.6/bin:$PATH"
export PATH="$(echo /usr/local/opt/*/{sbin,bin} | xargs | tr ' ' ':'):$PATH"

export EDITOR=vim

# compilers
export LDFLAGS="-L/usr/local/opt/php@5.6/lib -L/usr/local/opt/sqlite/lib -L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/php@5.6/include -I/usr/local/opt/openssl/include -I/usr/local/opt/sqlite/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

# includes
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# aliases
alias dot='/usr/bin/git --git-dir=$HOME/code/dotfiles --work-tree=$HOME'
alias gls='git ls-tree --full-tree $(git rev-parse --abbrev-ref HEAD)'
alias grune='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias drune='docker rm $(docker ps -aq)'
alias openUrlIOS='xcrun simctl openurl booted'
alias openUrlAndroid='adb shell am start -a android.intent.action.VIEW -d'
alias typeTextAndroid='adb shell input text'
# alias gulp='node $(find . -name "gulpfile.js" -not -path "./node_modules/*" | head -n1)'

# phpbrew
# [[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
# phpbrew use 5.6.38

# customize prompt
RPROMPT='$(whoami) %{$fg_bold[green]%}node-$(node -v)%{$reset_color%}'
