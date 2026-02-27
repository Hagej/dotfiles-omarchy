#!/bin/bash

# Exit on error
set -e

# Change to the dotfiles directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIR"

echo "Applying dotfiles from $DIR..."

if ! command -v stow &>/dev/null; then
  echo "Installing stow..."
  sudo pacman -S --noconfirm stow
fi

if ! command -v keyd &>/dev/null; then
  echo "Installing keyd..."
  sudo pacman -S --noconfirm keyd
fi

echo "Stowing home directory configs..."
stow .

if [ -d "keyd" ]; then
  echo "Stowing system configs (keyd)..."
  sudo stow -v -t / keyd
fi

if command -v systemctl &>/dev/null; then
  echo "Restarting keyd service..."
  sudo systemctl enable --now keyd
  sudo keyd reload
fi

echo ""
echo "All done! Dotfiles have been applied."
