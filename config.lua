require("user.neovim").config()

require("user.alpha").config()

require("user.statusline").config()

lvim.builtin.terminal.shell = "/bin/bash"
lvim.builtin.terminal.open_mapping = "<C-Space>" -- ctrl+`
lvim.builtin.nvimtree.setup.view.mappings.list = {
	{ key = { "<Tab>" }, action = nil },
	{ key = { "l", "<CR>" }, action = "edit", mode = "n" },
	{ key = "h", action = "close_node" },
	{ key = "v", action = "vsplit" },
}
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
	-- for input mode
	i = {
		["<Esc>"] = actions.close,
	},
	-- for normal mode
	n = {},
}

require("user.treesitter").config()

require("user.lsp").config()

require("user.plugins").config()

require("user.keybindings").config()
