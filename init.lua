require('base')
require('highlights')
require('maps')
require('plugins')
require 'lspconfig'.pyright.setup {}

local has = vim.fn.has
local is_mac = has "macunix"

--local has = function(x)
--  return vim.fn.has(x) == 1
--end

if is_mac then
  require('macos')
end
