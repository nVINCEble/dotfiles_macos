# Commented out because echo was causing alfred 1password to not show items in search
# echo 'Hello from .zshenv'

# Check for existence of passed in command but discards all output whether successful or erroneous
function exists() {
  # 'command -v' is similar to 'which'
  # https://stackoverflow.com/questions/592620/how-can-i-check-if-a-program-exists-from-a-bash-script/677212#677212
  # $1 is the first argument passed to the function
  # /dev/null is a special file that discards all input
  command -v "$1" >/dev/null 2>&1

  # Same as above, but written more explicitly
  # 1 is stdout and 2 is stderr
  # command -v "$1" 1>/dev/null 2>/dev/null

}