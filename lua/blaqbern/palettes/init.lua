local M = {}

M.setup = function (name)
  local utils = require("blaqbern.utils")
  local palette = require("blaqbern.palettes." .. name)

  local fg = palette.w.normal
  local bg = palette.k.normal

  return {
    bg          = bg,
    bg_dark1    = utils.darken(bg, 0.03),
    bg_dark2    = utils.darken(bg, 0.2),
    bg_dark3    = utils.darken(bg, 0.5),
    bg_light1   = utils.lighten(bg, 0.025),
    bg_light2   = utils.lighten(bg, 0.1),
    fg          = fg,
    fg_alt      = palette.w.bright,
    muted       = utils.desaturate(fg, 0.5),
    keyword     = palette.b.normal,
    keyword_alt = palette.b.bright,
    str         = palette.g.normal,
    str_alt     = palette.g.bright,
    accent1     = palette.c.normal,
    accent1_alt = palette.c.bright,
    accent2     = palette.y.normal,
    accent2_alt = palette.y.bright,
    accent3     = palette.m.normal,
    accent3_alt = palette.m.bright,
    accent4     = palette.r.normal,
    accent4_alt = palette.r.bright,

    white       = "#ffffff",
    black       = "#000000",
    alert       = palette.alert or "#d91e28",
    success     = palette.success or "#23a147",
    warning     = palette.warning or "#ff842b",
    info        = palette.info or "#0045cf",
  }
end

return M
