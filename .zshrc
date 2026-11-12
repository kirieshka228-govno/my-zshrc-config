# ╭────────────────────────────────────────────────────────────╮
# │                       My Zsh config                        │
# ╰────────────────────────────────────────────────────────────╯

fastfetch

# ╭────────────────────────────────────────────────────────────╮
# │                      Instant prompt                        │
# ╰────────────────────────────────────────────────────────────╯ 
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



# ╭────────────────────────────────────────────────────────────╮
# │                     Oh my Zsh settings                     │
# ╰────────────────────────────────────────────────────────────╯
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  sudo
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh



# ╭────────────────────────────────────────────────────────────╮
# │                           Aliases                          │
# ╰────────────────────────────────────────────────────────────╯
eval "$(zoxide init zsh --cmd cd)"

export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'

source <(fzf --zsh)

alias upg='yay -Syu'
alias install='yay -S'
alias unins='yay -Rns'
alias search='yay -Ss'
alias ..='cd ..'
alias ...='cd ../..'
alias cdi='zi'
alias rgi='rg -i'
alias rgl='rg -l'
alias ls='eza --icons=auto --group-directories-first'
alias l='eza -lah --icons=auto --group-directories-first'
alias ll='eza -lh --icons=auto --group-directories-first'
alias la='eza -lah --icons=auto --group-directories-first'
alias lt='eza --tree --level=2 --icons=auto --group-directories-first'
alias lta='eza --tree --level=2 -a --icons=auto --group-directories-first'



# ╭────────────────────────────────────────────────────────────╮
# │                            Misc                            │
# ╰────────────────────────────────────────────────────────────╯
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
