return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "williamboman/mason.nvim",
    keys = {
      { "<leader>gg", false },
      { "<leader>gG", false },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      animate = { enabled = false },
    },
  },
}
