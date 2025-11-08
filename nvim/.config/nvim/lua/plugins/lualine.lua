local function split(input, delimiter)
	local arr = {}
	string.gsub(input, "[^" .. delimiter .. "]+", function(w)
		table.insert(arr, w)
	end)
	return arr
end

local function get_venv()
	local venv = vim.env.VIRTUAL_ENV
	if venv then
		local params = split(venv, "/")
		local icon = require("nvim-web-devicons").get_icon("py")
		return "(" .. icon .. " venv:" .. params[#params - 2] .. "/" .. params[#params - 1] .. ")"
	else
		return ""
	end
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "tokyonight",
		},
		sections = {
			lualine_c = { get_venv, { "filename", path = 1 } },
			lualine_x = { "encoding", "fileformat", "filetype" },
		},
	},
}
