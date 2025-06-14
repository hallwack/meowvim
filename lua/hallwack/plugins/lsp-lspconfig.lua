return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    vim.lsp.config("quick_lint_js", {
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    })

    vim.lsp.config("tailwindcss", {
      settings = {
        tailwindCSS = {
          experimental = {
            classRegex = {
              { "clsx\\(([^)]*)\\)",    "(?:'|\"|`)([^']*)(?:'|\"|`)" },
              { "cva\\(([^)]*)\\)",     "[\"'`]([^\"'`]*).*?[\"'`]" },
              { "cn\\(([^)]*)\\)",      "[\"'`]([^\"'`]*).*?[\"'`]" },
              { "tw\\(([^)]*)\\)",      "[\"'`]([^\"'`]*).*?[\"'`]" },
              { "twMerge\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
            },
          },
        },
      },
    })

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
