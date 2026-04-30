-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap
local opts = { noremap = true, silent = true }
-- local ls = require("luasnip")
map.set("n", "x", '"_x')

-- Increment/decrement
map.set("n", "+", "<C-a>")
map.set("n", "-", "<C-x>")

-- Select all
map.set("n", "<C-a>", "gg<S-v>G")

--rename
map.set("n", "<leader>rn", function()
  return ":IncRename "
end, { expr = true })
--move set
map.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")
map.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
map.set("n", "J", "mzJ`z")

--primeagen remaps
map.set("n", "<C-d", "<C-d>zz")
map.set("n", "<C-u", "<C-u>zz")
map.set("n", "n", "nzzzv")
map.set("n", "N", "Nzzzv")
map.set("x", "<leader>p", '"_dP')
map.set("n", "<leader>d", '"_dD')
map.set("v", "<leader>d", '"_dD')
map.set("n", "Q", "<nop>")

-- Save file and quit
map.set("n", "<Leader>w", ":update<Return>", opts)
map.set("n", "<Leader>q", ":quit<Return>", opts)
map.set("n", "<Leader>Q", ":qa<Return>", opts)

-- Tabs
map.set("n", "te", ":tabedit<Return>")
map.set("n", "<tab>", ":tabnext<Return>", opts)
map.set("n", "<s-tab>", ":tabprev<Return>", opts)
map.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
map.set("n", "ss", ":split<Return>", opts)
map.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
map.set("n", "sh", "<C-w>h")
map.set("n", "sk", "<C-w>k")
map.set("n", "sj", "<C-w>j")
map.set("n", "sl", "<C-w>l")

-- Resize window

map.set("n", "<C-S-Right>", "<C-w><", { silent = true })
map.set("n", "<C-S-Left>", "<C-w>>", { silent = true })
map.set("n", "<C-S-Up>", "<C-w>+", { silent = true })
map.set("n", "<C-S-Down>", "<C-w>-", { silent = true })

--Undo Tree
map.set("n", "<leader>ut", vim.cmd.UndotreeToggle)

-- Karabiner bug workaround
map.set("", "<Esc-gj>", "<nop>")
map.set("", "<Esc-gk>", "<nop>")
map.set("", "<Esc-k>", "<nop>")
map.set("", "<Esc-j>", "<nop>")

map.set("n", "-", require("oil").open, { desc = "Open oil in parent directory" })
