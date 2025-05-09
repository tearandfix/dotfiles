return function()
  vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'gh', vim.lsp.buf.hover, {})
  vim.keymap.set('n', 'ga', ':ClangdSwitchSourceHeader<CR>', {})

  vim.diagnostic.config({
    virtual_text = false
  })
  -- Show line diagnostics automatically in hover window
  vim.o.updatetime = 250
  vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, {focus=false})]]
end

