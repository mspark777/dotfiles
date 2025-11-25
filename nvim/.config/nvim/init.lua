require("mspark777.options")
require("mspark777.lazy")
require("mspark777.keymaps")
require("mspark777.color")

if vim.g.mspark777_first_time then
	require("mspark777.mason")
	require("mspark777.treesitter")
end
