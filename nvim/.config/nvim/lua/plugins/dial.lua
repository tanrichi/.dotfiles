return {
  "monaqa/dial.nvim",
  keys = {
    {
      "<F1>",
      function()
        require("dial.map").manipulate("increment", "normal")
      end,
      expr = true,
      desc = "Increment",
      mode = { "n", "v" },
    },
    {
      "<F2>",
      function()
        require("dial.map").manipulate("decrement", "normal")
      end,
      expr = true,
      desc = "Decrement",
      mode = { "n", "v" },
    },
    {
      "g<F1>",
      function()
        require("dial.map").manipulate("increment", "gnormal")
      end,
      expr = true,
      desc = "Increment",
      mode = { "n", "v" },
    },
    {
      "g<F2>",
      function()
        require("dial.map").manipulate("decrement", "gnormal")
      end,
      expr = true,
      desc = "Decrement",
      mode = { "n", "v" },
    },
  },
}
