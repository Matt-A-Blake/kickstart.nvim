-- Folding settings.

local vim = vim
local opt = vim.opt

-- opt.foldmethod = 'expr'
opt.foldmethod = 'indent'
opt.foldexpr = 'nvim_tresetter#foldexpr()'
opt.foldlevel = 99
opt.foldlevelstart = 9
-- opt.foldnestmax = 5
vim.wo.foldcolumn = '4'
-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_tresetter#foldexpr()'
