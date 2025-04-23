return {
  {
    'folke/flash.nvim',
    keys = {
      {
        'zk',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').jump()
        end,
        desc = 'Flash',
      },
      {
        'zp',
        mode = { 'c' },
        function()
          require('flash').toggle()
        end,
        'Toggle flash search',
      },
    },
  },
}
