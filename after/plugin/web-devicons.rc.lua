--local status, icons = pcall(require, 'nvim-web-devicons')
--if (not status) then return end

--icons.setup {
--  override = {
--    fish = {
--      icon = "",
--      color = "#428850",
--      cterm_color = "65",
--      name = "fish"
--    }
--  },
--  color_icons = true,
--  default = true
--}
require 'nvim-web-devicons'.setup {
  override = {},
  default = true,
}
