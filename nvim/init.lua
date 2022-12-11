vim.o.termguicolor = true
vim.o.syntax = 'on'
vim.o.errorbells = false
vim.o.showmode = false
vim.o.completeopt = 'menuone,noinsert'

-- 行号列
vim.opt.number = true
vim.opt.relativenumber = true
-- 标记列，如断点标记
vim.opt.signcolumn = 'yes'
-- 鼠标
vim.opt.mouse = 'a'
-- 字符串搜索
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
-- long-line 换行显示
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
-- Tab与缩进
vim.opt.tabstop = 2 --Tab的宽度
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2 --行缩进宽度
vim.opt.expandtab = true --Tab自动转换为空格
vim.opt.autoindent = true --自动重复前一行的缩进
vim.opt.smartindent = true --代码自动缩进
-- 文件Buffer
vim.opt.hidden = true --文件未保存时，可以切换buffer
vim.opt.swapfile = false --不为buffer创建交换文件
vim.opt.undodir = vim.fn.stdpath('config') .. '/undodir'
vim.opt.undofile = true --撤销操作持久化，重新打开后仍可撤销
vim.opt.backup = false --不备份原文件

--//
--============= Key Bindings =============
--//
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})

