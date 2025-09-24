-- Folding settings.

--  local vim = vim
--  local opt = vim.opt
--
--  -- opt.foldmethod = 'expr'
--  opt.foldmethod = 'indent'
--  opt.foldexpr = 'nvim_tresetter#foldexpr()'
--  opt.foldlevel = 99
--  opt.foldlevelstart = 9
--  -- opt.foldnestmax = 5
--  vim.wo.foldcolumn = '4'
--  -- vim.wo.foldmethod = 'expr'
--  -- vim.wo.foldexpr = 'nvim_tresetter#foldexpr()'
-- vim.wo.fillchars='fold: ,foldopen:,foldclose:,foldsep:|'
vim.wo.fillchars = 'fold: ,foldopen:,foldclose:,foldsep:'
-- vim.wo.fillchars = 'fold: ,foldopen:,foldclose:,foldsep:|'

-- Set fold characters globally for all windows
local fold_chars = 'fold: ,foldopen:,foldclose:,foldsep:'

-- Also set globally as a fallback
vim.o.fillchars = fold_chars

-- Function to apply fold characters
local function apply_fold_chars()
  vim.wo.fillchars = fold_chars
  vim.o.fillchars = fold_chars
end

-- Apply immediately to current window
apply_fold_chars()

-- Apply fold characters to all windows (including new files)
vim.api.nvim_create_autocmd('WinNew', {
  desc = 'Set fold characters for new windows',
  group = vim.api.nvim_create_augroup('fold-chars', { clear = true }),
  callback = apply_fold_chars,
})

-- Also apply to existing windows when they are entered
vim.api.nvim_create_autocmd('WinEnter', {
  desc = 'Set fold characters when entering windows',
  group = vim.api.nvim_create_augroup('fold-chars', { clear = false }),
  callback = apply_fold_chars,
})

-- Apply to all buffers when they are opened
vim.api.nvim_create_autocmd('BufWinEnter', {
  desc = 'Set fold characters when buffer window is entered',
  group = vim.api.nvim_create_augroup('fold-chars', { clear = false }),
  callback = apply_fold_chars,
})

-- Apply to all buffers when they are loaded
vim.api.nvim_create_autocmd('BufRead', {
  desc = 'Set fold characters when buffer is read',
  group = vim.api.nvim_create_augroup('fold-chars', { clear = false }),
  callback = apply_fold_chars,
})

-- Apply to all buffers when they are added
vim.api.nvim_create_autocmd('BufAdd', {
  desc = 'Set fold characters when buffer is added',
  group = vim.api.nvim_create_augroup('fold-chars', { clear = false }),
  callback = apply_fold_chars,
})

-- Apply to all buffers when they are created
vim.api.nvim_create_autocmd('BufNew', {
  desc = 'Set fold characters when buffer is created',
  group = vim.api.nvim_create_augroup('fold-chars', { clear = false }),
  callback = apply_fold_chars,
})
