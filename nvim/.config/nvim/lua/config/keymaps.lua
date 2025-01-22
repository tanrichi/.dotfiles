-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.g.mapleader = " "

vim.g.maplocalleader = ","
local keymap = vim.keymap -- for conciseness

-- Move blocks
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move block down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move block up" })

-- Center cursor on move
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Better Yank
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Normal Yank" })
keymap.set({ "n", "v" }, "<leader>Y", [["+Y]], { desc = "Yank to clipboard" })
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

keymap.set("x", "<leader>p", "p", { desc = "Past last yank and replace with delete selected text" })
keymap.set("x", "p", [["_dP]], { desc = "Delete selected text and past last yank" })

-- Block arrow keys in normal mode for practice
keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Disable Capslock
-- keymap.set({ "n", "v", "i" }, "<Capslock>", "<Nop>")

-- Select all
keymap.set("n", "==", "gg<S-v>G", { desc = "Select all" })

-- close buffer
keymap.set("n", "<leader>q", "<cmd>bd<CR>", { desc = "Close Buffer" })

-- Replace word under cursor across entire buffer
keymap.set(
  "n",
  "<leader>s",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word under cursor" }
)

-- Stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Focus left window" }) -- split window vertically
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Focus right window" }) -- split window vertically

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- LSP
keymap.set("n", "<leader>rr", "<cmd>LspRestart<CR>", { desc = "Restart LSP server" })

-- Marks
keymap.set("n", "<leader>j", "`", { desc = "Go to local mark" })
keymap.set("n", "<leader>dm", ":delmarks a-z<CR>", { desc = "Clear local marks" })
