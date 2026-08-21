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
	"docker-compose-language-service",
	"dockerfile-language-server",
	"taplo",
	"graphql-language-service-cli",
	"jq-lsp",
	"tailwindcss-language-server",
	"rust-analyzer",
	"pyright",
	"terraform-ls",
	"eslint-lsp",
	-- Linter
	"golangci-lint",
	"pylint",
	-- Formatter
	"stylua",
	"black",
	"terraform",
	"shellharden",
	-- DAP
	"js-debug-adapter",
	"codelldb",
}
vim.cmd("MasonInstall " .. table.concat(tool_list, " "))
