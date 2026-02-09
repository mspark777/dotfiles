--@module flash

return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@type Flash.Config
	opts = {
		modes = {
			char = {
				keys = { ";", "," },
			},
		},
	},
}
