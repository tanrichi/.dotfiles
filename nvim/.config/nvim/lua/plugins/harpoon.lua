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
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        save_on_toggle = true,
      },
    },
    keys = function()
      local keys = {
        {
          "<leader>a",
          function()
            require("harpoon"):list():add()
          end,
          desc = "Harpoon File",
        },
        {
          "<leader>A",
          function()
            require("harpoon"):list():clear()
          end,
          desc = "Harpoon Clear",
        },
        {
          "<leader>h",
          function()
            local harpoon = require("harpoon")
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = "Harpoon Quick Menu",
        },
      }

      local harpoonKeys = { "<C-a>", "<C-s>", "<C-c>", "<C-q>", "C-f" }

      for i = 1, 5 do
        table.insert(keys, {
          "<leader>" .. harpoonKeys[i],
          function()
            require("harpoon"):list():replace_at(i)
          end,
          desc = "Harpoon Replace File " .. i,
        })

        table.insert(keys, {
          harpoonKeys[i],
          function()
            require("harpoon"):list():select(i)
          end,
          desc = "Harpoon Add File " .. i,
        })
      end
      return keys
    end,
  },
}
