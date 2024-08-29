local M = {}

M.setup = function(colors)
	local utils = require("blaqbern.utils")
	local todo_hl = { fg = "#000000", bg = "#00ff00" }

	return {
		ColorColumn   = { bg = colors.bg_dark1 },
		-- Conceal
		Cursor        = { fg = colors.bg },
		-- lCursor
		-- CursorIM
		CursorColumn  = { fg = colors.fg , bg = "NONE" },
		CursorLine    = { bg = colors.bg },
		Directory     = { fg = colors.accent3 },
		-- DiffAdd
		-- DiffChange
		-- DiffDelete
		-- DiffText
		EndOfBuffer   = { fg = colors.bg },
		ErrorMsg      = { fg = colors.white, bg = colors.alert },
		VertSplit     = { fg = colors.bg, bg = colors.bg },
		Folded        = { link = "Comment" },
		-- FoldColumn
		SignColumn    = { bg = colors.bg_dark2 },
		IncSearch     = { link = "Search" },
		LineNr        = { fg = colors.fg_alt },
		LineNrAbove   = { fg = utils.desaturate(colors.fg_alt, 0.3) },
		LineNrBelow   = { link = "LineNrAbove" },
		-- CursorLineNr
		-- CursorLineFold
		-- CursorLineSign
		MatchParen    = { fg = colors.accent1 , bold = true },
		MessageWindow = todo_hl,
		ModeMsg       = { fg = colors.accent2 },
		MsgArea       = { link = "Normal" },
		MoreMsg       = todo_hl,
		NonText       = { fg = colors.bg_dark3 },
		Normal        = { fg = colors.fg, bg = colors.bg },
		Pmenu         = { fg = colors.fg, bg = colors.bg_dark2},
		PmenuSel      = { fg = colors.keyword, bg = colors.bg_dark3, bold = true },
		PmenuKind     = { italic = true },
		PmenuKindSel  = { link = "PmenuKind" },
		PmenuExtra    = { link = "Pmenu" },
		PmenuExtraSel = { link = "PmenuSel" },
		PmenuSBar     = { bg = colors.bg_light},
		PmenuThumb    = { bg = colors.muted },
		PmenuMatch    = { fg = colors.fg_alt },
		PmenuMatchSel = { link = "PmenuMatch" },
		-- PopupNotification
		Question      = todo_hl,
		QuickFixLine  = { bg = colors.bg_light },
		Search        = { reverse = true },
		CurSearch     = { link = "Search" },
		SpecialKey    = { fg = colors.fg_alt, bg = colors.bg_dark1 },
		SpellBad      = { underdotted = true },
		SpellCap      = { link = "SpellBad" },
		SpellLocal    = { link = "SpellBad" },
		SpellRare     = { link = "SpellBad" },
		StatusLine    = { link = "Normal" },
		StatusLineNC  = { fg = colors.muted },
		-- StatusLineTerm
		-- StatusLineTermNC
		-- Tabline
		-- TablineFill
		-- TabLineSel
		-- Terminal
		Title         = { fg = colors.accent3_alt, bold = true },
		Visual        = { bg = colors.bg_light },
		-- VisualNOS
		WarningMsg    = { fg = colors.white, bg = colors.warning },
		WildMenu      = { link = "IncSearch" },
	}
end

return M
