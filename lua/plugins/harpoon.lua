-- Harpoon plugin
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  init = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<C-p>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<C-1>', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<C-2>', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<C-3>', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<C-4>', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<C-5>', function()
      harpoon:list():select(5)
    end)
    vim.keymap.set('n', '<C-5>', function()
      harpoon:list():select(6)
    end)
    vim.keymap.set('n', '<C-7>', function()
      harpoon:list():select(7)
    end)
    vim.keymap.set('n', '<C-8>', function()
      harpoon:list():select(8)
    end)
  end,
}
