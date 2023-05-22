-- Check is installed
local _, theme = pcall(require, 'tokyodark')
if not _ then return end

G.tokyodark_transparent_background = false
G.tokyodark_enable_italic_comment = false
G.tokyodark_enable_italic = false
G.tokyodark_color_gamma = "1.2"
CMD("colorscheme tokyodark")
