local M = {}

M.general = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode"},
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true }},
  }
}

M.dap = {
  n = {
    ["<leader>dc"] = { "<cmd>lua require('dap').continue()<CR>", "continue" },
    ["<leader>db"] = { "<cmd>lua require('dap').toggle_breakpoint()<CR>", "toggle breakpoint" },
    ["<leader>dr"] = { "<cmd>lua require('dap').repl.open()<CR>", "open repl" },
    ["<leader>dl"] = { "<cmd>lua require('dap').run_last()<CR>", "run last" },
    ["<leader>ds"] = { "<cmd>lua require('dap').step_over()<CR>", "step over" },
    ["<leader>di"] = { "<cmd>lua require('dap').step_into()<CR>", "step into" },
    ["<leader>do"] = { "<cmd>lua require('dap').step_out()<CR>", "step out" },
    ["<leader>du"] = {
      function()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "open debugging sidebar"
    },
  },
}

-- M.crates = {
  -- n = {
    -- ["<leader>rcu"] = {
    --   function()
    --     require("crates").upgrade_all_crates()
    --   end,
    --   "update crates"
    -- },
    -- ["<leader>rcs"] = {
    --   function()
    --     require("crates").show()
    --   end,
    --   "show crates"
    -- },
--   },
-- }

return M
