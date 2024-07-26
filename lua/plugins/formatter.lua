return {
    -- increasing formatting time limit to 60 seconds
    -- see https://github.com/LazyVim/LazyVim/issues/51
    {
        "stevearc/conform.nvim",
        opts = function()
            local opts = {
                default_format_opts = {
                    timeout_ms = 60000,
                    async = false, -- not recommended to change
                    quiet = false, -- not recommended to change
                    lsp_format = "fallback", -- not recommended to change
                },
            }
            return opts
        end,
    },
}
