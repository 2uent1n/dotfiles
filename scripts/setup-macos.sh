#!/bin/zsh

# Exit immediately if any command fails
set -e

# Install Homebrew (https://brew.sh) if not already installed
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # Make brew available in the current session
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install all formulae, casks, and Mac App Store apps defined in ~/.Brewfile
echo "Installing packages from Brewfile..."
brew bundle --global

# Install Oh My Zsh (https://ohmyz.sh) if not already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  # --unattended prevents Oh My Zsh from changing the default shell and starting a new session
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

# Install zsh-autosuggestions plugin (suggests commands as you type based on history)
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
  echo "Installing zsh-autosuggestions..."
  git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
fi

# Install zsh-syntax-highlighting plugin (highlights valid/invalid commands as you type)
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
  echo "Installing zsh-syntax-highlighting..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
fi

# Install Powerlevel10k theme (https://github.com/romkatv/powerlevel10k)
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
  echo "Installing Powerlevel10k..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
fi

echo "Done!"
