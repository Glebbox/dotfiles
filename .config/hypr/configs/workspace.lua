local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name           = "suppress-maximize-events",
    match          = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name     = "fix-xwayland-drags",
    match    = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

-- Привязка Steam к 1-му рабочему столу
hl.window_rule({
    name  = "steam-to-workspace-1",
    match = { class = "^(steam)$" },
    workspace = "1",
})

-- Привязка Discord ко 2-му рабочему столу
hl.window_rule({
    name  = "discord-to-workspace-2",
    match = { class = "^(discord)$" },
    workspace = "2",
})

hl.window_rule({
    name = "zed-to-workspace-3",
    match = { class = "^(dev\\.zed\\.Zed)$" },
    workspace = "3",
})
