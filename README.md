# dotfiles

## Getting Started

1. Clone this repository into `~/dotfiles`.
2. Run `git submodule update --init --recursive` to install submodules
3. Install the dependencies below and run `stow .` in `~/dotfiles`. You may need to comment some lines from `.zshrc` if you aren't using certain software (e.g., `nvm`, `golang`, or `ghcup`). Once the `.zshrc` loads without fail,
4. Run `bat cache --build` to load the `bat` and `git-delta` themes
5. Run `sourcetmux` to load tmux plugins
6. Press `Ctrl+a` + `I` inside a tmux session to install tmux plugins
7. Open Neovim (`nvim`) to install Neovim plugins

## Dependencies

- [Homebrew]("https://brew.sh/")
- [oh-my-zsh](https://ohmyz.sh/)
- [Volta](https://volta.sh/)
- Node `volta install node`

### Casks

- Alacritty `brew install alacritty`
- FiraCode Nerd Font `brew install font-fira-code-nerd-font`
- Rectangle `brew install rectangle`
- Raycast `brew install raycast`

### Formulae

- stow `brew install stow`
- zsh `brew install zsh`
- eza `brew install eza`
- ripgrep `brew install ripgrep`
- Neovim `brew install neovim`
- tmux `brew install tmux`
- Starship `brew install starship`
- Nerdfetch `brew install nerdfetch`
- zsh-autosuggestions `brew install zsh-autosuggestions`
- fzf `brew install fzf`
- fd `brew install fd`
- luarocks `brew install luarocks`
- less `brew install less` (most recent version, dependency of `bat`)
- bat `brew install bat`
- git-delta `brew install git-delta`
- glow `brew install glow`
- go `brew install go`

### Obsidian

For synchronized Obsidian config, copy the `.obsidian` file to the root of your `Obsidian Vault`

```bash
mv ~/.obsidian ~/Documents/Obsidian\ Vault/.obsidian
```

### git-delta

Add the following to `~/.gitconfig` to use `git-delta` (per their [docs](https://dandavison.github.io/delta/get-started.html)):

```toml
[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[include]
    path = ~/.config/delta/themes/catppuccin/catppuccin.gitconfig

[delta]
    # delta detects terminal colors automatically; set one of these to disable auto-detection
    # dark = true
    # light = true
    features = catppuccin-mocha
    side-by-side=true

[merge]
    conflictstyle = diff3
```
