-- This will run when a filetype of 'tex' is detected
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "tex", "sty", "cls" },
  callback = function()
    vim.opt.wrap = true -- Enable wrap specifically for .tex files
    vim.opt.textwidth = 80 -- Optional: Set textwidth for better wrapping control
  end,
})
