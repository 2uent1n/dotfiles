# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## Getting started

1. (macOS-only) Install [Homebrew](https://brew.sh):

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install and init chezmoi:

```sh
# macOS
brew install chezmoi

# Debian (double-check official docs)
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- -b $HOME/.local/bin

# Init chezmoi by cloning the dotfiles repository
chezmoi init 2uent1n
```

3. Run the setup script(s) to install packages and plugins:

```sh
# macOS
~/.local/share/chezmoi/scripts/setup-macos.sh

# Debian (WIP)
~/.local/share/chezmoi/scripts/debian/setup-zsh.sh
~/.local/share/chezmoi/scripts/debian/setup-main.sh
# At this point the PATH is not properly configured yet, so we temporarily add the local bin to the PATH
PATH="$HOME/.local/bin:$PATH"
```

4. Check the dotfiles diff and apply

```sh
chezmoi diff
chezmoi apply
```

## Adding a new file

```sh
chezmoi add ~/.some-config
```

## Editing dotfiles

```sh
chezmoi edit ~/.some-config          # edit the source version
chezmoi edit --apply ~/.some-config  # edit and apply immediately
chezmoi edit --watch ~/.some-config  # edit and apply on save
```

Or edit files directly in `$HOME` and re-add them:

```sh
chezmoi re-add             # re-add all modified managed files
chezmoi add ~/.some-config # re-add a specific file
```

## Useful commands

```sh
chezmoi diff                      # preview pending changes
chezmoi apply                     # apply changes to $HOME
chezmoi apply --dry-run --verbose # dry run
chezmoi cd                        # open shell in source directory
```

## Updating the Brewfile

```sh
# --no-cargo excludes Rust crates installed via cargo
brew bundle dump --global --force --no-cargo --no-go
chezmoi re-add
```
