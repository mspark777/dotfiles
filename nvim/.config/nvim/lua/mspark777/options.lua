vim.g.editorconfig = false
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.vim_json_conceal = 0
vim.g.codeium_disable_bindings = 1

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.signcolumn = "yes"
vim.opt.list = true
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.autoindent = true
vim.opt.wrap = false
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.clipboard:append({ "unnamed", "unnamedplus" })
vim.opt.exrc = true

vim.cmd([[
autocmd Filetype make setlocal noexpandtab
]])

vim.filetype.add({
	extension = {
		tf = "terraform",
		tfvars = "terraform",
		-- html = "html",
	},
	pattern = {
		["%.env"] = "sh",
		["%.env%..+"] = "sh",
	},
})

vim.diagnostic.config({
	virtual_text = false,
})
