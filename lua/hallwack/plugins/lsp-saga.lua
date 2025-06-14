return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    local lspsaga = require("lspsaga")

    lspsaga.setup({
      ui = {
        theme = "round",
        border = "rounded",
        code_action = "💡",
        colors = {
          normal_bg = "#000000",
        },
      },
      preview = {
        lines_above = 0,
        lines_below = 10,
      },
      scroll_preview = {
        scroll_down = "<C-f>",
        scroll_up = "<C-b>",
      },
      finder = {
        max_height = 0.5,
        min_width = 30,
        force_max_height = false,
        keys = {
          jump_to = "p",
          expand_or_jump = "o",
          edit = { "o", "<CR>" },
          vsplit = "s",
          split = "i",
          tabe = "t",
          quit = { "q", "<ESC>" },
          close_in_preview = "<ESC>",
        },
      },
      code_action = {
        num_shortcut = true,
        keys = {
          quit = "q",
          exec = "<CR>",
        },
      },
    })
  end
}
