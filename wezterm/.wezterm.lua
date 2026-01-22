local function color_scheme_for_appearance(appearance)
    if appearance:find "Dark" then
        return "Tokyo Night"
    else
        return "Toyko Night Light (Gogh)"
    end
end

local wezterm = require 'wezterm'

local config = {}
if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.font_size = 14.0
config.color_scheme = color_scheme_for_appearance(wezterm.gui.get_appearance())
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
    left = 0,
    right = 0,
    top = 2,
    bottom = 0,
}

config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 0.95

return config
