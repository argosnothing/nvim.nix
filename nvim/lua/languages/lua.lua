local lsp = require("languages.lsp")

vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
	capabilities = lsp.capabilities,
	settings = {
		Lua = {
			runtime = { version = "LuaJIT" },
			workspace = {
				checkThirdParty = false,
				library = { vim.env.VIMRUNTIME },
			},
		},
	},
})

vim.lsp.enable("lua_ls")
