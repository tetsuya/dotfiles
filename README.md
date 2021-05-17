# tetsuya/kochiku

## Usage

```
$ git clone https://github.com/tetsuya/kochiku.git && cd kochiku
$ sh bootstrap.sh
```

## Sync other files and settings

### VS Code Settings

* Login using GitHub account. See [Settings Sync in Visual Studio Code](https://code.visualstudio.com/docs/editor/settings-sync) more details.

### fish history

* Copy `~/.local/share/fish/fish_history` to the new machine. See [history file location · Issue #862 · fish-shell/fish-shell](https://github.com/fish-shell/fish-shell/issues/862) for more details.

## Authentications

### Authenticate with a GitHub account

```
$ gh auth login
```

### Authenticate with a Heroku account

```
$ heroku login
```
