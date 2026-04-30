# Backend Codemap

**Last Updated:** 2026-04-25
**Entry Points:** ~/.config/tmux/tmux.conf

## Architecture

```
tmux.conf
├── Basic Settings
│   ├── Prefix Configuration (lines 3-6)
│   ├── Mouse Support (line 9)
│   ├── Window/Pane Indexing (lines 11-13)
│   └── Terminal Colors (lines 15-17)
├── Keybinding Management
│   ├── Conflict Resolution (lines 22-30)
│   ├── Pane Navigation (lines 35-38)
│   ├── Copy Mode Navigation (lines 43-46)
│   ├── Pane Resizing (lines 49-52)
│   ├── Window Splitting (lines 55-56)
│   └── Window Navigation (lines 59-60)
├── Configuration Management
│   └── Reload Configuration (line 63)
├── Copy Mode Settings (lines 66-69)
└── General Settings (lines 71-87)
    ├── Status and History (lines 71-73)
    ├── Window Formatting (lines 74-80)
    ├── Automatic Renaming (lines 82-84)
    └── Pane Focus Hook (line 87)
```

## Key Modules

| Module | Purpose | Exports | Dependencies |
|--------|---------|---------|--------------|
| Basic Settings | Core tmux configuration | Settings | None |
| Keybinding Management | Navigation and control bindings | Keybindings | Basic Settings |
| Copy Mode Settings | Text selection and copying | Copy mode bindings | None |
| General Settings | Status, formatting, and behavior | Window settings | None |

## Configuration Structure

The tmux.conf file is organized into logical sections:

1. **Prefix Configuration** (lines 3-6)
   - Sets the prefix key to `Ctrl-s`
   - Unbinds the default `Ctrl-b` prefix
   - Binds `Ctrl-s` to send the prefix

2. **Mouse Support** (line 9)
   - Enables mouse support for pane selection and resizing

3. **Window and Pane Indexing** (lines 11-13)
   - Sets base index for windows and panes to 1

4. **Terminal Colors** (lines 15-17)
   - Configures 256-color terminal support

5. **Keybinding Conflict Resolution** (lines 22-30)
   - Removes existing bindings that could conflict with custom keys
   - Covers both normal and copy-mode keybindings

6. **Pane Navigation** (lines 35-38)
   - Uses Alt+H/J/K/L for navigation with edge detection
   - Edge detection prevents navigation when at window boundary

7. **Copy-Mode Navigation** (lines 43-46)
   - Same navigation bindings for copy mode with edge detection

8. **Pane Resizing** (lines 49-52)
   - Uses Prefix+H/J/K/L for resizing panes by 5 cells

9. **Window Splitting** (lines 55-56)
   - Ctrl+H for horizontal split
   - Ctrl+L for vertical split

10. **Window Navigation** (lines 59-60)
    - Alt+h/l for previous/next window navigation

11. **Configuration Reload** (line 63)
    - Prefix+r to reload configuration

12. **Copy Mode** (lines 66-69)
    - vi-style copy mode with v/y/r bindings

13. **General Settings** (lines 71-87)
    - Status interval, history limit, window renumbering
    - Status position at top
    - Window formatting and automatic renaming

## Data Flow

Configuration is loaded once at tmux startup. Changes require manual reload via Prefix+r.
Settings flow from configuration to runtime tmux behavior.

## External Dependencies

- tmux (v2.0+) - Terminal multiplexer

## Related Areas

- [INDEX.md](INDEX.md) - Overview of all areas
- [integrations.md](integrations.md) - Plugin system