vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Themes
  use 'marko-cerovac/material.nvim'

  use 'windwp/nvim-autopairs'       -- Auto-pairs

  use 'nvim-treesitter/nvim-treesitter'
  use 'm-demare/hlargs.nvim'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'


  --use {'iamcco/markdown-preview.nvim'}
  --use 'luukvbaal/nnn.nvim'
  --use 'SidOfc/carbon.nvim'

  use 'yamatsum/nvim-cursorline'

  use 'numToStr/Comment.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'onsails/lspkind.nvim'

  use 'nvim-lualine/lualine.nvim'    -- Status-bar
  use 'kyazdani42/nvim-web-devicons' -- Icons
end)


