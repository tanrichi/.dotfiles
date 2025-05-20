local keymap = vim.keymap

-- Move blocks
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move block down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move block up" })

-- Center cursor on move
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

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

-- LSP
keymap.set("n", "<leader>rr", "<cmd>LspRestart<CR>", { desc = "Restart LSP server" })

-- Duplicate line and comment the first line
keymap.set("n", "ycc", "yygccp", { remap = true })
