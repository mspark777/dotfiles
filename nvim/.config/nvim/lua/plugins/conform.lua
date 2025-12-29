return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	tag = "stable",
	opts = {},
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "gofmt" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				htmldjango = { "prettier" },
				json = { "prettier" },
				jsonc = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				svg = { "prettier" },
				rust = { "rustfmt" },
				python = { "black" },
				sql = { "sqlfmt" },
				toml = { "taplo" },
				terraform = { "terraform_fmt" },
				xml = { "xmlformatter" },
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
