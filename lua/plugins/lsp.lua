-- Check is installed
local _, mason = pcall(require, 'mason')
local __, masonLspconfig = pcall(require, 'mason-lspconfig')
if not _ or not __ then return end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
mason.setup()
masonLspconfig.setup {
  ensure_installed = { 'clangd', 'lua_ls' }
}

masonLspconfig.setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function (server_name) -- default handler (optional)
      require("lspconfig")[server_name].setup {
        capabilities = capabilities
      }
  end,
}

