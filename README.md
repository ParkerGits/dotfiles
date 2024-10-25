# dotfiles

## Getting Started

Clone this repository into `~/dotfiles`. Install the dependencies below and run `stow .` in `~/dotfiles`. You may need to comment some lines from `.zshrc` if you aren't using certain software (e.g., `nvm`, `golang`, or `ghcup`). Once the `.zshrc` loads without fail,

- run `sourcetmux` to load tmux plugins,
- press `prefix` + `I` to install tmux plugins,
- and open Neovim (`nvim`) to install Neovim plugins

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

## Dependencies

- [Homebrew]("https://brew.sh/")
- tmux Plugin Manager `git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm`

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

### Themes

Run `git submodule update --init --recursive` to install themes.

#### bat

Once themes are installed, run `bat cache --build` to load the theme.
