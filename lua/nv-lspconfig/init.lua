local lsp_servers = {
  'tsserver',
  'tailwindcss',
  'prismals',
  'sumneko_lua',
  'jsonls',
  'html',
  'emmet_ls',
  'cssmodules_ls',
  'clangd',
  'bashls',
  'svelte'
}

require("nvim-lsp-installer").setup({
  ensure_installed = lsp_servers,
  automatic_installation = true
})
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require("lspconfig")
for _, server in pairs(lsp_servers) do
  local opts = {
    capabilities = capabilities
  }
  if server == 'tsserver' then
      opts.filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript",
                         "typescriptreact", "typescript.tsx" }
      opts.root_dir = function() return vim.loop.cwd() end
  end
  lspconfig[server].setup(opts)
end

KEYMAP('n','gd', ':lua vim.lsp.buf.definition()<cr>', OPTION1)
KEYMAP('n','gD', ':lua vim.lsp.buf.declaration()<cr>', OPTION1)
KEYMAP('n','gi', ':lua vim.lsp.buf.implementation()<cr>', OPTION1)
KEYMAP('n','gw', ':lua vim.lsp.buf.document_symbol()<cr>', OPTION1)
KEYMAP('n','gw', ':lua vim.lsp.buf.workspace_symbol()<cr>', OPTION1)
KEYMAP('n','gr', ':lua vim.lsp.buf.references()<cr>', OPTION1)
KEYMAP('n','gt', ':lua vim.lsp.buf.type_definition()<cr>', OPTION1)
KEYMAP('n','K', ':lua vim.lsp.buf.hover()<cr>', OPTION1)
KEYMAP('n','<leader>k', ':lua vim.lsp.buf.signature_help()<cr>', OPTION1)
KEYMAP('n','<leader>af', ':lua vim.lsp.buf.code_action()<cr>', OPTION1)
KEYMAP('n','<leader>rn', ':lua vim.lsp.buf.rename()<cr>', OPTION1)
