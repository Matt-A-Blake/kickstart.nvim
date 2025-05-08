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

    vim.keymap.set('n', '<leader>ba', function()
      harpoon:list():add()
    end, { desc = '[A]ppend harpoon quick list' })
    vim.keymap.set('n', '<leader>bc', function()
      harpoon:list():clear()
    end, { desc = '[C]lear harpoon quick list' })
    vim.keymap.set('n', '<C-p>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon quick list' })

    vim.keymap.set('n', '<leader>b1', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon select 1' })
    vim.keymap.set('n', '<leader>b2', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon select 2' })
    vim.keymap.set('n', '<leader>b3', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon select 3' })
    vim.keymap.set('n', '<leader>b4', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon select 4' })
    vim.keymap.set('n', '<leader>b5', function()
      harpoon:list():select(5)
    end, { desc = 'Harpoon select 5' })
    vim.keymap.set('n', '<leader>b6', function()
      harpoon:list():select(6)
    end, { desc = 'Harpoon select 6' })
    vim.keymap.set('n', '<leader>b7', function()
      harpoon:list():select(7)
    end, { desc = 'Harpoon select 7' })
    vim.keymap.set('n', '<leader>b8', function()
      harpoon:list():select(8)
    end, { desc = 'Harpoon select 8' })
    vim.keymap.set('n', '<leader>b9', function()
      harpoon:list():select(9)
    end, { desc = 'Harpoon select 9' })
  end,
}
