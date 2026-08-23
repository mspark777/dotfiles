return {
	"nvim-flutter/flutter-tools.nvim",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		flutter_lookup_cmd = "asdf where flutter",
	},
}
