local M = {}

M.setup = function (colors)
	local utils = require("blaqbern.utils")

	return {
		["@variable"]                = { fg = colors.fg },
		["@variable.builtin"]        = { fg = colors.accent1 },
		["@variable.parameter"]      = { fg = colors.accent4 },
		["@variable.parameter.type"] = { fg = colors.accent4 },
		["@variable.member"]         = { fg = colors.accent4 },

		["@constant"]         = { fg = colors.accent3 },
		["@constant.builtin"] = { fg = colors.accent3_alt },
		["@constant.macro"]   = { link = "@constant.builtin" },

		["@module"]         = { fg = colors.fg_alt },
		["@module.builtin"] = { fg = colors.fg_alt, bold = true },

		["@label"] = { fg = colors.fg_alt },

		["@string"]                = { link = "String" },
		["@string.documentation"]  = { fg = colors.string_alt },
		["@string.regexp"]         = { fg = colors.string_alt },
		["@string.escape"]         = { link = "@string.regexp" },
		["@string.special"]        = { link = "@string.regexp" },
		["@string.special.symbol"] = { link = "@string.regexp" },
		["@string.special.path"]   = { link = "@string.regexp" },
		["@string.special.url"]    = { link = "@string.regexp" },

		["@character"]         = { link = "String" },
		["@character.special"] = { link = "@string.regexp" },

		["@boolean"] = { fg = colors.accent2 },

		["@number"] = { fg = colors.accent3 },

		["@type"]            = { fg = colors.accent1 },
		["@type.builtin"]    = { fg = colors.accent1, italic = true },
		["@type.definition"] = { link = "@type" },

		["@attribute"]         = { fg = colors.accent4 },
		["@attribute.builtin"] = { fg = colors.accent4_alt },

		["@property"] = { fg = colors.fg_alt },

		["@function"]         = { fg = colors.fg_alt },
		["@function.builtin"] = { fg = colors.fg_alt, italic = true },
		["@function.call"]    = { link = "Normal" },
		["@function.macro"]   = { link = "@function.builtin" },

		["@constructor"]     = { link = "@function.builtin" },
		["@constructor.lua"] = { fg = colors.fg_alt },

		["@operator"] = { link = "Operator" },

		["@keyword"]                     = { link = "Keyword" },
		["@keyword.coroutine"]           = { link = "Keyword" },
		["@keyword.function"]            = { link = "Keyword" },
		["@keyword.operator"]            = { link = "Keyword" },
		["@keyword.import"]              = { fg = colors.accent4 },
		["@keyword.type"]                = { link = "Keyword" },
		["@keyword.modifier"]            = { link = "Keyword" },
		["@keyword.repeat"]              = { fg = colors.accent2 },
		["@keyword.return"]              = { fg = colors.accent3 },
		["@keyword.debug"]               = { link = "Keyword" },
		["@keyword.exception"]           = { link = "Keyword" },
		["@keyword.conditional"]         = { link = "@keyword.repeat" },
		["@keyword.conditional.ternary"] = { link = "@keyword.repeat" },
		["@keyword.directive"]           = { link = "Keyword" },
		["@keyword.directive.define"]    = { link = "Keyword" },

		["@punctuation.delimeter"]            = { link = "Normal" },
		["@punctuation.delimeter.lua"]        = { link = "@punctuation.delimeter" },
		["@punctuation.delimeter.go"]         = { link = "@punctuation.delimeter" },
		["@punctuation.delimeter.typescript"] = { link = "@punctuation.delimeter" },
		["@punctuation.bracket"]              = { link = "Normal" },
		["@punctuation.special"]              = { fg = colors.string_alt },

		["@comment"]               = { link = "Comment" },
		["@comment.documentation"] = { fg = colors.muted, bg = colors.bg_dark2 },
		["@comment.error"]         = { fg = utils.desaturate(colors.alert, 0.2) },
		["@comment.warning"]       = { fg = utils.desaturate(colors.warning, 0.2) },
		["@comment.todo"]          = { fg = utils.desaturate(colors.info, 0.2) },
		["@comment.note"]          = { fg = utils.desaturate(colors.info, 0.2) },

		["@markup.strong"]        = { bold = true },
		["@markup.italic"]        = { italic = true },
		["@markup.strikethrough"] = { fg = colors.bg_dark1 },
		["@markup.underline"]     = { underline = true },
		["@markup.quote"]         = { bg = colors.bg_dark2 },
		["@markup.math"]          = { link = "@markup.quote" },
		["@markup.link"]          = { link = "@markup.underline" },

		["@diff.plus"]  = { fg = colors.success },
		["@diff.minus"] = { fg = colors.alert },
		["@diff.delta"] = { fg = colors.info },

		["@tag"]           = { fg = colors.accent1_alt },
		["@tag.builtin"]   = { link = "@tag" },
		["@tag.attribute"] = { fg = colors.fg, italic = true },
		["@tag.delimeter"] = { link = "@tag" },
	}
end

return M
