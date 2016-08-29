import os

def ob_config():
    try:
        WHITE         = os.environ['WHITE']
        RED           = os.environ['RED']
        YELLOW        = os.environ['YELLOW']
        GREEN         = os.environ['GREEN']
        GRAY          = os.environ['GRAY']
        BLACK         = os.environ['BLACK']
        MAIN          = os.environ['MAIN']
        MAIN_INACTIVE = os.environ['MAIN_INACTIVE']
    except KeyError:
        print('Source export_conf first!')
        return None

    config = """\
# Window geometry
padding.width: 2
border.width: 3
window.client.padding.width: 0
window.client.padding.height: 0
window.handle.width: 0

# Menu geometry
menu.border.width: 2
menu.overlap.x: -5
menu.overlap.y: 0

# Border colors
window.active.border.color: """ + MAIN + """
window.inactive.border.color: """ + MAIN_INACTIVE + """
menu.border.color: """ + MAIN + """
window.active.client.color: #ffffff
window.inactive.client.color: #cccccc

# Window title justification
window.label.text.justify: Left

# Active window
window.active.title.bg: Solid Flat
window.active.title.bg.color: """ + MAIN + """

window.active.label.bg: Parentrelative
window.active.label.text.color: """ + BLACK + """

window.active.button.unpressed.bg: Solid Flat
window.active.button.unpressed.bg.color: """ + MAIN + """
window.active.button.unpressed.image.color: """ + MAIN + """

window.active.button.pressed.bg: Solid Flat
window.active.button.pressed.bg.color: """ + MAIN + """
window.active.button.pressed.image.color: """ + MAIN + """

window.active.button.disabled.bg: Solid Flat
window.active.button.disabled.bg.color: """ + MAIN + """
window.active.button.disabled.image.color: """ + MAIN + """

window.active.button.hover.bg: Solid Flat
window.active.button.hover.bg.color: """ + MAIN + """
window.active.button.hover.image.color: """ + GRAY + """

window.active.button.toggled.unpressed.bg: Solid Flat
window.active.button.toggled.unpressed.bg.color: """ + MAIN + """
window.active.button.toggled.unpressed.image.color: """ + MAIN + """

window.active.button.toggled.pressed.bg: Solid Flat
window.active.button.toggled.pressed.bg.color: """ + MAIN + """
window.active.button.toggled.pressed.image.color: """ + MAIN + """

window.active.button.toggled.hover.bg: Solid Flat
window.active.button.toggled.hover.bg.color: """ + MAIN + """
window.active.button.toggled.hover.image.color: """ + GRAY + """

# Inactive windows
window.inactive.title.bg: Flat Solid
window.inactive.title.bg.color: """ + MAIN_INACTIVE + """

window.inactive.label.bg: Parentrelative
window.inactive.label.text.color: """ + MAIN_INACTIVE + """

window.inactive.button.unpressed.bg: Solid Flat
window.inactive.button.unpressed.bg.color: """ + MAIN_INACTIVE + """
window.inactive.button.unpressed.image.color: """ + MAIN_INACTIVE + """

window.inactive.button.pressed.bg: Solid Flat
window.inactive.button.pressed.bg.color: """ + MAIN_INACTIVE + """
window.inactive.button.pressed.image.color: """ + MAIN_INACTIVE + """

window.inactive.button.disabled.bg: Solid Flat
window.inactive.button.disabled.bg.color: """ + MAIN_INACTIVE + """
window.inactive.button.disabled.image.color: """ + MAIN_INACTIVE + """

window.inactive.button.toggled.bg: Solid Flat
window.inactive.button.toggled.bg.color: """ + MAIN_INACTIVE + """
window.inactive.button.toggled.image.color: """ + MAIN_INACTIVE + """

window.inactive.button.hover.bg: Solid Flat
window.inactive.button.hover.bg.color: """ + MAIN_INACTIVE + """
window.inactive.button.hover.image.color: """ + MAIN_INACTIVE + """

window.inactive.button.toggled.unpressed.bg: Solid Flat
window.inactive.button.toggled.unpressed.bg.color: """ + MAIN_INACTIVE + """
window.inactive.button.toggled.unpressed.image.color: """ + MAIN_INACTIVE + """

window.inactive.button.toggled.pressed.bg: Solid Flat
window.inactive.button.toggled.pressed.bg.color: """ + MAIN_INACTIVE + """
window.inactive.button.pressed.toggled.image.color: """ + MAIN_INACTIVE + """

window.inactive.button.toggled.hover.bg: Solid Flat
window.inactive.button.toggled.hover.bg.color: """ + MAIN_INACTIVE + """
window.inactive.button.toggled.hover.image.color: """ + MAIN_INACTIVE + """

# Menus
menu.title.bg: Solid Flat
menu.title.bg.color: """ + MAIN + """
menu.title.text.color: """ + BLACK + """
menu.title.text.justify: Left

menu.separator.color: """ + GRAY + """
menu.separator.width: 1
menu.separator.padding.width: 3
menu.separator.padding.height: 3

menu.items.bg: Flat Solid
menu.items.bg.color: """ + BLACK + """
menu.items.text.color: """ + GRAY + """
menu.items.disabled.text.color: #aaaaaa

menu.items.active.bg: Solid Flat
menu.items.active.bg.color: """ + MAIN + """
menu.items.active.text.color: """ + BLACK + """
menu.items.active.disabled.text.color: #aaaaaa

# OSD
osd.bg: Solid Flat
osd.bg.color: """ + BLACK + """
osd.border.color: """ + BLACK + """

osd.label.bg: Solid Flat
osd.label.bg.color: """ + BLACK + """
osd.label.text.color: """ + GRAY + """

osd.hilight.bg: Solid Flat
osd.hilight.bg.color: """ + MAIN + """
osd.unhilight.bg: Solid Flat
osd.unhilight.bg.color: """ + BLACK + """
"""
    return config

def tint2_config():
    try:
        WHITE         = os.environ['WHITE']
        RED           = os.environ['RED']
        YELLOW        = os.environ['YELLOW']
        GREEN         = os.environ['GREEN']
        GRAY          = os.environ['GRAY']
        BLACK         = os.environ['BLACK']
        MAIN          = os.environ['MAIN']
        MAIN_INACTIVE = os.environ['MAIN_INACTIVE']
        TINT2_FONT    = os.environ['TINT2_FONT']
    except KeyError:
        print('Source export_conf first!')
        return None

    config = """\
# Backgrounds
# Background 1: Default task, Iconified task, Panel, Tooltip
rounded = 0
border_width = 0
background_color = """ + BLACK + """ 100
border_color = #2f2f2f 0
background_color_hover = #000000 100
border_color_hover = #2f2f2f 0
background_color_pressed = #000000 100
border_color_pressed = #2f2f2f 0

# Background 2: Active task
rounded = 0
border_width = 0
background_color = """ + MAIN + """ 100
border_color = #ffffff 40
background_color_hover = """ + MAIN + """ 100
border_color_hover = #ffffff 40
background_color_pressed = """ + MAIN + """ 100
border_color_pressed = #ffffff 40

# Background 3: Urgent task
rounded = 0
border_width = 0
background_color = """ + RED + """ 100
border_color = #ffffff 60
background_color_hover = """ + RED + """ 100
border_color_hover = #ffffff 60
background_color_pressed = """ + RED + """ 100
border_color_pressed = #ffffff 60

# Background 4: Systray
rounded = 0
border_width = 0
background_color = """ + BLACK + """ 100
border_color = #ffffff 40
background_color_hover = """ + BLACK + """ 100
border_color_hover = #ffffff 40
background_color_pressed = """ + BLACK + """ 100
border_color_pressed = #ffffff 40

#-------------------------------------
# Panel
panel_items = TS
panel_size = 100% 24
panel_margin = 0 0
panel_padding = 0 0 0
panel_background_id = 1
wm_menu = 1
panel_dock = 0
panel_position = bottom center horizontal
panel_layer = top
panel_monitor = all
primary_monitor_first = 0
autohide = 0
autohide_show_timeout = 0.3
autohide_hide_timeout = 2
autohide_height = 2
strut_policy = follow_size
panel_window_name = tint2
disable_transparency = 0
mouse_effects = 0
font_shadow = 0
mouse_hover_icon_asb = 100 0 10
mouse_pressed_icon_asb = 100 0 0

#-------------------------------------
# Taskbar
taskbar_mode = single_desktop
taskbar_padding = 0 0 0
taskbar_background_id = 0
taskbar_active_background_id = 0
taskbar_name = 0
taskbar_hide_inactive_tasks = 0
taskbar_hide_different_monitor = 0
taskbar_always_show_all_desktop_tasks = 0
taskbar_name_padding = 0 0
taskbar_name_background_id = 0
taskbar_name_active_background_id = 0
taskbar_name_font = """ + TINT2_FONT + """
taskbar_name_font_color = #000000 100
taskbar_name_active_font_color = #000000 100
taskbar_distribute_size = 0
taskbar_sort_order = none
task_align = left

#-------------------------------------
# Task
task_text = 1
task_icon = 0
task_centered = 1
urgent_nb_of_blink = 8
task_maximum_size = 400 34
task_padding = 10 0 0
task_font = """ + TINT2_FONT + """
task_tooltip = 1
task_font_color = """ + WHITE + """ 100
task_active_font_color = """ + BLACK + """ 100
task_urgent_font_color = """ + BLACK + """ 100
task_iconified_font_color = """ + GRAY + """ 100
task_icon_asb = 100 0 0
task_active_icon_asb = 100 0 0
task_urgent_icon_asb = 100 0 0
task_background_id = 1
task_active_background_id = 2
task_urgent_background_id = 3
task_iconified_background_id = 1
mouse_left = toggle_iconify
mouse_middle = close
mouse_right = none
mouse_scroll_up = toggle
mouse_scroll_down = iconify

#-------------------------------------
# System tray (notification area)
systray_padding = 5 0 2
systray_background_id = 4
systray_sort = ascending
systray_icon_size = 0
systray_icon_asb = 100 0 0
systray_monitor = 1

#-------------------------------------
# Launcher
launcher_padding = 0 0 0
launcher_background_id = 0
launcher_icon_background_id = 0
launcher_icon_size = 0
launcher_icon_asb = 0 -100 -100
launcher_icon_theme_override = 0
startup_notifications = 0
launcher_tooltip = 0

#-------------------------------------
# Clock
time1_format =
time2_format =
time1_font = Sans 12
time1_timezone =
time2_timezone =
time2_font = Sans 12
clock_font_color = #000000 100
clock_padding = 0 0
clock_background_id = 0
clock_tooltip =
clock_tooltip_timezone =
clock_lclick_command =
clock_rclick_command =
clock_mclick_command =
clock_uwheel_command =
clock_dwheel_command =

#-------------------------------------
# Battery
battery_tooltip = 1
battery_low_status = 10
battery_low_cmd = notify-send "battery low"
bat1_font = sans 8
bat2_font = sans 6
battery_font_color = #ffffff 60
battery_padding = 1 0
battery_background_id = 0
battery_hide = 98
battery_lclick_command =
battery_rclick_command =
battery_mclick_command =
battery_uwheel_command =
battery_dwheel_command =
ac_connected_cmd =
ac_disconnected_cmd =

#-------------------------------------
# Tooltip
tooltip_show_timeout = 0.7
tooltip_hide_timeout = 0.3
tooltip_padding = 2 2
tooltip_background_id = 1
tooltip_font_color = #ffffff 100
tooltip_font = """ + TINT2_FONT + """
"""
    return config
