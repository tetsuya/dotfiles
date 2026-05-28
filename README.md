# tetsuya/dotfiles

Sets up a new Mac with Homebrew packages, fish shell, and macOS preferences.

## Install

```sh
git clone https://github.com/tetsuya/dotfiles.git && cd dotfiles
sh install.sh
```

This will:
- Install Homebrew if not present
- Install packages and apps via `Brewfile`
- Set fish as the default shell and configure it
- Symlink `.gitconfig`
- Apply macOS preferences

## After install

Start a new terminal session for fish to take effect, then authenticate:

```sh
gh auth login
```
