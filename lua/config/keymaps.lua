-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Can move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Allows cursor to stay in same place when using J to append line below you with a space
vim.keymap.set("n", "J", "mzJ`z")

-- Allows half page jumping to keep cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")

-- Allows cursor to stay in the middle when moving through search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Paste text over selected text without overwriting current buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Makes yank also go to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without overwriting current buffer
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
