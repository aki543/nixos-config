-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
vim.g.mapleader = " "

-- UI
vim.opt.number = true
vim.opt.title = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 3
vim.opt.scrolloff = 10
vim.opt.splitkeep = "cursor"
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.timeoutlen = 300
vim.opt.mouse = ""

-- Indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.breakindent = true

-- Search
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.inccommand = "split"

-- Completion
vim.opt.completeopt = { "menu", "menuone", "noselect" }

-- Files
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.backupskip = { "/tmp/*", "/private/tmp/*" }
vim.opt.path:append({ "**" })

vim.opt.wildignore:append({
  "*/node_modules/*",
  "*/.git/*",
  "*/dist/*",
  "*/build/*",
  "*/coverage/*",
  "*/.next/*",
  "*/target/*",
  "*.o",
  "*.obj",
  "*.pyc",
  "*.class",
})

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Editing
vim.opt.wrap = false
vim.opt.backspace = { "start", "eol", "indent" }

-- Shell
vim.opt.shell = "zsh"

--- Clipboard
vim.opt.clipboard = "unnamedplus"

vim.g.lazyvim_picker = "snacks"
