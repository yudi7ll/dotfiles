local wezterm = require("wezterm")
local act = wezterm.action

return {
	disable_default_key_bindings = true,
	keys = {
		-- Only keep essential keybindings that don't conflict with tmux
		{ key = "c", mods = "SUPER", action = wezterm.action.CopyTo("ClipboardAndPrimarySelection") },
		{ key = "v", mods = "SUPER", action = wezterm.action.PasteFrom("Clipboard") },
		{ key = "C", mods = "CTRL", action = wezterm.action.CopyTo("ClipboardAndPrimarySelection") },
		{ key = "V", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
		-- Add any other essential keybindings here, but keep it minimal
		-- to avoid conflicts with tmux keybindings
	},
}
