opt = vim.opt

opt.fileencoding = "utf-8"			-- Tipo de archivo
opt.number = true				-- Ver lista en numeros
opt.cursorline = true				-- Habilitar la guia del cursor
opt.autoindent = true				-- Identado
opt.wrap = false				-- Englosa una linea muy larga
--opt.list= true				-- Visualizar espacios hecho con el TAB
opt.termguicolors = true			-- 24-bits de colores para interfaz TUI
opt.completeopt = "menuone,noselect,menu"	-- lista de opciones para el autocompletado
opt.autoread = true

-- Tabs
opt.expandtab = true				
opt.shiftwidth = 2
opt.softtabstop = 2
