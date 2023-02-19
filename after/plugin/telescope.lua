local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>o', builtin.find_files, {}) -- search for all files in current directory
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- search only for git files (i.e. exclude things like node_modules)
vim.keymap.set('n', '<leader>s', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") }) -- grep for strings in current directory
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
