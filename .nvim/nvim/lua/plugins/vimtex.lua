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

      -- I Added -------------- Set the build directory to .build -----
      vim.g.vimtex_compiler_latexmk = { out_dir = ".build" }
    end,
  },
}
