return {
  { 
    "tpope/vim-fugitive",
    config = function ()
      vim.keymap.set('n', '<leader>gs', ':Git<CR>')
      vim.opt.diffopt = vim.opt.diffopt + 'vertical'
    end
  }
}
