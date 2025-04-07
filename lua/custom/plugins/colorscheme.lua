return {
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        compile = false,
        theme = 'dragon',
      }
      vim.cmd.colorscheme 'kanagawa'
    end,
  },
}
