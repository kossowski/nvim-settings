vim.g.nvim_tree_quit_on_open = 1

require'nvim-tree'.setup {
  open_on_setup = false,
  git = {
    enable = false,
  },
  view = {
    width = 60,
    height = 60,
    side = 'right'
  }
}
