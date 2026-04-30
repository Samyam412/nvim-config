-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " " -- Sets the leader key to spacebar
vim.opt.autoindent = true -- Copies indent from current line when starting a new line
vim.opt.backspace = { "start", "eol", "indent" } -- Allows backspace to delete indentation, line endings, and text before insert mode started

vim.opt.backup = false -- Disables backup files
vim.opt.breakindent = true -- Preserves indentation in wrapped lines
vim.opt.cmdheight = 0 -- Hides command line when not in use
vim.opt.encoding = "utf-8" -- Sets internal encoding
vim.opt.expandtab = true -- Converts tabs to spaces
vim.opt.cursorline = false -- Highlights current line

vim.opt.fileencoding = "utf-8" -- Sets file encoding for saving
vim.opt.formatoptions:append({ "r" }) -- Automatically inserts comment leader after hitting enter in insert mode

vim.opt.ignorecase = true -- Case-insensitive search
vim.opt.inccommand = "split" -- Shows live preview of substitute command in split window
vim.opt.incsearch = true -- Shows search matches as you type

vim.opt.isfname:append("@-@") -- Allows @ in filenames
vim.opt.laststatus = 0 -- Hides status line
vim.opt.number = true -- Shows line numbers
vim.opt.path:append({ "**" }) -- Allows finding files recursively in subdirectories

vim.opt.scrolloff = 8 -- Keeps 8 lines visible above/below cursor while scrolling
vim.opt.shiftwidth = 4 -- Sets indentation width to 4 spaces
vim.opt.showcmd = true -- Shows partial command in status line
vim.opt.signcolumn = "yes" -- Always shows sign column (used by git/diagnostics)

vim.opt.smartindent = true -- Enables smart autoindenting
vim.opt.smarttab = true -- Smart handling of tab key
vim.opt.softtabstop = 2 -- Number of spaces that tab counts for while editing
vim.opt.splitkeep = "cursor" -- Keeps cursor position when splitting windows
vim.opt.splitright = true -- Opens vertical splits to the right

vim.opt.swapfile = false -- Disables swap files
vim.opt.tabstop = 4 -- Sets tab width to 4 spaces
vim.opt.title = true -- Sets window title to current file
vim.opt.termguicolors = true -- Enables 24-bit RGB color

vim.opt.undofile = true -- Enables persistent undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Sets directory for persistent undo files
vim.opt.updatetime = 50 -- Reduces update time to 50ms (faster response)

vim.opt.wildignore:append({ "*/node_modules/*" }) -- Ignores node_modules in file finding
vim.opt.wrap = true -- Enables line wrapping
vim.scriptencoding = "utf-8" -- Sets script encoding

vim.g.snacks_animate = false --disable animations
vim.g.trouble_lualine = false --disable lualine
