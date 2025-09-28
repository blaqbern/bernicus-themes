local M = {}

function M.setup(opts)
  vim.cmd("hi clear")

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = opts.theme

  for _, groups in pairs(require("blaqbern.groups").setup(opts.name)) do
    for group, hl in pairs(groups) do
      vim.api.nvim_set_hl(0, group, hl)
    end
  end
end

return M
