-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

-- Omarchy's bootstrap keeps path setup out of this user config.
dofile((os.getenv("OMARCHY_PATH") or "/usr/share/omarchy") .. "/default/hypr/bootstrap.lua")

-- Disable all Omarchy default bindings. Add your own in hypr/bindings.lua.
-- omarchy_default_bindings = false
--
-- Or disable only bindings for Omarchy's preinstalled apps/web apps while
-- keeping core window-manager bindings:
-- omarchy_preinstalled_bindings = false

-- Load Omarchy defaults.
require("default.hypr.omarchy")

-- Put your personal overrides in these files. They're loaded after Omarchy's
-- defaults so package updates can improve the defaults without rewriting your
-- ~/.config/hypr files.
require("hypr.monitors")
require("hypr.input")
require("hypr.bindings")
require("hypr.looknfeel")
require("hypr.autostart")

-- Toggle config flags dynamically.
require("default.hypr.toggles")

-- Add any other personal Hyprland configuration below.

-- Custom cursor (Bibata-Modern-Ice, installed in ~/.local/share/icons/Bibata)
hl.env("XCURSOR_THEME", "Bibata")
-- o.window("qemu", { workspace = "5" })

-- NVIDIA (migrated from hyprland.conf). NVD_BACKEND, LIBVA_DRIVER_NAME and
-- __GLX_VENDOR_LIBRARY_NAME are set by Omarchy's nvidia.lua; XDG_SESSION_TYPE by envs.lua.
hl.env("GBM_BACKEND", "nvidia-drm")
