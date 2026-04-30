# Tmux Configuration Repository Codemap

**Last Updated:** 2026-04-25

## Overview

This repository contains a minimalist tmux configuration with neovim-like keybindings for pane navigation and management. The configuration provides a consistent user experience between tmux and neovim with intuitive keyboard shortcuts.

## Key Features

1. Neovim-like keybindings for pane navigation:
   - `Alt-H` - Move to left pane
   - `Alt-J` - Move to bottom pane
   - `Alt-K` - Move to top pane
   - `Alt-L` - Move to right pane

2. Pane resizing with edge detection:
   - `Prefix + H` - Resize pane left by 5 cells
   - `Prefix + J` - Resize pane down by 5 cells
   - `Prefix + K` - Resize pane up by 5 cells
   - `Prefix + L` - Resize pane right by 5 cells

3. Window management:
   - `Ctrl-H` - Split window horizontally
   - `Ctrl-L` - Split window vertically
   - `Alt-h` - Switch to previous window
   - `Alt-l` - Switch to next window

4. Configuration management:
   - `Prefix + r` - Reload configuration file

## Architecture

```
tmux/
├── tmux.conf              # Main configuration file
├── plugins/               # TPM plugin directory
│   ├── tpm/               # Tmux Plugin Manager
│   ├── tmux-sensible/     # Sensible defaults
│   ├── vim-tmux-navigator/ # Vim-tmux navigation (disabled)
│   └── tmux/               # Dracula theme
└── docs/
    └── codemaps/           # Code documentation
        ├── INDEX.md       # This file
        ├── backend.md     # Configuration structure
        └── integrations.md # Plugin integrations
```

## Entry Points

- Main configuration: `~/.config/tmux/tmux.conf`
- Plugin manager: `~/.config/tmux/plugins/tpm/tpm`

## Related Documentation

- [Backend Codemap](backend.md) - Configuration structure details
- [Integrations Codemap](integrations.md) - Plugin system and integrations