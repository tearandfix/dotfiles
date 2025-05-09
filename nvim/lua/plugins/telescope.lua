  return {
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { {'nvim-lua/plenary.nvim'} },
      config = function ()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>p', builtin.find_files, {})
        vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
        vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
        vim.keymap.set('n', 'K', builtin.grep_string, {})
        vim.keymap.set('n', '<c-b>', builtin.buffers, {})

        require('telescope').setup{
          defaults = {
            vimgrep_arguments = {
              "rg",
              "--color=never",
              "--no-heading",
              "--with-filename",
              "--line-number",
              "--column",
              "--case-sensitive"
            }
          },
          pickers = {
            buffers = {
              sort_lastused = true
            }
          }
        }
      end
    }
  }
