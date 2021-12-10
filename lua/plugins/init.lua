require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Colorschemes
  use {'folke/tokyonight.nvim', config = "vim.cmd('colorscheme tokyonight')"}

  -- Syntax Highlighting and Visual Plugins
  use {'norcalli/nvim-colorizer.lua', config = "require('plugins/colorizer-config')", event = "BufRead"}
  use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}, event = "BufWinEnter", config = "require('plugins/barbar-config')"}
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    event = "BufWinEnter",
    config = "require('plugins/lualine-config')"
  }
  use {'glepnir/dashboard-nvim', config = "require('plugins/dashboard-config')"}
  use {'lukas-reineke/indent-blankline.nvim', config = "require('plugins/blankline-config')", event = "BufRead"}

  -- Tree-Sitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', event = "BufWinEnter", config = "require('plugins/treesitter-config')"}
  use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
  use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}

  -- LSP and Autocomplete
  use {'neovim/nvim-lspconfig', event = "InsertEnter *", config = "require 'plugins/lsp'"}
  use {'onsails/lspkind-nvim'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'uga-rosa/cmp-dictionary', after = "nvim-cmp"}
  use {'hrsh7th/cmp-buffer', after = "nvim-cmp"}
  use {'hrsh7th/vim-vsnip', after = "nvim-cmp"}
  use {'windwp/nvim-autopairs', config = "require('plugins/autopair-config')", after = "nvim-cmp"}

  -- Version Control
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}, config = "require('plugins/gitsigns-config')"}

  -- Terminal Integration
  use {'akinsho/toggleterm.nvim', config = "require('plugins/toggleterm-config')", cmd = "ToggleTerm"}

  -- Navigation
  use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}, config = "require('plugins/telescope-config')", cmd = "Telescope"}
  use {'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons', config = "require('plugins/tree-config')"}

  -- Other
  use {'terrortylor/nvim-comment', config = "require('plugins/comment-config')", cmd = "CommentToggle"}
  use {'lukas-reineke/format.nvim', config = "require('plugins/format-config')"}
  use {'folke/which-key.nvim', event = "BufWinEnter", config = "require('plugins/whichkey-config')"}
end)
