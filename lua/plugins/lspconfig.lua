return {
    "neovim/nvim-lspconfig",
    opts = {
        autoformat = false,
        -- inlay_hints = { enabled = false },
    },
    -- config = function()
    --     vim.api.nvim_create_autocmd("LspAttach", {
    --         callback = function(args)
    --             local client = vim.lsp.get_client_by_id(args.data.client_id)
    --             if client and client.name == "texlab" then
    --                 -- Force disable inlay hints for texlab
    --                 vim.schedule(function()
    --                     if vim.lsp.inlay_hint then -- Ensure Neovim 0.10+ API exists
    --                         vim.lsp.inlay_hint(args.buf, false)
    --                     end
    --                 end)
    --             end
    --         end,
    --     })
    -- end,
}
