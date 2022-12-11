--[[ keys.lua ]]

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})
-- copy/paste from clipboard
vim.keymap.set({'n', 'v'}, '<leader>c', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>v', '"+p')
-- delete without changing the registers
vim.keymap.set({'n', 'x'}, 'x', '"_x')
-- select all text in current buffer
-- vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
-- Esc
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('i', 'JK', '<esc>')
vim.keymap.set('v', 'jk', '<esc>')
vim.keymap.set('v', 'JK', '<esc>')

-----------------------------------------------
--             Telescope
-----------------------------------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


