return {
  'windwp/nvim-autopairs',
  event = { "InsertEnter" },
  opts = {
    map_cr = true,
    check_ts = true,
    ts_config = {
      lua = { "string", "source" },
      javascript = { "string", "template_string" },
      svelte = { "string", "template_string" },
    },
    fast_wrap = {
      map = "<M-e>",
      chars = { "{", "[", "(", '"', "'", "<" },
      pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
      offset = 0,
      end_key = "$",
      keys = "qwertyuiopzxcvbnmasdfghjkl",
      check_comma = true,
      highlight = "PmenuSel",
      highlight_grey = "LineNr",
    },
  },
}
