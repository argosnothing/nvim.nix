local terminal_buf = nil
local terminal_win = nil

-- Hide line numbers in the terminal
vim.api.nvim_create_autocmd("TermOpen", {
	callback = function()
		vim.opt_local.number = false
		vim.opt_local.relativenumber = false
	end,
})

vim.keymap.set({ "n", "t" }, "<M-t>", function()
	if terminal_win and vim.api.nvim_win_is_valid(terminal_win) then
		vim.api.nvim_win_close(terminal_win, true)
		terminal_win = nil
		vim.cmd("startinsert")
		return
	end

	if terminal_buf and vim.api.nvim_buf_is_valid(terminal_buf) then
		vim.cmd("botright split")
		vim.cmd("resize 15")
		terminal_win = vim.api.nvim_get_current_win()
		vim.api.nvim_win_set_buf(terminal_win, terminal_buf)
	else
		vim.cmd("botright split")
		vim.cmd("resize 15")
		vim.cmd("terminal")
		vim.opt_local.buflisted = false -- Don't register this particular terminal as a buffer in the list
		terminal_buf = vim.api.nvim_get_current_buf()
		terminal_win = vim.api.nvim_get_current_win()
	end
	vim.cmd("startinsert")
end)

-- Escape in terminal mode now returns to normal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
