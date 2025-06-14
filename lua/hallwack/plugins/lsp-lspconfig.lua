return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    --[[ vim.lsp.config("denols", {
      cmd = { "deno", "lsp" },
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      root_markers = { 'deno.json', 'deno.jsonc' },
    }) ]]

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
      "eslint_d",
      "prettierd"
    })
  end
}
