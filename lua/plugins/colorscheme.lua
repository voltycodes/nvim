return  {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",
      on_colors = require("../colors/tokyonight-palette-muted"),
    })
    vim.cmd("colorscheme tokyonight-night")
  end
}
