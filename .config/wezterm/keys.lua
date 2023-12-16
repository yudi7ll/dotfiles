local wezterm = require("wezterm")
local act = wezterm.action

local function activate_pane(window, pane, pane_direction, vim_direction)
	local isViProcess = pane:get_foreground_process_name():find("n?vim") ~= nil
	if isViProcess then
		window:perform_action( -- This should match the keybinds you set in Neovim.
			act.SendKey({ key = vim_direction, mods = "CTRL" }),
			pane
		)
	else
		window:perform_action(act.ActivatePaneDirection(pane_direction), pane)
	end
end

wezterm.on("activate_pane_r", function(window, pane)
	activate_pane(window, pane, "Right", "l")
end)
wezterm.on("activate_pane_l", function(window, pane)
	activate_pane(window, pane, "Left", "h")
end)
wezterm.on("activate_pane_u", function(window, pane)
	activate_pane(window, pane, "Up", "k")
end)
wezterm.on("activate_pane_d", function(window, pane)
	activate_pane(window, pane, "Down", "j")
end)

wezterm.on("create_new_tab", function(window, pane)
	window:mux_window():spawn_tab({ cwd = wezterm.home })
end)

return {
	disable_default_key_bindings = true,
	keys = {
		{ key = "q", mods = "SUPER", action = act.QuitApplication },
		{ key = "v", mods = "SUPER", action = act.PasteFrom("Clipboard") },
		{ key = "V", mods = "CTRL", action = act.PasteFrom("Clipboard") },
		{ key = "r", mods = "SUPER", action = act.ReloadConfiguration },
		{ key = "F", mods = "CTRL", action = act.EmitEvent("create_new_tab") },
		{ key = "l", mods = "META", action = act.ActivateTabRelative(1) },
		{ key = "h", mods = "META", action = act.ActivateTabRelative(-1) },
		{ key = "1", mods = "META", action = act.ActivateTab(0) },
		{ key = "2", mods = "META", action = act.ActivateTab(1) },
		{ key = "3", mods = "META", action = act.ActivateTab(2) },
		{ key = "4", mods = "META", action = act.ActivateTab(3) },
		{ key = "5", mods = "META", action = act.ActivateTab(4) },
		{ key = "6", mods = "META", action = act.ActivateTab(5) },
		{ key = "7", mods = "META", action = act.ActivateTab(6) },
		{ key = "8", mods = "META", action = act.ActivateTab(7) },
		{ key = "9", mods = "META", action = act.ActivateTab(8) },
		{ key = "0", mods = "META", action = act.ActivateTab(9) },
		{ key = "H", mods = "CTRL", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "L", mods = "CTRL", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "h", mods = "SUPER", action = act.ActivatePaneDirection("Left") },
		{ key = "j", mods = "SUPER", action = act.ActivatePaneDirection("Down") },
		{ key = "k", mods = "SUPER", action = act.ActivatePaneDirection("Up") },
		{ key = "l", mods = "SUPER", action = act.ActivatePaneDirection("Right") },
		{ key = "U", mods = "CTRL", action = act.ScrollByPage(-1) },
		{ key = "D", mods = "CTRL", action = act.ScrollByPage(1) },
		{ key = "K", mods = "CTRL", action = act.ScrollByLine(-1) },
		{ key = "J", mods = "CTRL", action = act.ScrollByLine(1) },
		{ key = "f", mods = "SUPER", action = act.Search({ CaseInSensitiveString = "hash" }) },
	},
}
