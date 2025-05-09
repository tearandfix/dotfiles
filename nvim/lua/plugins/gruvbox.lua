return {
  {
    "ellisonleao/gruvbox.nvim",
    config = function ()

      require("gruvbox").setup({
        contrast = "hard",
        palette_overrides = {
          -- dark0_hard = "#141414",
          dark0_soft = "#000000",
          dark0_hard = "#111111",
        }
      })

      vim.o.termguicolors = true
      vim.o.background = "dark"
      vim.cmd.colorscheme "gruvbox"
    end
  }
}
