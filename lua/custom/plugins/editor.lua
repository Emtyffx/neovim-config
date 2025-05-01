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
  {
    'vidocqh/auto-indent.nvim',
    opts = {
      indentexpr = function(lnum)
        require('nvim-treesitter.indent').get_indent(lnum)
      end,
    },
  },
  {
    'tpope/vim-fugitive',
    opts = {},
    keys = {
      {
        '<leader>gp',
        vim.cmd.Git 'push',
        desc = '[G]it [P]ush',
      },
      {
        '<leader>gP',
        vim.cmd.Git { 'pull', '--rebase' },
        desc = '[G]it [P]ush',
      },
    },
  },
}
