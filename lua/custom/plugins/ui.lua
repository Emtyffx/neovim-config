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
      {
        '<leader>e',
        function()
          vim.ui.input({ prompt = 'Enter path: ' }, function(input)
            if input and input ~= '' then
              vim.cmd('Oil ' .. input)
            end
          end)
        end,
        desc = 'Explorer (path)',
      },
    },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },
  {
    'sphamba/smear-cursor.nvim',
    opts = {},
  },
}
