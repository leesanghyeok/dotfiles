export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# ── PATH ────────────────────────────────────────
export PATH="$PATH:$HOME/.local/bin"

# ── Local overrides (gitignored) ────────────────
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# ── Starship ────────────────────────────────────
eval "$(starship init zsh)"
