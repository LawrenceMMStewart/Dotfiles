return {
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    init = function()
      -- Enable filetype detection, plugins, and indentation
      vim.cmd([[
        filetype plugin indent on
      ]])

      -- VimTeX configuration
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_indent = { method = "latexindent" } -- Enable formatting
      vim.cmd([[
        autocmd BufWritePost *.tex silent! VimtexFormat -- Auto-format on save
      ]])
    end,
  },
}
