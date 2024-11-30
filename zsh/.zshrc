# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config//zsh//.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.config//zsh//.histfile
HISTSIZE=110000
SAVEHIST=100000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/dejanwho/.config//zsh//.zshrc'

[ -f "${ZDOTDIR}/aliasrc" ] && source "${ZDOTDIR}/aliasrc"
[ -f "${ZDOTDIR}/optionrc" ] && source "${ZDOTDIR}/optionrc"
[ -f "${ZDOTDIR}/pluginrc" ] && source "${ZDOTDIR}/pluginrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[OA' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[OB' history-substring-search-down

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dejanwho/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dejanwho/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/dejanwho/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/dejanwho/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.config//zsh//.p10k.zsh.
[[ ! -f ~/.config//zsh//.p10k.zsh ]] || source ~/.config//zsh//.p10k.zsh
