local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>vpf', function()
    vim.cmd.vsplit()
    builtin.find_files();
end, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>vps', function()
    vim.cmd.vsplit()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
