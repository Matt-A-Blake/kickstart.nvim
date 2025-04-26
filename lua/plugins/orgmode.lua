-- Nvim Orgmode plugin
return {
  'nvim-orgmode/orgmode',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'nvim-orgmode/telescope-orgmode.nvim',
    'nvim-orgmode/org-bullets.nvim',
  },
  event = 'VeryLazy',
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
    }
    -- Setup org-bullets
    require('org-bullets').setup {
      symbols = {
        list = '',
        headlines = { '', '', '', '' },
        checkboxes = {
          half = { '󰐋', '@org.checkbox.halfchecked' },
          done = { '', '@org.keyword.done' },
          todo = { '˟', '@org.keyword.todo' },
        },
      },
    }
    require('telescope').setup {}
    require('telescope').load_extension 'orgmode'
    vim.keymap.set('n', '<leader>r', require('telescope').extensions.orgmode.refile_heading, { desc = 'Org: [R]efile Heading' })
    vim.keymap.set('n', '<leader>fh', require('telescope').extensions.orgmode.search_headings, { desc = 'Org: Search Heading' })
    vim.keymap.set('n', '<leader>li', require('telescope').extensions.orgmode.insert_link, { desc = 'Org: [L]ink [I]nsert' })
  end,
}
