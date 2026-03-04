#!/usr/bin/env sh

set -eu

# Come back and do vim!
PACKAGES="shell git tmux wezterm vim"


if ! command -v stow >/dev/null 2>&1; then
  echo "Error: 'stow' is not installed."
  echo "Install with: brew install stow"
  exit 1
fi

# Stow assumes HOME is the direct parent, so we
# explicitly pass it instead.
echo ""
stow --verbose=1 -t $HOME --dotfiles -n $PACKAGES

echo ""
while true; do
  printf "Continue with symlinks? (Y/n): "
  IFS= read -r yn

  case "$yn" in
    ""|[Yy]*)
      echo "Applying changes."
      break;;
    [Nn]*)
      echo "Exiting without changes."
      exit 0;;
    *)
      echo "Please answer yes or no.";;
  esac
done

stow -t $HOME --dotfiles $PACKAGES
