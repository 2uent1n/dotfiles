# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

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
# --describe adds comments with package descriptions
# --no-cargo excludes Rust crates installed via cargo
brew bundle dump --global --force --describe --no-cargo
chezmoi re-add
```
