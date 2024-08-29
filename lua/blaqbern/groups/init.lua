local M = {}

function M.setup(name)
	local colors = require("blaqbern.palettes").setup(name)

	return {
		require("blaqbern.groups.editor").setup(colors),
		require("blaqbern.groups.syntax").setup(colors),
		require("blaqbern.groups.cmp").setup(colors),
		require("blaqbern.groups.treesitter").setup(colors),
	}
end

return M
