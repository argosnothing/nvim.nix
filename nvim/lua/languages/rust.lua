local lsp = require("languages.lsp")

vim.lsp.config("rust_analyzer", {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { "Cargo.toml", "rust-project.json", ".git" },
    capabilities = lsp.capabilities,
})

vim.lsp.enable("rust_analyzer")
