local lsp = require("languages.lsp")

vim.lsp.config("rust_analyzer", {
    cmd = { "rust-analyzer" },
    filetypes = {},
    root_markers = { "Cargo.toml", "rust-project.json", ".git" },
    capabilities = lsp.capabilities,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "DirenvLoaded",
    once = true,
    callback = function()
        vim.lsp.config("rust_analyzer", {
            filetypes = { "rust" },
        })
        vim.lsp.enable("rust_analyzer")
    end,
})
