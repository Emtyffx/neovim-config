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
  {
    'ThePrimagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    setup = function()
      local harpoon = require 'harpoon'
      harpoon:setup {}
    end,
    lazy = false,
    keys = {
      {
        '<leader>ah',
        function()
          local harpoon = require 'harpoon'
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = 'open harpoon list(telescope)',
      },
      {
        '<leader>ar',
        function()
          local harpoon = require 'harpoon'
          harpoon:list():add()
        end,
        desc = 'Add file to harpoon',
      },
    },
  },
}
