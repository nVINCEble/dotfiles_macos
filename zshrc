echo 'Hello from .zshrc'

# Set Variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Create Aliases
# alias ls='ls -lAFh'
alias ls='exa'
alias exa='exa -laFh --git'

# Brew Aliases
alias ,bi='brew install'
alias ,bic='brew install --cask'
alias ,bu='brew uninstall'
alias ,bs='brew search'
alias ,bup='brew update && brew upgrade && brew cleanup'
alias ,bl='brew list -l'

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Locations to $PATH Variable
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

# Use ZSH Plugins
