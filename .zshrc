# env
export ZSH=$HOME/.oh-my-ZSH
export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8
export MANPATH="/usr/local/man:$MANPATH"
export UPDATE_ZSH_DAYS=30

# zsh config
ZSH_THEME="dracula"

# plugins
plugins=(git nvm osx)

# augment PATH
PATH="$PATH:/usr/local/bin"

# includes
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# cusotmize prompt
RPROMPT='$(whoami) %{$fg_bold[green]%}node-$(node -v)%{$reset_color%}'

# aliases
alias dot='/usr/bin/git --git-dir=$HOME/code/dotfiles --work-tree=$HOME'
alias watch='browser-sync start --open=false -p localhost:9000 -f "**/*.css" "**/*.html" "**/*.js" "**/*.scss"'
# alias gulp='node $(find . -name "gulpfile.js" -not -path "./node_modules/*" | head -n1)'

# when Android
if [[ -d "$HOME/Library/Android" ]]; then
  PATH="$PATH:$HOME/Library/Android/sdk/tools"
  PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
  export ANDROID_HOME="$HOME/Library/Android/sdk"
fi

# when sbt
if [[ -f $(which sbt) ]]; then
  export SBT_OPTS="${SBT_OPTS} -Dsbt.jse.engineType=Node -Dsbt.jse.command=$(which node)"
fi

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
if [[ -d "$HOME/.sdkman/bin" ]]; then
  export SDKMAN_DIR="$HOME/.sdkman"
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi
