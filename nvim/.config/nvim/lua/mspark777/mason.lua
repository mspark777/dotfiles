local tool_list = {
	-- LS
	"lua-language-server",
	"typescript-language-server",
	"gopls",
	"bash-language-server",
	"css-lsp",
	"html-lsp",
	"json-lsp",
	"yaml-language-server",
	"eslint-lsp",
	"docker-compose-language-service",
	"dockerfile-language-server",
	"taplo",
	"graphql-language-service-cli",
	"postgres-language-server",
	"jq-lsp",
	"tailwindcss-language-server",
	"rust-analyzer",
	"pyright",
	"terraform-ls",
	"lemminx",
	-- Linter
	"golangci-lint",
	"pylint",
	-- Formatter
	"stylua",
	"black",
	"sqlfmt",
	"terraform",
	"xmlformatter",
	-- DAP
	"js-debug-adapter",
	"codelldb",
}
vim.cmd("MasonInstall " .. table.concat(tool_list, " "))
