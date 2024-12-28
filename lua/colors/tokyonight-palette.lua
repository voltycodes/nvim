local function setColors(c)
  c._name = "tokyonight_night"  -- Theme name
  c._style = "night"            -- Theme style
  c.bg = "#000000"              -- True Black
  c.bg_dark = "#000000"         -- True Black
  c.bg_float = "#000000"        -- True Black
  c.bg_highlight = "#1a1a1a"    -- Dark Gray
  c.bg_popup = "#000000"        -- True Black
  c.bg_search = "#333333"       -- Darker Gray
  c.bg_sidebar = "#000000"      -- True Black
  c.bg_statusline = "#000000"   -- True Black
  c.bg_visual = "#333333"       -- Darker Gray
  c.black = "#000000"           -- True Black
  c.blue = "#7a7a7a"            -- Light Grayish Blue
  c.blue0 = "#595959"           -- Darker Grayish Blue
  c.blue1 = "#6e6e6e"           -- Medium Grayish Blue
  c.blue2 = "#808080"           -- Standard Gray
  c.blue5 = "#666666"           -- Medium Gray
  c.blue6 = "#808080"           -- Standard Gray
  c.blue7 = "#999999"           -- Lighter Gray
  c.border = "#333333"          -- Darker Gray
  c.border_highlight = "#5c5c5c"-- Highlight Gray
  c.comment = "#4b4b4b"         -- Medium Grayish Blue
  c.cyan = "#7a7a7a"            -- Light Grayish Blue
  c.dark3 = "#3d3d3d"           -- Darker Gray
  c.dark5 = "#595959"           -- Dark Gray
  c.diff = {
    add = "#303030",            -- Very Dark Gray
    change = "#434343",         -- Darker Gray
    delete = "#5a5a5a",         -- Darker Gray
    text = "#606060"            -- Gray
  }
  c.error = "#9e4b4b"           -- Dark Red (light grayish red)
  c.fg = "#d1d1d1"             -- Light Gray (brighter text for contrast)
  c.fg_dark = "#bfbfbf"        -- Medium Light Gray
  c.fg_float = "#d1d1d1"       -- Light Gray (brighter text for contrast)
  c.fg_gutter = "#4d4d4d"      -- Medium Dark Gray
  c.fg_sidebar = "#bfbfbf"     -- Medium Light Gray
  c.git = {
    add = "#5a5a5a",           -- Grayish Green
    change = "#8a8a8a",        -- Medium Gray
    delete = "#b1b1b1",        -- Light Gray
    ignore = "#4d4d4d"         -- Medium Dark Gray
  }
  c.green = "#7a7a7a"          -- Light Grayish Green
  c.green1 = "#7a7a7a"         -- Light Grayish Green
  c.green2 = "#7a7a7a"         -- Light Grayish Green
  c.hint = "#7a7a7a"           -- Light Grayish Blue
  c.info = "#7a7a7a"           -- Light Grayish Blue
  c.magenta = "#9e7a7a"        -- Light Grayish Pink
  c.magenta2 = "#b57a7a"       -- Light Grayish Red
  c.none = "NONE"              -- No Color
  c.orange = "#8a8a8a"         -- Light Grayish Orange
  c.purple = "#9e7a7a"         -- Light Grayish Pink
  c.rainbow = { "#7a7a7a",     -- Light Grayish Blue
                "#b1b1b1",     -- Light Gray
                "#7a7a7a",     -- Light Grayish Green
                "#7a7a7a",     -- Light Grayish Blue
                "#9e7a7a",     -- Light Grayish Pink
                "#9e7a7a" }    -- Light Grayish Pink
  c.red = "#9e4b4b"            -- Light Grayish Red
  c.red1 = "#9e4b4b"           -- Light Grayish Red
  c.teal = "#7a7a7a"           -- Light Grayish Blue
  c.terminal = {
    black = "#000000",          -- True Black
    black_bright = "#333333",   -- Darker Gray
    blue = "#7a7a7a",           -- Light Grayish Blue
    blue_bright = "#999999",    -- Light Gray
    cyan = "#7a7a7a",           -- Light Grayish Blue
    cyan_bright = "#a8a8a8",    -- Very Light Gray
    green = "#7a7a7a",          -- Light Grayish Green
    green_bright = "#a8a8a8",   -- Very Light Gray
    magenta = "#9e7a7a",        -- Light Grayish Pink
    magenta_bright = "#b5a8a8", -- Very Light Grayish Pink
    red = "#9e4b4b",            -- Light Grayish Red
    red_bright = "#b79e9e",     -- Very Light Grayish Red
    white = "#bfbfbf",          -- Light Gray
    white_bright = "#d9d9d9",   -- Very Light Gray
    yellow = "#8a8a8a",         -- Light Grayish Yellow
    yellow_bright = "#a8a8a8"   -- Very Light Grayish Yellow
  }
  c.terminal_black = "#333333" -- Darker Gray
  c.todo = "#7a7a7a"           -- Light Grayish Blue
  c.warning = "#9e4b4b"        -- Light Grayish Red
  c.yellow = "#8a8a8a"         -- Light Grayish Yellow
end

return setColors
