#!/usr/bin/env bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$DOTFILES/$1"
  local dst="$HOME/$1"

  if [ ! -e "$src" ]; then
    echo "skip: $src not found"
    return
  fi

  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    echo "backup: $dst -> $dst.bak"
    mv "$dst" "$dst.bak"
  fi

  ln -sf "$src" "$dst"
  echo "linked: $dst -> $src"
}

link_config() {
  local src="$DOTFILES/$1"
  local dst="$HOME/$1"

  if [ ! -e "$src" ]; then
    echo "skip: $src not found"
    return
  fi

  mkdir -p "$(dirname "$dst")"

  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    echo "backup: $dst -> $dst.bak"
    mv "$dst" "$dst.bak"
  fi

  ln -sf "$src" "$dst"
  echo "linked: $dst -> $src"
}

link .zshrc
link .p10k.zsh
link .gitconfig
link .tmux.conf

echo ""
echo "Done!"
echo "  Reload shell : source ~/.zshrc"
echo "  Reload tmux  : tmux source ~/.tmux.conf"
