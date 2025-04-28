return {
    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        --run = ":TSUpdate",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "markdown", "markdown_inline", "r", "rnoweb", "latex", "csv" },
            })
        end,
    },
}
-- return {
--     {
--         "nvim-treesitter/nvim-treesitter",
--         build = ":TSUpdate",
--         config = function()
--             local configs = require("nvim-treesitter.configs")
--
--             configs.setup({
--                 ensure_installed = { "markdown", "markdown_inline", "r", "rnoweb", "yaml", "latex", "csv" },
--                 -- ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
--                 sync_install = false,
--                 highlight = { enable = true },
--                 indent = { enable = true },
--             })
--         end,
--     },
-- }
