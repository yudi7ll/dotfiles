# Tmux Config

Minimalist tmux config with neovim-like navigation and session management.

## Keybindings
- **Alt+HJKL**: Pane navigation (edge-aware)
- **Prefix+HJKL**: Resize panes
- **Prefix+Ctrl-h/v**: Split window
- **Prefix+Ctrl+f**: New window
- **Alt+h/l**: Navigate windows
- **Prefix+r**: Reload config
- **Prefix+T**: Session manager (sesh)

## Features
- Mouse enabled
- Automatic window renaming (cwd)
- History limit: 10k lines
- Base index: 1
- Plugins: TPM, tmux-sensible, minimal theme

## Install
```bash
git clone <repo> ~/.config/tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
tmux
Prefix+I  # Install plugins
```