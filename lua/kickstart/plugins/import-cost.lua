return {
  'yardnsm/vim-import-cost',

  -- Ensure npm dependencies are installed
  build = 'npm install',

  -- Optional: Only load when needed
  ft = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },

  -- Optional: Set configuration defaults
  init = function()
    -- Enable virtual text by default (shows size inline)
    vim.g.import_cost_virtualtext = 1
    vim.g.import_cost_show_gzipped = 1 -- Show gzipped size
  end,

  -- Optional: Define keymaps
  keys = {
    { '<leader>ic', '<cmd>ImportCost<cr>', desc = 'Show import costs' },
    { '<leader>is', '<cmd>ImportCostSingle<cr>', desc = 'Show current import cost' },
    { '<leader>icx', '<cmd>ImportCostClear<cr>', desc = 'Clear import cost virtual text' },
  },
}
