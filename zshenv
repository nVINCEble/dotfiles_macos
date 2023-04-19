# Commented out because echo was causing alfred 1password to not show items in search
#echo 'Hello from .zshenv'

function exists() {
  command -v "$1" >/dev/null 2>&1
}