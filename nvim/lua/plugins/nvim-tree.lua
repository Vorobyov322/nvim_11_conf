return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvim_tree = require("nvim-tree")
    local api = require("nvim-tree.api")

    nvim_tree.setup({
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
      -- ключевая часть — on_attach для настройки кастомных биндингов
      on_attach = function(bufnr)
        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- удаляем дефолтные биндинги (если нужно)
        api.config.mappings.default_on_attach(bufnr)

        -- добавляем свои биндинги
        vim.keymap.set("n", "a", api.fs.create, opts("Create File"))
        vim.keymap.set("n", "A", api.fs.mkdir, opts("Create Directory"))
        vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
        vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
        vim.keymap.set("n", "x", api.fs.cut, opts("Cut"))
        vim.keymap.set("n", "c", api.fs.copy, opts("Copy"))
        vim.keymap.set("n", "p", api.fs.paste, opts("Paste"))
        vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))
      end,
    })

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
  end,
}
