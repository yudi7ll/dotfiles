# Tmux Configuration Codemap

**Last Updated:** 2026-04-25
**Entry Points:** tmux.conf

## Architecture

```
tmux.conf
├── Basic Settings
├── Pane Navigation (no-prefix)
├── Copy-mode Navigation
├── Pane Resizing
├── Window Management
├── Configuration Management
└── Plugin Configuration
```

## Key Modules

| Module | Purpose | Key Bindings |
|-------|---------|--------------|
| Basic Settings | Mouse support, terminal colors, window/pane indexing | `set -g mouse on`, `set -g default-terminal` |
| Pane Navigation | Neovim-like pane movement without prefix | `M-H`, `M-J`, `M-K`, `M-L` |
| Copy-mode Navigation | Vi-style copy mode with edge detection | Copy-mode table bindings |
| Pane Resizing | Resize panes with repeatable bindings | `H`, `J`, `K`, `L` |
| Window Management | Window navigation and splitting | `C-H`, `C-L`, `M-h`, `M-l` |
| Configuration Management | Reload configuration | `bind r` |
| Plugin Configuration | TPM plugin management | `@plugin` declarations |

## Data Flow

1. User initiates keybinding
2. Tmux checks for edge conditions using `if-shell` commands
3. Navigation occurs only when not at pane edge
4. Copy mode allows for text selection and navigation

## External Dependencies

- tmux-plugins/tpm - Tmux Plugin Manager
- tmux-plugins/tmux-sensible - Sensible defaults
- dracula/tmux - Dracula theme

## Related Areas

- [INDEX.md](INDEX.md) - Repository overview