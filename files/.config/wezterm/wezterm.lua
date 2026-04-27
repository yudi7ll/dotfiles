local utils = require("utils")

local keymaps = require("keymaps")
local ui = require("ui")

local other_opts = {
	use_ime = true,
	-- macos_forward_to_ime_modifier_mask = 'SHIFT',
	check_for_updates_interval_seconds = 30 * 24 * 60 * 60,
}
-- Temporary workaround: Force X11 to avoid Wayland freezing issues
-- Comment this line to re-enable Wayland with OpenGL backend
-- enable_wayland = false,

-- Temporary workaround: Force X11 to avoid Wayland freezing issues
-- Comment this line to re-enable Wayland with OpenGL backend
-- enable_wayland = false,

-- Temporary workaround: Force X11 to avoid Wayland freezing issues
-- Comment this line to re-enable Wayland with OpenGL backend
-- enable_wayland = false,

return utils.merge({ other_opts, keymaps, ui })
