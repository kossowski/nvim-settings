-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require'lspconfig'
local configs = require'lspconfig.configs'
local langservers = {
  "html",
  "cssls",
  "tsserver",
  "ls_emmet"
}

-- Setup Emmet
if not configs.ls_emmet then
  configs.ls_emmet = {
    default_config = {
      cmd = { 'ls_emmet', '--stdio' };
      filetypes = { 'html', 'css', 'scss', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' };
      root_dir = function(fname)
        return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end

for _, server in ipairs(langservers) do
  require'lspconfig'[server].setup {
    capabilities = capabilities
  }
end
