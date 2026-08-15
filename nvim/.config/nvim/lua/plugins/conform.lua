return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	tag = "stable",
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt" },
				javascript = { "oxfmt" },
				typescript = { "oxfmt" },
				javascriptreact = { "oxfmt" },
				typescriptreact = { "oxfmt" },
				css = { "oxfmt" },
				html = { "oxfmt" },
				htmldjango = { "oxfmt" },
				json = { "oxfmt" },
				jsonc = { "oxfmt" },
				yaml = { "oxfmt" },
				markdown = { "oxfmt" },
				graphql = { "oxfmt" },
				svg = { "oxfmt" },
				rust = { "rustfmt" },
				python = { "black" },
				toml = { "taplo" },
				terraform = { "terraform_fmt" },
				xml = { "oxfmt" },
				sh = { "shellharden" },
				["_"] = { "trim_whitespace" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 3000,
			},
		})
	end,
}
