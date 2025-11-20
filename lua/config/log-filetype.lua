-- Log filetypes

vim.filetype.add {
  extension = {
    journal = 'log',
    ['journal~'] = 'log',
  },
  filename = {
    ['dmesg'] = 'log',
    ['wtmp'] = 'log',
    ['btmp'] = 'log',
  },
  pattern = {
    ['.*log'] = 'log',
    ['.*log%.%d+'] = 'log',
    ['dmesg%.%d+'] = 'log',
    ['.*%.log%.%d+'] = 'log',
    ['syslog%.%d+'] = 'log',
    ['/var/log/.*'] = 'log',
    ['.*%.log%.%d+-%d+-%d+'] = 'log',
    ['.*%.log%.%d+-%d+-%d+%.%d+'] = 'log',
    ['btmp%.%d+'] = 'log',
    ['wtmp%.%d+'] = 'log',
  },
}
