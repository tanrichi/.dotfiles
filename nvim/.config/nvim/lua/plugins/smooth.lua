return {
  {
    "sphamba/smear-cursor.nvim",
    opts = {},
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup({ mappings = {} })

      local neoscroll = require("neoscroll")

      local keymap = {
        ["<C-u>"] = function()
          neoscroll.ctrl_u({ duration = 50 })
        end,
        ["<C-d>"] = function()
          neoscroll.ctrl_d({ duration = 50 })
        end,
        ["<C-b>"] = function()
          neoscroll.ctrl_b({ duration = 450 })
        end,
        ["zt"] = function()
          neoscroll.zt({ half_win_duration = 250 })
        end,
        ["zz"] = function()
          neoscroll.zz({ half_win_duration = 250 })
        end,
        ["zb"] = function()
          neoscroll.zb({ half_win_duration = 250 })
        end,
      }

      local modes = { "n", "v", "x" }
      for key, func in pairs(keymap) do
        vim.keymap.set(modes, key, func)
      end
    end,
  },
}
