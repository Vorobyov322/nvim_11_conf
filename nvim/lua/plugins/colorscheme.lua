return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      --style = "storm", -- варианты: "storm", "moon", "night", "day"
      style = "moon",
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },
    })
    vim.cmd.colorscheme("tokyonight")
  end,
}

