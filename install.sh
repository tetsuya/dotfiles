#!/usr/bin/env bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Check for Homebrew and install it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install Homebrew packages from Brewfile
brew bundle

# Remove and symlink dotfiles
rm -rf $HOME/.gitconfig && ln -s $DOTFILES_DIR/.gitconfig $HOME/.gitconfig

# Add gh alias
gh alias set open 'repo view -w' 2>/dev/null || echo "gh not authenticated, skipping alias"

# Set fish as default shell
if test $(which fish); then
  echo $(which fish) | sudo tee -a /etc/shells
  chsh -s $(which fish)
fi

# Set up fish configuration
FISH_BIN=$(which fish)
mkdir -p $HOME/.config/fish

$FISH_BIN -c 'curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher'

rm -rf $HOME/.config/fish/fish_plugins && ln -s $DOTFILES_DIR/fish_plugins $HOME/.config/fish/fish_plugins
rm -rf $HOME/.config/fish/config.fish  && ln -s $DOTFILES_DIR/config.fish  $HOME/.config/fish/config.fish

# Set up Ghostty configuration
mkdir -p $HOME/.config/ghostty
rm -rf $HOME/.config/ghostty/config.ghostty && ln -s $DOTFILES_DIR/config.ghostty $HOME/.config/ghostty/config.ghostty

$FISH_BIN -c 'fisher update'

# Set macOS preferences
source "$DOTFILES_DIR/.macos"
