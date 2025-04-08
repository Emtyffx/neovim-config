return {
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        background = {
          dark = 'dragon',
          light = 'lotus',
        },
        theme = 'dragon',
      }
      vim.cmd 'colorscheme kanagawa'
    end,
    priority = 1000,
  },
}
