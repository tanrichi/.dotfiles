return {
  {
    "letieu/harpoon-lualine",
    dependencies = {
      {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local opts = {
        sections = {
          lualine_b = { "grapple" },
        },
      }
      return opts
    end,
  },
}
