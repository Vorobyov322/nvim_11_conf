-- Подключаем lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Указываем список плагинов
require("lazy").setup({
    --require("plugins.nvim-tree"),
    require("plugins.telescope"),
    require("plugins.harpoon"),
    require("plugins.treesitter"),
    require("plugins.lsp"),
    require("plugins.cmp"),
    require("plugins.colorscheme"),
    require("plugins.lualine"),
})
