-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:

hl.on("hyprland.start", function()
    hl.exec_cmd("xhost +si:localuser:root")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("waybar")
    hl.exec_cmd("activate-linux")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("steam")
    hl.exec_cmd("discord")
    hl.exec_cmd("[workspace 2 silent] google-chrome-stable")

end)
