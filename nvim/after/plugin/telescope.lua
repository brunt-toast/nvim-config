local builtin = require('telescope.builtin')

-- vim.g.mapleader = " "
vim.keymap.set('n', ':ts', builtin.find_files, {}) -- telescope
vim.keymap.set('n', ':gs', builtin.git_files, {}) -- gitscope
