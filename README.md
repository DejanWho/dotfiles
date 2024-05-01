# dotfiles

Current dot files configurations.

## FireFox configurations

1. Find profile directory of your firefox. You can look it up via Help -> More trubleshooting information. There you can find the profile directory.
2. With in the profile directory create a folder named chrome and there copy the userChrome.css.
3. If this is not enough you have to enable the setting ' toolkit.legacyUserProfileCustomizations.stylesheets' by setting it true in the about:config.

## Package Managers

- for tmux: https://github.com/tmux-plugins/tpm
- for fish: https://github.com/jorgebucaran/fisher

### Fish packages

#### Tokyo Night theme

```shell
fisher install axkirillov/tokyonight-fish
```
Add this to the config.fish to enable the theme:
```shell
theme_tokyonight storm
```

#### Install fishline

```shell
fisher install jorgebucaran/fishline
```
## Install alacritty themes
```shell
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
```


## Dependencies
- fzf
- ripgrep
- lazygit
- bat
- exa
- fd

