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
    command = 'Git',
    opts = {},
    keys = {
      {
        '<leader>gp',
        '<cmd>Git push<cr>',
        desc = '[G]it [P]ush',
      },
      {
        '<leader>gP',
        '<cmd>Git pull --rebase<cr>',
        desc = '[G]it [P]ush',
      },
      {
        '<leader>go',
        ':Git push -u origin ',
        desc = '[G]it [O]rigin push',
      },
      {
        '<leader>gc',

        function()
          vim.ui.input({ prompt = 'Enter commit message(empty if no message): ' }, function(input)
            if input and input ~= '' then
              vim.cmd('Git commit -m "' .. input .. '"')
            else
              vim.cmd 'Git commit'
            end
          end)
        end,
        desc = '[G]it [C]ommit',
      },
      {
        '<leader>ga',
        '<cmd>Git add --all<cr>',
        desc = '[G]it [A]dd All',
      },
    },
  },
}
