-- Hecho por @SrTraiko


-- Prefijo Global
-- atajos.lua  estilos.lua  opciones.lua  packer.lua
vim.g.mapleader= ','
-- Principal
require('opciones')
require('atajos')
require('plugins')
require('estilos')

require('plugins.lualine')
require('plugins.nvim-autopairs')
require('plugins.cmp')
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.comments')
