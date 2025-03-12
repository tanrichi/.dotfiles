local wezterm = require("wezterm")

local theme_switcher = require("theme_switcher")

local keymaps = {}
local act = wezterm.action
keymaps.leader = { key = "Home", mods = "", timeout_milliseconds = 1000 }
keymaps.keys = {
	{
		mods = "ALT",
		key = "w",
		action = act.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "ALT|SHIFT",
		key = "w",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	{
		mods = "ALT",
		key = "q",
		action = act.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "ALT|SHIFT",
		key = "q",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	{
		mods = "ALT",
		key = "t",
		action = act({ SpawnTab = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "LEADER",
		action = act.SendKey({ key = "g", mods = "ALT" }),
	},
	{
		key = "f",
		mods = "LEADER",
		action = act.SendString("y\n"),
	},
	{
		key = "1",
		mods = "CTRL",
		action = act.SwitchToWorkspace({
			name = "Home",
		}),
	},
	{
		key = "Space",
		mods = "LEADER",
		action = act.SendKey({ key = "g", mods = "ALT" }),
	},
	{
		key = "3",
		mods = "CTRL",
		action = wezterm.action_callback(function(window, pane)
			theme_switcher.theme_switcher(window, pane)
		end),
	},

	{
		mods = "ALT",
		key = "l",
		action = wezterm.action_callback(function(win, pane)
			wezterm.run_child_process({ "ls", "-l" })
		end),
	},
}

for i = 1, 9 do
	table.insert(keymaps.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

return keymaps
