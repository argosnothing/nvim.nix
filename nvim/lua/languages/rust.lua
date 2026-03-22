local lsp = require("languages.lsp")

vim.lsp.config("rust_analyzer", {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { "Cargo.toml", "rust-project.json", ".git" },
    capabilities = lsp.capabilities,
})

vim.api.nvim_create_autocmd("User", {
    pattern = "DirenvLoaded",
    once = true,
    callback = function()
        vim.lsp.enable("rust_analyzer")
        vim.cmd("doautoall FileType rust")
    end,
})
