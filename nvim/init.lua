-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Lawrence note to self: not sure if i need this or not. Maybe remove.
require("plugins.vimtex")

-- Configure `ruff-lsp`. (I added the below)
-- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ruff_lsp
-- For the default config, along with instructions on how to customize the settings
-- require("lspconfig").ruff_lsp.setup({
--   init_options = {
--     settings = {
--       -- Any extra CLI arguments for `ruff` go here.
--       args = {},
--     },
--   },
-- })
--
--
local lspconfig = require("lspconfig")
lspconfig.rust_analyzer.setup({
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ["rust-analyzer"] = {},
  },
})

-- lawrence: so sbatch and sh files us the unix formatting (needed for slurm)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sh", "batch" }, -- Match both .sh and .batch files
  callback = function()
    vim.opt_local.fileformats = { "unix" } -- Ensure Unix line endings (LF)
  end,
})
