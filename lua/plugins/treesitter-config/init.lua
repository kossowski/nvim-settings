vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html", "javascript", "typescript", "tsx", "css", "scss"},
  sync_install = false,
  highlight = {
    enable = true,              
    disable = { "html" },
    additional_vim_regex_highlighting = false,
  },
  autotag = {
    enable = true,
  },
  rainbow = {
    enable = true,
    disable = { "html" }, -- list of languages you want to disable the plugin for
    extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  autopairs = {
    enable = true
  }
}
