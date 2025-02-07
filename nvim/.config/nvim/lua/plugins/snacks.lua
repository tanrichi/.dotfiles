return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		scroll = { enabled = false },
		animate = { enabled = false },
		zen = { enabled = false },
		win = { enabled = false },
		terminal = { enabled = false },
		dim = { enabled = false },
	},
  -- stylua: ignore
  keys = {
    -- Grep
    { "<leader>.", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
    { "<leader>,", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
    { "<leader>F", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
    { "<leader>/", LazyVim.pick("grep"), desc = "Grep (Root Dir)" },
    -- Find filess
    { "<leader><space>",function() Snacks.picker.buffers() end, desc = "Buffers" },
  }
,
}
