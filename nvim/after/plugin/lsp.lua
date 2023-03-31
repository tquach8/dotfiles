local lsp = require('lsp-zero')
lsp.preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'eslint'
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

local function test()
end

test()

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
