return{'ThePrimeagen/harpoon',
dependencies = {"nvim-lua/plenary.nvim",
},
config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")


    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<leader>mr", mark.rm_file)
    vim.keymap.set("n", "<leader>ca", mark.clear_all)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
    -- Navegar en ciclo

    vim.keymap.set("n", "<M-,>", function() ui.nav_next() end)
    vim.keymap.set("n", "<M-.>", function() ui.nav_prev() end)
    --
    -- Navegar por num
    vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
end
}
