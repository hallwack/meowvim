return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
    'fang2hou/blink-copilot',
    {
      'L3MON4D3/LuaSnip', version = 'v2.*'
    },
    {
      "xzbdmw/colorful-menu.nvim",
      config = function()
        require("colorful-menu").setup({})
      end
    }
  },

  version = '1.*',

  opts = {
    signature = { enabled = true },
    keymap = {
      preset = 'default',
      ["<C-k>"] = { 'select_prev', 'fallback' },
      ["<C-j>"] = { 'select_next', 'fallback' },
      ["<C-g>"] = { 'show_signature', 'hide_signature', 'fallback' },
      ['<Tab>'] = { 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
      ['<C-w>'] = { 'select_prev', 'fallback' },
      ['<C-s>'] = { 'select_next', 'fallback' },
      ['<CR>'] = { 'accept', 'fallback' },
    },

    snippets = { preset = 'luasnip' },

    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      documentation = {
        auto_show = true
      },

      menu = {
        draw = {
          columns = { { "kind_icon" }, { "label", gap = 1 } },
          components = {
            label = {
              text = function(ctx)
                return require("colorful-menu").blink_components_text(ctx)
              end,
              highlight = function(ctx)
                return require("colorful-menu").blink_components_highlight(ctx)
              end,
            },
          },
        }
      }
    },
    sources = {
      default = { 'copilot', 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = 100,
          async = true,
        }
      }
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" },
}
