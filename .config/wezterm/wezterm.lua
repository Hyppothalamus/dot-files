local utils = require("utils")
local colors = require("colors")
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

local function scheme_for_appearance(appearance)
	-- if appearance:find "Dark" then
	--     part = 'macchiato'
	--     return "Catppuccin Macchiato"
	-- else
	--     part = 'latte'
	--     return "Catppuccin Latte"
	-- end
	colors.part = "macchiato"
	return "Catppuccin Macchiato"
end

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = scheme_for_appearance(wezterm.gui.get_appearance())

config.font_size = 14

config.initial_cols = 120

config.window_frame = {
	font = wezterm.font({ family = "JetBrains Mono" }),
	font_size = 14,
	active_titlebar_bg = "#333333",
	inactive_titlebar_bg = "#333333",
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

wezterm.on("window-focus-changed", function()
	os.execute(
		"xdotool search -classname org.wezfurlong.wezterm | xargs -I{} xprop -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0 -id {}"
	)
end)

config.window_background_opacity = 0.75

-- this is used to color the tabs directly from the color scheme
local scheme = wezterm.get_builtin_color_schemes()["Catppuccin Macchiato"]
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

local SOLID_LEFT_ARROW = wezterm.nerdfonts.ple_left_half_circle_thick
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.ple_right_half_circle_thick

-- forat the bar
local function tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	-- return "YO mama"
	return tab_info.active_pane.title
end

local tabs_colors = {}
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local tab_index = tab.tab_id
	local local_colors = colors.catppuccin[colors.part]
	local title = tab_title(tab)
	-- local edge_background = '#181926'
	-- local edge_background = '#181926'
	local edge_background = scheme.tab_bar.background

	local background = ""
	local random_color = utils.Get_random_color(local_colors)
	if tabs_colors[tab_index] == nil then
		tabs_colors[tab_index] = random_color
		background = random_color
	else
		background = tabs_colors[tab_index]
	end
	local foreground = scheme.tab_bar.active_tab.fg_color

	if not tab.is_active then
		background = scheme.tab_bar.inactive_tab.bg_color
		foreground = scheme.tab_bar.inactive_tab.fg_color
	end
	if not tab.is_active and hover then
		background = scheme.tab_bar.inactive_tab_hover.bg_color
	end

	title = wezterm.truncate_right(title, max_width - 2)
	local edge_foreground = background

	return {
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = SOLID_LEFT_ARROW },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = SOLID_RIGHT_ARROW },
	}
end)

config.show_new_tab_button_in_tab_bar = false

wezterm.on("format-window-title", function(tab, pane, tabs, panes, config)
	return tab.active_pane.title
end)

-- and finally, return the configuration to wezterm
return config
