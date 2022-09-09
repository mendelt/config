mason = require("mason")
lspconfig = require("lspconfig")

mason.setup()
lspconfig["rust_analyzer"].setup {}
