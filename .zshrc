# env
export ZSH=$HOME/.oh-my-zsh
export LANG=en_US.UTF-8
export MANPATH="/usr/local/man:$MANPATH"
export UPDATE_ZSH_DAYS=30

# zsh config
ZSH_THEME="dracula"

# plugins
plugins=(git nvm osx)

# augment PATH
PATH="$PATH:/usr/local/bin"

if [[ -d "$HOME/Library/Android" ]]; then
  PATH="$PATH:$HOME/Library/Android/sdk/tools"
  PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
  export ANDROID_HOME="$HOME/Library/Android/sdk"
fi

# includes
source $HOME/.oh-my-zsh/oh-my-zsh.sh

# cusotmize prompt
RPROMPT='$(whoami) %{$fg_bold[green]%}node-$(node -v)%{$reset_color%}'

# aliases
alias gulp='node $(find . -name "gulpfile.js" -not -path "./node_modules/*" | head -n1)'
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias config='/usr/bin/git --git-dir=$HOME/code/dotfiles/repo --work-tree=$HOME'

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
if [[ -d "$HOME/.sdkman/bin" ]]; then
  export SDKMAN_DIR="$HOME/.sdkman"
  source "$HOME/.sdkman/bin/sdkman-init.sh"
fi
