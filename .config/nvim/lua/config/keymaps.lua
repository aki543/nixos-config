local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
-- Paste
keymap.set("n", "<Leader>P", '"0P')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("v", "<Leader>p", "_dp")
-- Change
keymap.set("n", "<Leader>c", "_c")
keymap.set("n", "<Leader>C", "_C")
keymap.set("v", "<Leader>c", "_c")
keymap.set("v", "<Leader>C", "_C")
-- Delete
keymap.set("n", "<Leader>d", "_d")
keymap.set("n", "<Leader>D", "_D")
keymap.set("v", "<Leader>d", "_d")
keymap.set("v", "<Leader>D", "_D")

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Resize window
keymap.set("n", "<C-Left>", "<C-w><")
keymap.set("n", "<C-Right>", "<C-w>>")
keymap.set("n", "<C-Up>", "<C-w>+")
keymap.set("n", "<C-Down>", "<C-w>-")

-- Esc
keymap.set("i", "jk", "<ESC>")

-- Disables arrorw key movement in normal, insert, and visual modes by mapping them to <Nop>
vim.keymap.set({ "n", "i", "v" }, "<Up>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Down>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Left>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({ "n", "i", "v" }, "<Right>", "<Nop>", { noremap = true, silent = true })

-- -- Custom
-- vim.keymap.set("x", "*", function()
--   vim.cmd('normal! "zy')
--   local text = vim.fn.getreg("z")
--   text = vim.fn.escape(text, [[\/.*$^~[]]])
--   vim.fn.setreg("/", text)
--   vim.cmd("normal! n")
-- end, { silent = true })
