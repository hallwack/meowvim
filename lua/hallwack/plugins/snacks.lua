return {
  "folke/snacks.nvim",
  priority = 100000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    input = {
      enabled = true,
      icon = " ",
      icon_hl = "SnacksInputIcon",
      icon_pos = "left",
      prompt_pos = "title",
      win = { style = "input" },
      expand = true,
    },
    dashboard = { enabled = true },
    explorer = { enabled = true },
    notifier = { enabled = true },
    scroll = { enabled = true },
    git = { enabled = true },
    picker = { enabled = true },
    terminal = {
      start_insert = false,
      auto_insert = false
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer({
          layout = {
            layout = {
              position = "right",
            },
          }
        })
      end,
      desc = "File Explorer"
    },

    { "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
    { "<leader>gl", function() Snacks.picker.git_log() end,      desc = "Git Log" },
    { "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
    { "<leader>gs", function() Snacks.picker.git_status() end,   desc = "Git Status" },
    { "<leader>gS", function() Snacks.picker.git_stash() end,    desc = "Git Stash" },
    { "<leader>gd", function() Snacks.picker.git_diff() end,     desc = "Git Diff (Hunks)" },
    { "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },
    { "<leader>ga", function() Snacks.git.blame_line() end,      desc = "Git Blame Line" },

    { "<M-t>",      function() Snacks.terminal() end,            desc = "Terminal" },
    { "<M-w>",      function() Snacks.terminal.toggle() end,     desc = "Toggle Terminal" },
  }
}
