return {
  {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    keys = {
      {
        '<leader>q',
        '<cmd>Trouble qflist toggle<cr>',
        desc = '[Q]uickfix List (Trouble)',
      },
      {
        '<leader>ds',
        '<cmd>Trouble symbols toggle<cr>',
        desc = '[D]ocument [S]ymbols (Trouble)',
      },
      {
        '<leader>e',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
    },
  },
}
