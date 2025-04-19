return {
  {
    'epwalsh/obsidian.nvim',
    opts = {
      workspaces = {
        {
          name = 'Study',
          path = '~/Study',
        },
      },
    },
    keys = {
      { '<leader>of', '<cmd>ObsidianQuickSwitch<CR>', mode = 'n', desc = 'Obsidian quick switch' },
      { '<leader>os', '<cmd>ObsidianNew<CR>', mode = 'n', desc = 'Obsidian new file' },
    },
  },
}
