local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- Project files (pf) : Search for project files
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- Git files (Ctrl-P) : Search for git files in project (.gitignore not included) 
vim.keymap.set('n', '<leader>ps', function() -- Project search (ps) : Fuzzy finder in project using regex
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
