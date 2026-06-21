vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    vim.opt_local.formatoptions:remove({ "o", "c", "r" })
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.fn.system("fcitx5-remote -c")
  end,
})

-- vim.api.nvim_create_autocmd("InsertLeave", {
--   callback = function()
--     print("InsertLeave fired")
--     vim.fn.jobstart({ "fcitx5-remote", "-c" }, { detach = true })
--   end,
-- })
