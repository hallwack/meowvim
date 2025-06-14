return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        --[[ "denols", ]]
        "tailwindcss",
        "prismals",
        "html",
        "cssls",
        "svelte",
        "astro",
        "jsonls",
        "intelephense",
      },
      automatic_installation = true, -- not the same as ensure_installed
      automatic_enable = false,      -- removes multiple lsp servers
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettierd",
        "blade-formatter",
        "eslint_d",
        "quick_lint_js",
      },
    })
  end,
}
