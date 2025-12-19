local toggleterm = require("toggleterm")
toggleterm.setup({
	open_mapping = [[<c-\>]],
	size = vim.o.columns * 0.4,
	direction = "vertical",
})

function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

vim.api.nvim_create_user_command("PromptClaudeWithLocation", function()
	-- Get selected file and lines
	local file = vim.fn.expand("%:.")
	local start_line = vim.fn.line("'<")
	local end_line = vim.fn.line("'>")

	-- Prefix with @ and remove backticks
	local annotated_file = "@" .. file

	vim.ui.input({ prompt = "What should Claude do? " }, function(user_input)
		if user_input == nil or user_input == "" then
			print("Aborted.")
			return
		end

		-- Construct message
		local message =
			string.format("%s\n(For Lines %d–%d of the file %s.)", user_input, start_line, end_line, annotated_file)

		-- Send
		toggleterm.exec(string.format('echo "%s" | claude-bedrock', message))
	end)
end, { range = true })

vim.g.VimuxOrientation = "h"

-- Keybind (visual mode)
vim.keymap.set("v", "<leader>ca", [[:PromptClaudeWithLocation<CR>]])
