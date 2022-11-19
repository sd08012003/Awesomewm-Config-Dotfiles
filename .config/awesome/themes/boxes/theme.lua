local gears = require("gears")
local lain = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi = require("beautiful.xresources").apply_dpi

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme = {}
theme.dir = os.getenv("HOME") .. "/.config/awesome/themes/boxes"
theme.wallpaper = theme.dir .. "/wall.jpg"
theme.font = "Source Code Pro 9"
-- theme.font                                      = "NotoSansMono Nerd Font 9"
theme.taglist_font = "Source Code Pro 9"
theme.tasklist_font = "Source Code Pro 9"
-- theme.orange = "#efff73"
theme.orange = "#e80c97"
theme.pink = "#FA1950"
theme.blue = "#a3f7ff"
theme.red = "#f0006c"
theme.accent = "#4aa1f7"
theme.white = "#ffffff"
-- theme.white                                     = colors.white
theme.indigo = "#9fa8da"
theme.green = "#5e3dff"
-- theme.light_green = "#69f0ae"
theme.light_green = "#4aa1f7"
theme.teal = "#00d8f0"
theme.purple = "#ea80fc"
theme.amber = "#ffecb3"
theme.dark = "#272727"
theme.transparent = "#E6000000"

theme.fg_normal = "#D7D7D7"
theme.fg_focus = theme.accent
theme.bg_normal = theme.dark
theme.bg_focus = theme.dark
theme.fg_urgent = "#CC9393"
theme.bg_urgent = "#2A1F1E"
theme.border_width = dpi(1)
theme.border_normal = theme.dark
theme.border_focus = theme.orange

theme.taglist_fg_focus = theme.dark
theme.taglist_bg_focus = theme.orange

theme.taglist_fg_occupied = theme.dark
theme.taglist_bg_occupied = theme.light_green

theme.taglist_fg_empty = theme.dark
theme.taglist_bg_empty = theme.indigo
theme.taglist_fg_urgent = theme.pink

theme.tasklist_plain_task_name = true
theme.tasklist_disable_icon = false
theme.tasklist_fg_focus = theme.accent
theme.tasklist_bg_focus = theme.dark
theme.bg_systray = "#404040"
theme.menu_border_width = 2
theme.menu_fg_normal = "#aaaaaa"
theme.menu_fg_focus = theme.dark
theme.menu_bg_focus = theme.amber
theme.menu_bg_normal = "#00000090"
theme.menu_height = dpi(30)
theme.menu_width = dpi(200)
theme.menu_submenu_icon = theme.dir .. "/icons/submenu.png"
theme.awesome_icon = theme.dir .. "/icons/awesome.png"
theme.taglist_squares_sel = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile = theme.dir .. "/icons/tile.png"
theme.layout_tileleft = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv = theme.dir .. "/icons/fairv.png"
theme.layout_fairh = theme.dir .. "/icons/fairh.png"
theme.layout_spiral = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle = theme.dir .. "/icons/dwindle.png"
theme.layout_max = theme.dir .. "/icons/max.png"
theme.layout_fullscreen = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier = theme.dir .. "/icons/magnifier.png"
theme.widget_temp = theme.dir .. "/icons/temp.png"
theme.widget_volumeicon = theme.dir .. "/icons/vol.png"
theme.widget_mem = theme.dir .. "/icons/mem.png"
theme.layout_floating = theme.dir .. "/icons/floating.png"
theme.tasklist_plain_task_name = true
theme.widget_cpu = theme.dir .. "/icons/cpu.png"
theme.tasklist_disable_icon = true
theme.useless_gap = dpi(2)
theme.titlebar_close_button_focus = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.widget_net = theme.dir .. "/icons/net.png"
theme.battery_full = theme.dir .. "/icons/battery_black.png"

-- awful.util.tagnames   = { "𝟏", "𝟐", "𝟑", "𝟒", "𝟓", "𝟔"}
awful.util.tagnames = { " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 " }
-- awful.util.tagnames   = { "a", "w", "e", "s", "o", "m", "e"}
-- awful.util.tagnames   = { "A", "W", "E", "S", "O", "M", "E"}

local markup = lain.util.markup
local separators = lain.util.separators
local gray = "#9E9C9A"
local arrow = separators.arrow_left

-- Textclock
local mytextclock = wibox.widget.textclock(" %I:%M ")
mytextclock.font = theme.font

-- Calendar
theme.cal = lain.widget.cal({
  attach_to = { mytextclock },
  notification_preset = {
    font = theme.font,
    fg = theme.fg_normal,
    bg = theme.bg_normal,
  },
})

-- local clockicon = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.watch("date +' %d %b %a %I:%M '", 10, function(widget, stdout)
  widget:set_markup(" " .. markup.font(theme.font, markup(theme.dark, stdout)))
end)

-- Battery
local bat_icon = wibox.widget.imagebox(theme.battery_full)
local bat = lain.widget.bat({
  settings = function(mem)
    bat_header = ""
    -- bat_header = ""
    bat_p = bat_now.perc .. " "
    widget:set_markup(markup.font(theme.font, markup(theme.dark, bat_header .. bat_p)))
  end,
})

local vol_icon = wibox.widget.imagebox(theme.widget_volumeicon)
-- ALSA volume
theme.volume = lain.widget.alsa({
  --togglechannel = "IEC958,3",
  --    bg = theme.red
  settings = function()
    header = "  "
    vlevel = volume_now.level

    if volume_now.status == "off" then
      vlevel = vlevel .. "M "
    else
      vlevel = vlevel .. " "
    end
    widget:set_markup(markup.font(theme.font, markup(theme.dark, header .. vlevel)))
  end,
})

-- Separators
local first = wibox.widget.textbox('<span font="Terminus 4"> </span>')
local empty = wibox.container.background(
  wibox.container.margin(wibox.widget({ first, layout = wibox.layout.align.horizontal }), dpi(3), dpi(3)),
  theme.bg_systray
)
local barheight = dpi(18)

local barcolor = gears.color({
  type = "linear",
  from = { barheight, 0 },
  to = { barheight, barheight },
  stops = { { 0, theme.dark }, { 1, theme.dark }, { 1, "#1A1A1A" } },
})

theme.titlebar_bg = barcolor

theme.titlebar_bg_focus = gears.color({
  type = "linear",
  from = { barheight, 0 },
  to = { barheight, barheight },
  stops = { { 0, theme.bg_normal }, { 0.5, theme.border_normal }, { 1, "#492417" } },
})

local taglist_buttons = gears.table.join(
  awful.button({}, 1, function(t)
    t:view_only()
  end),
  awful.button({ modkey }, 1, function(t)
    if client.focus then
      client.focus:move_to_tag(t)
    end
  end),
  awful.button({}, 3, awful.tag.viewtoggle),
  awful.button({ modkey }, 3, function(t)
    if client.focus then
      client.focus:toggle_tag(t)
    end
  end),
  awful.button({}, 4, function(t)
    awful.tag.viewnext(t.screen)
  end),
  awful.button({}, 5, function(t)
    awful.tag.viewprev(t.screen)
  end)
)

function theme.at_screen_connect(s)
  -- Quake application
  s.quake = lain.util.quake({ app = awful.util.terminal })

  -- If wallpaper is a function, call it with the screen
  local wallpaper = theme.wallpaper
  if type(wallpaper) == "function" then
    wallpaper = wallpaper(s)
  end
  gears.wallpaper.maximized(wallpaper, s, true)

  -- Tags
  awful.tag(awful.util.tagnames, s, awful.layout.layouts[1])

  s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)
  -- Create a promptbox for each screen
  s.mypromptbox = awful.widget.prompt()
  -- Create a taglist widget
  s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, taglist_buttons)

  s.mylayoutbox = awful.widget.layoutbox(s)
  s.mylayoutbox:buttons(my_table.join(
    awful.button({}, 1, function()
      awful.layout.inc(1)
    end),
    awful.button({}, 3, function()
      awful.layout.inc(-1)
    end),
    awful.button({}, 4, function()
      awful.layout.inc(1)
    end),
    awful.button({}, 5, function()
      awful.layout.inc(-1)
    end)
  ))
  -- Create the wibox
  s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(18), bg = barcolor })

  -- Coretemp
  local tempicon = wibox.widget.imagebox(theme.widget_temp)
  local temp = lain.widget.temp({
    settings = function()
      widget:set_markup(markup.fontfg(theme.font, "#000000", coretemp_now .. "°C "))
    end,
  })

  local memicon = wibox.widget.imagebox(theme.widget_mem)
  local memory = lain.widget.mem({
    settings = function()
      widget:set_markup(markup.fontfg(theme.font, "#000000", mem_now.used .. "M "))
    end,
  })
  local cpuicon = wibox.widget.imagebox(theme.widget_cpu)

  local cpu = lain.widget.cpu({
    settings = function()
      widget:set_markup(markup.fontfg(theme.font, "#000000", cpu_now.usage .. "% "))
    end,
  })
  -- Add widgets to the wibox
  s.mywibox:setup({
    layout = wibox.layout.align.horizontal,
    { -- Left widgets
      layout = wibox.layout.fixed.horizontal,
      s.mytaglist,
      first,
      s.mypromptbox,
    },
    nil,
    { -- Right widgets
      layout = wibox.layout.fixed.horizontal,
      wibox.widget.systray(),
      empty,
      -- net,
      -- mytextwidget,
      -- first,
      wibox.container.background(
        wibox.container.margin(
          wibox.widget({ memicon, memory.widget, layout = wibox.layout.align.horizontal }),
          dpi(3),
          dpi(3)
        ),
        theme.accent
      ),
      wibox.container.background(
        wibox.container.margin(
          wibox.widget({ tempicon, temp.widget, layout = wibox.layout.align.horizontal }),
          dpi(3),
          dpi(3)
        ),
        theme.indigo
      ),
      wibox.container.background(
        wibox.container.margin(
          wibox.widget({ cpuicon, cpu.widget, layout = wibox.layout.align.horizontal }),
          dpi(3),
          dpi(3)
        ),
        theme.pink
      ),
      wibox.container.background(
        wibox.container.margin(
          wibox.widget({ vol_icon, theme.volume.widget, layout = wibox.layout.align.horizontal }),
          dpi(3),
          dpi(3)
        ),
        theme.blue
      ),
      -- wibox.container.background(wibox.container.margin(wibox.widget({theme.volume.widget, dpi(4), dpi(8)), theme.orange),
      -- theme.volume.widget,
      -- first,
      wibox.container.background(
        wibox.container.margin(
          wibox.widget({ bat_icon, bat.widget, layout = wibox.layout.align.horizontal }),
          dpi(3),
          dpi(3)
        ),
        theme.teal
      ),
      -- bat_icon,
      -- bat,
      wibox.container.background(
        wibox.container.margin(wibox.widget({ clock, layout = wibox.layout.align.horizontal }), dpi(3), dpi(3)),
        theme.orange
      ),
      -- first,
      -- clock,
      -- wibox.container.background(wibox.container.margin(clock, dpi(4), dpi(8)), theme.green),
      -- mytextclock,
    },
  })
  s.mybottomwibox = awful.wibar({
    position = "bottom",
    screen = s,
    border_width = 0,
    height = dpi(20),
    bg = barcolor,
  })

  -- Add widgets to the bottom wibox
  s.mybottomwibox:setup({
    layout = wibox.layout.align.horizontal,
    { -- Left widgets
      layout = wibox.layout.fixed.horizontal,
    },
    s.mytasklist, -- Middle widget
    { -- Right widgets
      layout = wibox.layout.fixed.horizontal,
      s.mylayoutbox,
    },
  })
end

return theme
