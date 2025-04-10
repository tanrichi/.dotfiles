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
          lualine_b = {
            {
              "harpoon2",
              indicators = { "a", "s", "c", "q", "f" },
              active_indicators = { " a", " s", " c", " q", " f" },
              color_active = function()
                return { fg = Snacks.util.color("Special") }
              end,
              _separator = " ",
              no_harpoon = "Harpoon not loaded",
            },
          },
        },
      }
      return opts
    end,
  },
}
