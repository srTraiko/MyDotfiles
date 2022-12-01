map = vim.api.nvim_set_keymap
opts = {noremap = true, silent = true}

-- mode normal
map('i', 'hh', '<ESC>', opts)

-- guardado
map('n', '<Leader>s', ':w<CR>', opts)
map('n', '<Leader>sf', ':wq<CR>', opts)
map('n', '<Leader>sq', ':wq!<CR>', opts)

-- Cerrado
map('n', '<Leader>q', ':q<CR>', opts)
map('n', '<Leader>qf', ':q!<CR>', opts)
