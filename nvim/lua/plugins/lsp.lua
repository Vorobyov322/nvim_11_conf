return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp" }, -- зависимости для корректной работы
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    -- Добавляем способности nvim-cmp к LSP клиенту
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

    lspconfig.pyright.setup({
      capabilities = capabilities,
    })

    lspconfig.clangd.setup({
      capabilities = capabilities,
    })
  end,
}

 
