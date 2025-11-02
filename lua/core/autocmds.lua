-- 自动命令配置

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- 文件类型检测
augroup('filetypedetect', { clear = true })
autocmd('FileType', {
  group = 'filetypedetect',
  pattern = 'lua',
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end
})

autocmd('FileType', {
  group = 'filetypedetect',
  pattern = 'javascript,typescript,html,css,json',
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end
})

-- 自动保存
augroup('autosave', { clear = true })
autocmd('BufLeave', {
  group = 'autosave',
  pattern = '*',
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand('%') ~= '' then
      vim.cmd('silent update')
    end
  end
})

-- 自动恢复光标位置
augroup('cursorpos', { clear = true })
autocmd('BufReadPost', {
  group = 'cursorpos',
  pattern = '*',
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end
})
