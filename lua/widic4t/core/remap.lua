vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>cl", vim.cmd.clo)
-- Increment/Decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')
-- Clean  highlighted search
vim.keymap.set("n", "<leader>ch", "<cmd>:nohlsearch<CR>")

-- Paste on v mode without appending the word to the clipboard history
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Move lines on Visual mode.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'")

-- Jumping/searching on the file while cursr is always on the center of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Greatest remap  ever :thezaza
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"Y")

--Word-replace bomb
vim.keymap.set("n", "<leader>sw", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")

-- Make a file executable
vim.keymap.set("n", "<leader>ex", "<cmd>!chmod +x %<CR>", {silent = true})
