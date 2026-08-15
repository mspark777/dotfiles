return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "oxlint" },
			typescript = { "oxlint" },
			javascriptreact = { "oxlint" },
			typescriptreact = { "oxlint" },
			jsonc = { "oxlint" },
			json = { "oxlint" },
			go = { "golangcilint" },
			python = { "pylint" },
			terraform = { "terraform" },
			rust = { "clippy" },
			sh = { "shellharden" },
		}
	end,
}
