return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function ()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      local function my_on_attach(bufnr)
        local api = require "nvim-tree.api"

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        vim.keymap.set('n', 'x',     api.node.navigate.parent_close,        opts('Parent close'))
        vim.keymap.set('n', 'u',     api.tree.change_root_to_parent,        opts('Root to parent'))
        vim.keymap.set('n', 'C',     api.tree.change_root_to_node,          opts('Root to node'))
        vim.keymap.set('n', 's',     api.node.open.vertical,                opts('Vertical'))
        vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
        vim.keymap.set('n', 'A',     ':NvimTreeResize +30<CR>',             opts('Zoom+'))
        vim.keymap.set('n', 'z',     ':NvimTreeResize -30<CR>',             opts('Zoom-'))
      end

      require("nvim-tree").setup({
        on_attach = my_on_attach,
        filters = {
          dotfiles = true,
          git_ignored = false,
        },
        renderer = {
          full_name = true,
        },
        actions = {
          change_dir = {
            global = true,
          }
        }
      })

      vim.keymap.set('n', '<c-f>', ':NvimTreeFindFileToggle<CR>')
      vim.keymap.set('n', '<leader>f', ':NvimTreeToggle<CR>')
    end
  },
  {
    'nvim-tree/nvim-web-devicons',
  }
}
