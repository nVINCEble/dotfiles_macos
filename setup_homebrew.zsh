#!/usr/bin/env zsh

echo "\n<<< Starting homebrew setup >>>\n"

if exists brew; then
  echo "Homebrew already installed, skipping..."
else
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle --verbose