# Check for homebrew and install it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install homebrew packages from Brewfile
brew tap homebrew/bundle
brew bundle

# Remove and symlinks dotfiles
rm -rf $HOME/.gemrc
ln -s $PWD/.gemrc $HOME/.gemrc
rm -rf $HOME/.gitconfig
ln -s $PWD/.gitconfig $HOME/.gitconfig
rm -rf $HOME/.psqlrc
ln -s $PWD/.psqlrc $HOME/.psqlrc

# Add gh alias
gh alias set open 'repo view -w'

# Set fish as default shell
if test $(which fish); then
  chsh -s $(which fish)
fi

# Set macOS preferences
source .macos
