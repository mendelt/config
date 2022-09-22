require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "rust_analyzer", "codelldb" }
})

lspconfig = require("lspconfig")

lspconfig["rust_analyzer"].setup {}
