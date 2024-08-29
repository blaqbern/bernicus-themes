local M = {}

M.setup = function (name)
	local utils = require("blaqbern.utils")
	local palette = require("blaqbern.palettes." .. name)

	local fg = palette.white.normal
	local bg = palette.black.normal

	return {
		bg          = bg,
		bg_dark1    = utils.darken(bg, 0.03),
		bg_dark2    = utils.darken(bg, 0.2),
		bg_dark3     = utils.darken(bg, 0.5),
		bg_light    = utils.lighten(bg, 0.1),
		fg          = fg,
		fg_alt      = palette.white.bright,
		muted       = utils.desaturate(fg, 0.5),
		keyword     = palette.blue.normal,
		keyword_alt = palette.blue.bright,
		str         = palette.green.normal,
		str_alt     = palette.green.bright,
		accent1     = palette.cyan.normal,
		accent1_alt = palette.cyan.bright,
		accent2     = palette.yellow.normal,
		accent2_alt = palette.yellow.bright,
		accent3     = palette.magenta.normal,
		accent3_alt = palette.magenta.bright,
		accent4     = palette.red.normal,
		accent4_alt = palette.red.bright,

		white       = "#000000",
		alert       = "#d91e28",
		success     = "#23a147",
		warning     = "#ff842b",
		info        = "#0045cf",
	}
end

return M
