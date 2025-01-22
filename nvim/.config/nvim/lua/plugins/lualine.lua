return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    local icons = LazyVim.config.icons

    local opts = {
      sections = {
        lualine_c = {
          LazyVim.lualine.root_dir(),
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { LazyVim.lualine.pretty_path() },
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
}
