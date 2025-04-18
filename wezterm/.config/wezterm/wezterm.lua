local wezterm = require("wezterm")
local config = {}

config = wezterm.config_builder()

-- Init Workspaces
local workspaces = require("workspaces")
workspaces.start_workspaces()

-- Color schemes
local color_scheme = require("color_scheme")
config.color_scheme = color_scheme

-- config.font = wezterm.font("0xProtoNerdFont")

-- config.font = wezterm.font("Fira Code")

-- config.font = wezterm.font("Hack Nerd Font")

config.font = wezterm.font({
	family = "Iosevka Fixed",
	stretch = "Expanded",
	weight = "Medium",
})

-- Core configs
local core = require("core")
for k, v in pairs(core) do
	config[k] = v
end

-- Keymaps
local keymaps = require("keymaps")
for k, v in pairs(keymaps) do
	config[k] = v
end

-- Events
local events = require("events")
events.setup()

return config
