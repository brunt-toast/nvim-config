-- move selected lines in visual mode by shift+dir
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- in half-page jump, cursor remains stationary
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- paste over doesn't overwrite paste buffer
vim.keymap.set("x", "<leader>p", "\"_dp")
