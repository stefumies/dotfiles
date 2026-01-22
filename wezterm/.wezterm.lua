local function color_scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Tokyo Night"
	else
		return "Toyko Night Light (Gogh)"
	end
end

local wezterm = require("wezterm")
local act = wezterm.action

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font = wezterm.font("VictorMono Nerd Font")
config.font_size = 14.0
config.color_scheme = color_scheme_for_appearance(wezterm.gui.get_appearance())
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
	left = 0,
	right = 0,
	top = 2,
	bottom = 0,
}

config.ssh_backend = "Ssh2"
config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 0.95

config.keys = {
	{
		key = "s",
		mods = "CTRL | SHIFT",
		action = act.ShowLauncherArgs({
			flags = "FUZZY|DOMAINS",
		}),
	},
	{
		key = "h",
		mods = "ALT|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "v",
		mods = "ALT|SHIFT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "ALT",
		action = act.ActivatePaneDirection("Left"),
	},
	{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },
	{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },
    {
        key = 'E',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.PromptInputLine  {
            description = 'Enter Command: ',
            action = wezterm.action_callback(function(_, pane,line)
                if line then
                    pane:send_text(line .. '\n')
                end
            end)
        },
    },
}

config.ssh_domains = {
	{
		name = "vfnew",
		remote_address = "10.93.50.13",
		username = "stephend",
		-- Multiplexing "None" ensures it acts like a standard SSH client
		multiplexing = "None",
		ssh_option = {
			identityfile = wezterm.home_dir .. "/.ssh/id_rsa",
			-- WezTerm's libssh backend uses these options to allow older keys
			hostkeyalgorithms = "ssh-rsa",
			pubkeyacceptedalgorithms = "ssh-rsa",
		},
	},
	{
		name = "vfold",
		remote_address = "10.93.50.17",
		username = "stephend",
		multiplexing = "None",
		ssh_option = {
			identityfile = wezterm.home_dir .. "/.ssh/id_rsa",
			hostkeyalgorithms = "ssh-rsa",
			pubkeyacceptedalgorithms = "ssh-rsa",
		},
	},
	{
		name = "judge",
		remote_address = "10.93.73.22",
		username = "stephend",
		multiplexing = "None",
		ssh_option = {
			identityfile = wezterm.home_dir .. "/.ssh/id_rsa",
			hostkeyalgorithms = "ssh-rsa",
			pubkeyacceptedalgorithms = "ssh-rsa",
		},
	},
}



return config
