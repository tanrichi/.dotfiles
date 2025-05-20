return {
  "cbochs/grapple.nvim",
  opts = {
    scope = "git", -- also try out "git_branch"
  },
  event = { "BufReadPost", "BufNewFile" },
  cmd = "Grapple",
  keys = {
    { "<leader>ha", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
    { "<leader>he", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
    { "<leader>n", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
    { "<leader>p", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },

    { "<c-a>", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
    { "<c-s>", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
    { "<c-c>", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
    { "<c-q>", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
    { "<c-f>", "<cmd>Grapple select index=4<cr>", desc = "Select fourth tag" },
  },
}
