vim.diagnostic.config({
    virtual_text = true,       -- Teks error di dalam kode
    signs = true,              -- Icon E / W
    underline = true,
    update_in_insert = false,  -- recommended
    severity_sort = true,
    -- float = {
    --     show_header = true,
    --     border = "rounded",
    --     source = "always",
    --     focusable = false,
    -- },
})

-- vim.cmd([[
--   autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focus = false })
-- ]])

vim.o.updatetime = 250

return {
    {
        "neovim/nvim-lspconfig",
    },
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {"lua_ls", "ts_ls"},
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
}
