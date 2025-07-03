return {
	"catppuccin/nvim",
	as = "catppuccin",
	config = function()
		require("catppuccin").setup({
			flavour = "frappe", -- Choose from latte, frappe, macchiato, mocha
			transparent_background = false, -- Set to true if you want transparency
			term_colors = true,
			styles = {
				comments = { "italic" },
				functions = { "bold" },
				loops = { "italic" },
				keywords = { "italic" },
				variables = {},
			},
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		})
		vim.cmd("colorscheme catppuccin")
	end,
}
