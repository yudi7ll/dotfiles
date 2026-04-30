# Integrations Codemap

**Last Updated:** 2026-04-25
**Entry Points:** ~/.config/tmux/tmux.conf (lines 89-101)

## Architecture

```
Plugins (TPM)
├── Plugin Manager (tpm)
│   ├── Installation (line 96)
│   ├── Updates (line 97)
│   └── Cleanup (line 98)
├── Core Plugins
│   ├── tmux-sensible (line 91)
│   ├── vim-tmux-navigator (line 92) [disabled]
│   └── dracula/tmux (line 93)
└── Plugin Configuration
    └── TPM Initialization (line 101)
```

## Key Modules

| Module | Purpose | Exports | Dependencies |
|--------|---------|---------|--------------|
| TPM | Plugin management | Plugin functions | tmux |
| tmux-sensible | Sensible defaults | Configuration settings | TPM |
| dracula/tmux | Visual theme | Theme settings | TPM |
| vim-tmux-navigator | Navigation bindings | Keybindings | TPM (disabled) |

## Plugin System

The tmux configuration uses TPM (Tmux Plugin Manager) to manage plugins:

1. **Plugin Installation** (line 96)
   - Prefix + I to install plugins

2. **Plugin Updates** (line 97)
   - Prefix + U to update plugins

3. **Plugin Cleanup** (line 98)
   - Prefix + Alt+u to remove unused plugins

4. **Core Plugins Configuration** (lines 89-93)
   - tmux-plugins/tpm - Plugin manager
   - tmux-plugins/tmux-sensible - Sensible defaults
   - vim-tmux-navigator - Navigation between vim and tmux (disabled)
   - dracula/tmux - Dracula theme

5. **TPM Initialization** (line 101)
   - Runs the TPM initialization script

## Data Flow

Plugin configuration flows from tmux.conf to TPM which loads and manages the plugins.
Plugins provide additional functionality that extends base tmux capabilities.

## External Dependencies

- TPM (Tmux Plugin Manager) - Plugin management system
- tmux-sensible - Collection of sensible defaults
- Dracula theme - Visual styling
- vim-tmux-navigator - Navigation between vim and tmux (currently disabled)

## Related Areas

- [INDEX.md](INDEX.md) - Overview of all areas
- [backend.md](backend.md) - Core configuration structure