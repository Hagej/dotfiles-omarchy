# If not running interactively, don't do anything (leave this at the top of this file)
[[ -o interactive ]] || return

# Source modular Zsh configuration
source ~/.config/zsh/source

# Google Cloud SDK PATH and shell completion
if [ -f '/home/hage/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/hage/Downloads/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/home/hage/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/hage/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Environment base
if [ -f "$HOME/.local/share/../bin/env" ]; then . "$HOME/.local/share/../bin/env"; fi

# Added by Antigravity CLI installer
export PATH="/home/hage/.local/bin:$PATH"
