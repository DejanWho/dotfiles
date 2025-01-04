# dotfiles

Current dot files configurations.

## FireFox configurations

1. Find profile directory of your firefox. You can look it up via Help -> More trubleshooting information. There you can find the profile directory.
2. With in the profile directory create a folder named chrome and there copy the userChrome.css.
3. If this is not enough you have to enable the setting ' toolkit.legacyUserProfileCustomizations.stylesheets' by setting it true in the about:config.

## Package Managers


## zsh packages
Create following folders:
```shell
mkdir .config/zsh
```

and

```shell
mkdir .config/zsh/plugins
```

Clone this packages into the plugins folder:
```shell
git clone https://github.com/romkatv/powerlevel10k.git
git clone https://github.com/zdharma/fast-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-history-substring-search.git
git clone https://github.com/jeffreytse/zsh-vi-mode.git
```
```

Add this content to the file `/etc/zsh/zshenv`
```shell
if [[ -z "$XDG_CONFIG_HOME" ]] 
then
	export XDG_CONFIG_HOME="$HOME/.config/"
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]] 
then
	export ZDOTDIR="$XDG_CONFIG_HOME/zsh/"
fi
```

## Dependencies
- fzf
- ripgrep
- lazygit
- bat
- exa
- fd

