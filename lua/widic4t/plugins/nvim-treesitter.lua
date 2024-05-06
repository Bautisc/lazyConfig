return{
    'nvim-treesitter/nvim-treesitter',
    build =  ':TSUpdate',
    evnt = {"BufReadPre", "BufNewFile"},
    config = function()
        local treesitter = require('nvim-treesitter.configs')

        treesitter.setup {
            indent = { enable = true },
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_installed = {
                "html",
                "tsx",
                "css",
                "markdown",
                "markdown_inline",
                "javascript",
                "typescript",
                "rust",
                "java",
                "bash",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "dockerfile",
                "gitignore",
                "pug",
                "python",
            },
            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,

            highlight = {
                enable = true},
        }
    end
}

