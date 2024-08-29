local M = {}

M.setup = function(colors)
	local todo_hl = { fg = "#000000", bg = "#00ff00" }

	return {
		Comment        = { fg = colors.muted, italic = true },
		Constant       = { fg = colors.accent4 },
		String         = { fg = colors.str },
		Character      = { fg = colors.str_alt },
		Number         = { fg = colors.accent2 },
		Boolean        = { link = "Number" },
		Float          = { link = "Number" },
		Identifier     = { fg = colors.fg_alt },
		Function       = { link = "Normal" },
		Statement      = { link = "Normal" },
		Conditional    = { fg = colors.accent1_alt },
		Repeat         = { link = "Conditional" },
		Operator       = { link = "Identifier" },
		Keyword        = { fg = colors.keyword },
		Exception      = { fg = colors.accent3_alt },
		PreProc        = { link = "Exception" },
		Include        = { fg = colors.accent3 },
		Define         = { link = "Include" },
		Macro          = { link = "Include" },
		PreCondit      = { link = "Include" },
		Type           = { link = "Constant" },
		StorageClass   = todo_hl,
		Structure      = { link = "Exception" },
		Typedef        = { link = "Type" },
		Special        = { link = "Identifier" },
		SpecialChar    = { link = "Identifier" },
		Tag            = { link = "Identifier" },
		Delimiter      = { link = "Comment" },
		SpecialComment = { fg = colors.muted, bg = colors.bg_dark2 },
		Debug          = { fg = colors.accent2_alt, bg = colors.bg_dark2 },
		Underlined     = { link = "Normal" },
		Ignore         = { fg = colors.muted, bg = colors.muted },
		Error          = { fg = colors.white, bg = colors.alert },
		Todo           = { reverse = true },
		Added          = { fg = colors.success },
		Changed        = { fg = colors.info },
		Removed        = { fg = colors.alert },
	}
end

return M
