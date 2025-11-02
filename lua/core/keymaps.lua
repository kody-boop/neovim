-- 键盘映射配置

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- 设置 leader 键
vim.g.mapleader = ' '

-- 基础快捷键
map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)
map('n', '<leader>x', ':x<CR>', opts)
map('n', '<leader>nh', ':nohl<CR>', opts)

-- 窗口操作
map('n', '<leader>v', ':vsplit<CR>', opts)
map('n', '<leader>h', ':split<CR>', opts)
map('n', '<leader>c', ':close<CR>', opts)

-- 窗口导航
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- 缩进
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)
