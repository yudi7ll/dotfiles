# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a minimalist tmux configuration directory that provides neovim-like keybindings for pane navigation and management.

## Common Development Tasks

### Configuration Management
- The main configuration file is `tmux.conf`
- Configuration includes neovim-like keybindings for pane navigation (Alt-H,J,K,L)
- Mouse support is enabled
- Uses prefix Ctrl-s (configured in the file)

### Key Features
1. Neovim-like keybindings for pane navigation:
   - `Alt-H` - Move to left pane (no-prefix)
   - `Alt-J` - Move to bottom pane (no-prefix)
   - `Alt-K` - Move to top pane (no-prefix)
   - `Alt-L` - Move to right pane (no-prefix)

2. Neovim-like keybindings for pane resizing:
   - `prefix H` - Resize pane left by 5 cells
   - `prefix J` - Resize pane down by 5 cells
   - `prefix K` - Resize pane up by 5 cells
   - `prefix L` - Resize pane right by 5 cells

3. Window management:
   - `Ctrl-H` - Split window horizontally
   - `Ctrl-L` - Split window vertically
   - `Alt-h` - Switch to previous window
   - `Alt-l` - Switch to next window

4. Configuration management:
   - `prefix r` - Reload configuration file

### Directory Structure
- `tmux.conf` - Main configuration file
- `README.md` - User documentation
- `.claude/docs/codemaps/` - Developer documentation
  - `INDEX.md` - Main codemap and overview
  - `backend.md` - Configuration structure details
  - `integrations.md` - Plugin system documentation
- `plugins/` - TPM plugin directory

### Code Architecture
The configuration follows a minimalist approach with neovim-like keybindings to provide a consistent user experience between tmux and neovim. The configuration is organized in logical sections:

1. Basic settings (mouse support, terminal colors)
2. Pane navigation keybindings (Alt-H,J,K,L)
3. Pane resizing keybindings (H,J,K,L with prefix)
4. Window splitting shortcuts
5. Configuration reloading
6. Copy mode settings
7. Plugin management

### Common Tasks
1. Adding new keybindings: Follow the existing pattern of `bind` commands
2. Modifying existing settings: Edit the appropriate section in tmux.conf
3. Reloading configuration: Use `prefix r` or run `tmux source-file ~/.config/tmux/tmux.conf`
4. Testing changes: After making changes, reload the configuration and test functionality

### Testing
- Verify keybindings work by testing each navigation and resize command
- Check that mouse support works for pane selection and resizing
- Confirm configuration reloads properly with `prefix r`