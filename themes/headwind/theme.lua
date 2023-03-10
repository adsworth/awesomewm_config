---------------------------------
--  "headless" awesome theme   --
--  by Adi Sieker (adsworth)   --
--      based on Zenburn       --
--    By Adrian C. (anrxc)     --
---------------------------------
local gears = require("gears")

local themes_path = gears.filesystem.get_configuration_dir() .. "themes/headwind/"
local rnotification = require("ruled.notification")
local dpi = require("beautiful.xresources").apply_dpi

-- {{{ Main
local theme = {}

theme.wallpaper = "/home/adi/Nextcloud/photos/wallpapers/color_splash_mountains_abstract_2560x1440.png"
-- }}}

-- {{{ Styles
theme.font = "Noto Sans 12"

-- {{{ Colors
theme.fg_normal  = "#a1a1aa" -- tailwind zinc 400
theme.fg_focus   = "#d4d4d8" -- tailwind zinc 300
theme.fg_urgent  = "#d97706" -- tailwind amber 600 
theme.bg_normal  = "#18181b" -- tailwind zinc 900
theme.bg_focus   = "#3f3f46" -- tailwind zinc 700
theme.bg_urgent  = "#78350f" -- tailwind amber 900
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap         = dpi(5)
theme.border_width        = dpi(2)
theme.border_color_normal = "#155e75"
theme.border_color_active = "#0e7490"
theme.border_color_marked = "#0d9488"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_normal = theme.bg_normal
theme.titlebar_bg_focus  = theme.bg_focus
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = dpi(20)
theme.menu_width  = dpi(200)
-- }}}

theme.tasklist_plain_task_name=true

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themes_path .. "images/taglist/squarefz.png"
theme.taglist_squares_unsel = themes_path .. "images/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon      = themes_path .. "images/awesome-icon.png"
theme.menu_submenu_icon = themes_path .. "images/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = themes_path .. "images/layouts/tile.png"
theme.layout_tileleft   = themes_path .. "images/layouts/tileleft.png"
theme.layout_tilebottom = themes_path .. "images/layouts/tilebottom.png"
theme.layout_tiletop    = themes_path .. "images/layouts/tiletop.png"
theme.layout_fairv      = themes_path .. "images/layouts/fairv.png"
theme.layout_fairh      = themes_path .. "images/layouts/fairh.png"
theme.layout_spiral     = themes_path .. "images/layouts/spiral.png"
theme.layout_dwindle    = themes_path .. "images/layouts/dwindle.png"
theme.layout_max        = themes_path .. "images/layouts/max.png"
theme.layout_fullscreen = themes_path .. "images/layouts/fullscreen.png"
theme.layout_magnifier  = themes_path .. "images/layouts/magnifier.png"
theme.layout_floating   = themes_path .. "images/layouts/floating.png"
theme.layout_cornernw   = themes_path .. "images/layouts/cornernw.png"
theme.layout_cornerne   = themes_path .. "images/layouts/cornerne.png"
theme.layout_cornersw   = themes_path .. "images/layouts/cornersw.png"
theme.layout_cornerse   = themes_path .. "images/layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = themes_path .. "images/titlebar/close_focus.png"
theme.titlebar_close_button_normal = themes_path .. "images/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = themes_path .. "images/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "images/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active    = themes_path .. "images/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active   = themes_path .. "images/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "images/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themes_path .. "images/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active    = themes_path .. "images/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active   = themes_path .. "images/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "images/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themes_path .. "images/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active    = themes_path .. "images/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active   = themes_path .. "images/titlebar/floating_normal_active.svg"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "images/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themes_path .. "images/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = themes_path .. "images/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "images/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "images/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "images/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

function theme.wibar_shape(cr,w,h)
	return gears.shape.rounded_rect(cr,w,h,5)
end

function theme.client_shape(cr,w,h)
	return gears.shape.rounded_rect(cr,w,h,5)
end

client.connect_signal("manage", function (c)
    c.shape = theme.client_shape
end)

-- Set different colors for urgent notifications.
rnotification.connect_signal('request::rules', function()
    rnotification.append_rule {
        rule       = { urgency = 'critical' },
        properties = { bg = '#ff0000', fg = '#ffffff' }
    }
end)


return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
