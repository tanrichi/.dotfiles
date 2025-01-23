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
		key = "b",
		action = act.ActivateTabRelative(-1),
	},
	{
		mods = "ALT",
		key = "n",
		action = act.ActivateTabRelative(1),
	},
	{
		mods = "ALT",
		key = "l",
		action = act.ShowLauncher,
	},
	{
		key = "l",
		mods = "LEADER",
		action = act.ShowLauncherArgs({
			flags = "FUZZY|WORKSPACES",
		}),
	},
	{
		key = "f",
		mods = "LEADER",
		action = act.SendString("y\n"),
	},
	-- Workspaces
	{
		key = "1",
		mods = "CTRL",
		action = act.SwitchToWorkspace({
			name = "Home",
		}),
	},
	{
		key = "2",
		mods = "CTRL",
		action = act.SwitchToWorkspace({
			name = "WE",
		}),
	},
	{
		key = "3",
		mods = "CTRL",
		action = wezterm.action_callback(function(window, pane)
			theme_switcher.theme_switcher(window, pane)
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
