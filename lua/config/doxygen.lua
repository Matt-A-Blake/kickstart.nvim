-- Doxygen comment highlighting for C++

-- Enhanced Doxygen comment highlighting for C++
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp', 'cxx', 'h', 'hpp', 'hxx' },
  callback = function()
    -- Disable Treesitter highlighting for this buffer
    vim.cmd('TSBufDisable highlight')
    
    -- Load the Doxygen syntax file
    vim.cmd('runtime syntax/doxygen.vim')
    
    -- Force syntax refresh
    vim.cmd('syntax sync fromstart')
  end,
})
