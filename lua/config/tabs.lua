local TAB_WIDTH = 4
vim.o.tabstop = TAB_WIDTH
vim.o.shiftwidth = TAB_WIDTH
vim.o.expandtab = true
vim.o.smartindent = true

-- C++ specific indentation settings
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp', 'cxx', 'h', 'hpp', 'hxx' },
  callback = function()
    -- Set tab settings first to ensure they take precedence
    vim.bo.tabstop = TAB_WIDTH
    vim.bo.shiftwidth = TAB_WIDTH
    vim.bo.expandtab = true
    vim.bo.smartindent = true
    
    -- Enable C-style indentation for C/C++
    vim.bo.cindent = true
    -- Configure cinoptions for proper brace placement
    -- The key options for fixing opening brace indentation:
    -- w0 = unclosed braces align with the next line (fixes opening brace position)
    -- W0 = unclosed braces in function parameters align with the next line
    -- b0 = statements after opening braces are not indented
    -- p0 = K&R style function declarations (opening brace on same line)
    -- g0 = C++ scope declarations are not indented
    -- h0 = statements after if, for, while are not indented
    -- l0 = case labels are not indented
    -- N-s = don't indent inside namespace
    -- i0 = C++ base class declarations and access specifiers are not indented
    -- +0 = continuation lines are not indented
    -- c0 = case labels are not indented
    -- :0 = case labels are not indented
    -- t0 = function return type is not indented
    -- (0 = unclosed parentheses align with the next line
    -- u0 = same as (0 but for unclosed brackets
    -- m0 = closing parentheses align with the opening one
    -- j1 = indent Java anonymous classes correctly
    -- J1 = indent Java method declarations correctly
    -- )0 = closing parentheses align with the opening one
    -- *0 = search for unclosed comments at the start of lines
    -- /0 = don't indent case labels
    vim.bo.cinoptions = 'w0,W0,b0,p0,g0,h0,l0,N-s,i0,+0,c0,:0,t0,(0,u0,m0,j1,J1,)0,*0,/0'
    
    -- Force expandtab to be true after setting cindent
    vim.bo.expandtab = true
    
    -- Use a timer to ensure expandtab is set after any other plugins
    vim.defer_fn(function()
      vim.bo.expandtab = true
    end, 10)
  end,
})
