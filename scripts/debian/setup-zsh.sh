#!/bin/bash

# Exit immediately if any command fails
set -e

# Install Zsh if not already installed
if ! command -v zsh &> /dev/null; then
  echo "Installing Zsh..."
  sudo apt install zsh -y
else
  echo "Zsh is already installed, skipping."
fi

# Make Zsh the default shell
if [ "$SHELL" != "$(which zsh)" ]; then
  echo "Changing default shell to Zsh..."
  chsh -s "$(which zsh)"
else
  echo "Zsh is already the default shell, skipping."
fi

echo "Done! Exit the current terminal and open a new one to start using Zsh."
