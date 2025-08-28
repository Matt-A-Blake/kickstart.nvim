-- Config for working with trio BASIC files.
-- Right now it just sets .bas files to basic.

vim.filetype.add {
  extension = {
    bas = 'basic',
    BAS = 'basic',
  },
}
