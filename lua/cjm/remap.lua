vim.g.mapleader = " "
-- Set leader pv in normal mode to be the command :Ex that takes us back to netrw (the file explorer)
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")
