return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",  -- обновлять парсеры после установки
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "lua", "python", "javascript", "json", "bash", "html", "css", "c"}, -- языки для установки
      highlight = {
        enable = true,        -- включить подсветку синтаксиса
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,        -- автоотступы
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
      playground = {
        enable = true,
        updatetime = 25,
        persist_queries = false,
      },
    })
  end,
}

