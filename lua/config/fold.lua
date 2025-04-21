-- Folding settings.

local vim = vim
local opt = vim.opt
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_tresetter#foldexpr()'
opt.foldlevel = 99
opt.follevelstart = 2
opt.flodnestmax = 5
