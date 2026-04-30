#!/bin/bash
# Check if session name was manually set
CURRENT_SESSION=$(tmux display-message -p '#S' 2>/dev/null)
SESSION_RENAME_FLAG="/tmp/tmux_session_renamed_${CURRENT_SESSION}"

# Check if we've manually renamed this session before
if [[ -f "$SESSION_RENAME_FLAG" ]]; then
    # Session was manually renamed, don't auto-rename
    exit 0
else
    # Session was not manually renamed, proceed with auto-rename
    PANE_PATH=$(tmux display-message -p '#{pane_current_path}' 2>/dev/null)
    if [[ "$PANE_PATH" = */Wallex/wallex* ]]; then
        tmux rename-session "Wallex"
    else
        tmux rename-session "$(basename "$PANE_PATH")"
    fi
fi