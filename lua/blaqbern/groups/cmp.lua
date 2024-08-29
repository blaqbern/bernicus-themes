local M = {}

M.setup = function (colors)
	return {
		CmpItemAbbr            = { fg = colors.fg },
		CmpItemAbbrDeprecated  = { fg = colors.muted },
		CmpItemAbbrMatch       = { fg = colors.accent1 },
		CmpItemAbbrMatchFuzzy  = { fg = colors.accent1_alt },
		CmpItemMenu            = { fg = colors.fg, bg = colors.bg_light },
		CmpItemKind            = { fg = colors.accent2 },
		CmpItemKindClass       = { link = "CmpItemKindInterface" },
		CmpItemKindFunction    = { fg = colors.accent4 },
		CmpItemKindInterface   = { fg = colors.accent3_alt },
		CmpItemKindKeyword     = { link = "CmpItemKind" },
		CmpItemKindMethod      = { fg = colors.accent4_alt },
		CmpItemKindProperty    = { fg = colors.accent2_alt },
		CmpItemKindText        = { fg = colors.fg_alt },
		CmpItemKindUnit        = { link = "CmpItemKind" },
		CmpItemKindVariable    = { link = "CmpItemKind" },
	}
end

return M
