#!/usr/bin/env zsh

echo "\n<<< Starting zsh setup >>>\n"

if grep -Fxq "/opt/homebrew/bin/zsh" '/etc/shells'; then
  echo "/opt/homebrew/bin/zsh already added to /etc/shells, skipping..."
else
  echo "Enter superuser (sudo) password to edit /etc/shells"
  echo "/opt/homebrew/bin/zsh" | sudo tee -a /etc/shells >/dev/null
fi

if [ "$SHELL" = '/opt/homebrew/bin/zsh' ]; then
  echo '$SHELL is already /opt/homebrew/bin/zsh'
else
  echo "Enter user password to change login shell"
  chsh -s '/opt/homebrew/bin/zsh'
fi

# Would rather use homebrew version of zsh, but it doesn't seem to work
if sh --version | grep -q zsh; then
  echo '/private/var/select/sh already linked to /bin/zsh'
else
  echo "Enter superuser (sudo) password to symlink sh to zsh"
  sudo ln -sfv /bin/zsh /private/var/select/sh
fi