echo 'Hello from .zshrc'

# Set Variables
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat

# Create Aliases
alias ls='exa -laFh --git'
alias exa='exa -laFh --git'
alias man='batman'
alias trail='bat <<<${(F)path}'

# Brew Aliases
alias ,bi='brew install'
alias ,bic='brew install --cask'
alias ,bu='brew uninstall'
alias ,bs='brew search'
alias ,bup='brew update && brew upgrade && brew cleanup'
alias ,bl='brew list -l'
alias ,bbd='brew bundle dump --force --describe'

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
