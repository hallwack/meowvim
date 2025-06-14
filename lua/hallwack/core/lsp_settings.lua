local border = {
  { "┌", "FloatBorder" },
  { "─", "FloatBorder" },
  { "┐", "FloatBorder" },
  { "│", "FloatBorder" },
  { "┘", "FloatBorder" },
  { "─", "FloatBorder" },
  { "└", "FloatBorder" },
  { "│", "FloatBorder" },
}

vim.diagnostic.config({
  --[[ virtual_lines = true, ]]
  -- Select either virtual lines or text below otherwise it gets messy
  virtual_text = {
    spacing = 4,
    prefix = "● ", -- This is fine as a string
  },

  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "ErrorMsg",
      [vim.diagnostic.severity.WARN] = "WarningMsg",
    },
  },
})

-- define common keybindings

local key_mappings = {
  { "gr",         "<cmd>lua require('telescope.builtin').lsp_references()<cr>", "Show LSP references" },
  { "gD",         "<cmd>lua vim.lsp.buf.declaration()<CR>",                     "Go to declaration" },
  { "gd",         "<cmd>Lspsaga goto_definition<CR>",                           "Show LSP definitions" },
  { "gi",         "<cmd>lua vim.lsp.buf.implementation()<CR>",                  "Show LSP implementations" },
  --[[ { "gt", "<cmd>FzfLua lsp_typedefs<CR>",                               "Show LSP type definitions" }, ]]
  { "<leader>ca", "<cmd>Lspsaga code_action<CR>",                               "Code actions" },
  { "<leader>rn", vim.lsp.buf.rename,                                           "Smart rename" },
  { "<leader>D",  "<cmd>Lspsaga show_cursor_diagnostics<CR>",                   "For LSP show diagnostics (per cursor)" },
  {
    "<leader>d",
    function()
      vim.diagnostic.open_float({ border = "rounded" })
    end,
    "Show line diagnostics",
  },
  {
    "[d",
    function()
      vim.diagnostic.jump({ count = -1, float = true })
    end,
    "Go to previous diagnostic",
  },
  {
    "]d",
    function()
      vim.diagnostic.jump({ count = 1, float = true })
    end,
    "Go to next diagnostic",
  },
  {
    "K",
    function()
      vim.lsp.buf.hover({ border = border })
    end,
    "Show documentation",
  },
  { "<leader>lrs", ":LspRestart<CR>", "Restart LSP" },
  {
    "<leader>td",
    function()
      local is_enabled = vim.diagnostic.is_enabled()
      vim.diagnostic.enable(not is_enabled)
    end,
    "Toggle Diagnostics for this repo",
  },
}
-- set all keybindings
for _, mapping in ipairs(key_mappings) do
  local opts = { noremap = true, silent = true }
  vim.keymap.set("n", mapping[1], mapping[2], vim.tbl_extend("force", opts, { desc = mapping[3] }))
end
