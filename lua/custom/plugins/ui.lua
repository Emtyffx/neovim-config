return {
  {
    'stevearc/oil.nvim',
    opts = {
      view_options = {
        show_hidden = true,
      },
      float = {
        padding = 5,
      },
    },
    config = function(_, opts)
      require('oil').setup(opts)
    end,
    -- Optional dependencies
    keys = {

      { '-', '<cmd>Oil --float<CR>', desc = 'Explorer' },
    },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },
}
