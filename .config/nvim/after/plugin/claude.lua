require("claude-code").setup({
	window = {
		position = "botright",
	},
	keymaps = {
		toggle = {
			normal = "<C-k>", -- Normal mode keymap for toggling Claude Code, false to disable
			terminal = "<C-k>", -- Terminal mode keymap for toggling Claude Code, false to disable
			variants = {},
		},
		window_navigation = true, -- Enable window navigation keymaps (<C-h/j/k/l>)
		scrolling = true, -- Enable scrolling keymaps (<C-f/b>) for page up/down
	},
})
