return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	otps = {
		modules = {},
		sync_install = false,
		ensure_installed = {},
		ignore_install = {},
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
	},
}
