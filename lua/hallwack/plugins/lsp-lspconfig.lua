return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.lsp.enable({
      "lua_ls",
      "ts_ls",
      "tailwindcss",
      "prismals",
      "html",
      "cssls",
      "svelte",
      "astro",
      "jsonls",
      "quick_lint_js",
      "intelephense",
      "yamlls",
      "eslint_d",
      "prettierd",
      "docker_compose_language_service",
      "dockerls",
      "basedpyright",
      "ruff",
      "laravel_ls"
      --[[ "sqlls" ]]
    })
  end
}
