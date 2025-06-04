return {
  "ThePrimeagen/harpoon",
  branch = "legacy",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon.setup({})

    -- В legacy API mark и ui — отдельные модули
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add current file to Harpoon" })
    vim.keymap.set("n", "<leader>m", ui.toggle_quick_menu, { desc = "Toggle Harpoon menu" })

    vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = "Harpoon file 1" })
    vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = "Harpoon file 2" })
    vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = "Harpoon file 3" })
    vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = "Harpoon file 4" })
  end,
}


