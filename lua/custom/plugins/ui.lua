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
        '<leader>-',
        function()
          vim.ui.input({ prompt = 'Enter path: ' }, function(input)
            if input and input ~= '' then
              vim.cmd('Oil ' .. input .. ' --float')
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
    opts = {
      diagnostics = 'nvim-lsp',
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match 'error' and ' ' or ' '
        return ' ' .. icon .. count
      end,
    },
  },
  {
    'sphamba/smear-cursor.nvim',
    opts = {},
  },
}
