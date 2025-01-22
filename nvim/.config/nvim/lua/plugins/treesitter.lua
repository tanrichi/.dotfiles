return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "VeryLazy", "BufReadPost", "BufWritePost", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        autotag = {
          enable = true,
          filetypes = {
            "html",
            "javascript",
            "typescript",
            "markdown",
          },
        },
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- ensure these language parsers are installed
        ensure_installed = {
          "json",
          "javascript",
          "typescript",
          "tsx",
          "yaml",
          "html",
          "css",
          "markdown",
          "markdown_inline",
          "graphql",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "gitignore",
          "query",
          "vimdoc",
          "vue",
          "go",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  {
    "windwp/nvim-ts-autotag",
    event = { "VeryLazy", "BufReadPost", "BufWritePost", "BufNewFile" },
    opts = {},
  }
}
