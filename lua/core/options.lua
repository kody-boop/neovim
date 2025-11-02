-- 编辑器选项配置

local opt = vim.opt

-- 基础设置
opt.number = true                -- 显示行号
opt.relativenumber = true        -- 相对行号
opt.cursorline = true            -- 高亮当前行
opt.autoindent = true            -- 自动缩进
opt.smartindent = true           -- 智能缩进
opt.expandtab = true             -- 使用 Tab 转换为空格
opt.shiftwidth = 4               -- 缩进宽度
opt.tabstop = 4                  -- Tab 宽度
opt.softtabstop = 4              -- 软 Tab 宽度
opt.wrap = false                 -- 不自动换行
opt.scrolloff = 8                -- 滚动时保持距离
opt.incsearch = true             -- 实时搜索
opt.hlsearch = true              -- 高亮搜索结果
opt.termguicolors = true         -- 启用真彩色
opt.mouse = 'a'                  -- 启用鼠标
opt.clipboard = 'unnamedplus'    -- 共享剪贴板
opt.splitright = true            -- 垂直分割
