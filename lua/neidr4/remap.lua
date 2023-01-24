vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Allow to several paste by using the void buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy to system register. Doesn't work somehow
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
