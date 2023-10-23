local filesystem = require('gears.filesystem')
local mat_colors = require('theme.mat-colors')
local theme_dir = filesystem.get_configuration_dir() .. '/theme'
local gears = require('gears')
local dpi = require('beautiful').xresources.apply_dpi
local theme = {}
theme.icons = theme_dir .. '/icons/'
theme.font = 'Monospace medium 10'

-- Colors Pallets

-- Primary
theme.primary = mat_colors.deep_orange

-- Accent
theme.accent = mat_colors.pink

-- Background
theme.background = mat_colors.grey

local awesome_overrides =
  function(theme)
  theme.dir = os.getenv('HOME') .. '/.config/awesome/theme'
  theme.icons = theme.dir .. '/icons/'
  --theme.wallpaper = theme.dir .. '/wallpapers/DarkCyan.png'
  theme.wallpaper = '#e0e0e0'
  theme.font = 'Monospace medium 8'
  theme.title_font = 'Monospace medium 8'

  theme.fg_normal = '#ffffffde'

  theme.fg_focus = '#e4e4e4'
  theme.fg_urgent = '#CC9393'
  theme.bat_fg_critical = '#232323'

  theme.bg_normal = '#000000'
  theme.bg_focus = '#5a5a5a'
  theme.bg_urgent = '#3F3F3F'
  theme.bg_systray = '#000000'

  -- Borders

  theme.border_width = dpi(2)
  theme.border_normal = '#000000'
  theme.border_focus = '#000000'
  theme.border_marked = '#CC9393'

  -- Menu

  theme.menu_height = dpi(16)
  theme.menu_width = dpi(160)

  -- Tooltips
  theme.tooltip_bg = '#000000'
  --theme.tooltip_border_color = '#232323'
  theme.tooltip_border_width = 0
  theme.tooltip_shape = function(cr, w, h)
    gears.shape.rounded_rect(cr, w, h, dpi(6))
  end

  -- Layout

  theme.layout_max = theme.icons .. 'layouts/arrow-expand-all.png'
  theme.layout_tile = theme.icons .. 'layouts/view-quilt.png'

  -- Taglist

  theme.taglist_bg_empty = '#000000'
  theme.taglist_bg_occupied = '#000000'
  theme.taglist_bg_urgent =
    'linear:0,0:' ..
    dpi(40) ..
      ',0:0,' ..
        theme.accent.hue_500 ..
          ':0.08,' .. theme.accent.hue_500 .. ':0.08,' .. theme.background.hue_800 .. ':1,' .. theme.background.hue_800
  theme.taglist_bg_focus ='#000000'

  -- Tasklist

  theme.tasklist_font = 'Monospace medium 9'
  theme.tasklist_bg_normal = '#000000'
  theme.tasklist_bg_focus =
    'linear:0,0:0,' ..
    dpi(40) ..
      ':0,' ..
        '#000000' ..
          ':0.95,' .. '#000000' .. ':0.95,' .. '#000000'.. ':1,' .. '#000000'
  theme.tasklist_bg_urgent = theme.primary.hue_800
  theme.tasklist_fg_focus = '#DDDDDD'
  theme.tasklist_fg_urgent = theme.fg_normal
  theme.tasklist_fg_normal = '#AAAAAA'

  theme.icon_theme = 'Adwaita-dark'

  --Client
  theme.border_width = dpi(2)
  theme.border_focus = theme.primary.hue_500
  theme.border_normal = theme.background.hue_800
end
return {
  theme = theme,
  awesome_overrides = awesome_overrides
}