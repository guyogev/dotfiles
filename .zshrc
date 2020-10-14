# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/gyogev/.oh-my-zsh"

# Zsh config
ZSH_THEME="muse" # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
plugins=(git history asdf) # https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
source $ZSH/oh-my-zsh.sh

# Load aliases
source ~/.aliases

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi
