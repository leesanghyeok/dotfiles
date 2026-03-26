# dotfiles

My personal dotfiles managed with symlinks.

## Installation

```bash
git clone https://github.com/leesanghyeok/dotfiles.git ~/dotfiles
cd ~/dotfiles
bash install.sh
```

The script will:
- Create symlinks from `~` to `~/dotfiles`
- Back up any existing files as `*.bak` before overwriting

## Contents

### `.zshrc`

**Framework:** Oh My Zsh

**Theme:** Powerlevel10k (via Homebrew)

**Plugins:** git, zsh-autosuggestions, zsh-syntax-highlighting, zsh-completions, extract, copypath, copyfile, docker, kubectl

**Tools:** zoxide, thefuck, fzf

**Local overrides:** `~/.zshrc.local` (gitignored, machine-specific)

---

### `.tmux.conf`

**Theme:** Catppuccin (dark)

**Key bindings:**

| Key | Action |
|-----|--------|
| `prefix + \|` | Split pane horizontally |
| `prefix + -` | Split pane vertically |
| `prefix + h/j/k/l` | Navigate panes (vim-style) |
| `prefix + H/J/K/L` | Resize panes |
| `prefix + C-h/C-l` | Switch windows |
| `prefix + r` | Reload config |

**Copy mode** (`prefix + [`):

| Key | Action |
|-----|--------|
| `v` | Begin selection |
| `C-v` | Toggle rectangle selection |
| `y` | Copy to clipboard (pbcopy) |

**Other:**
- Mouse support enabled
- Vi mode enabled
- Windows numbered from 1
- ESC delay removed (Neovim-friendly)
- `prefix + Ctrl-s` as secondary prefix
