require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "lua", "rust", "bash" },
  sync_install = true,
  auto_install = true,
  ignore_install = { "all" },
  additional_vim_regex_highlighting = false,
}

require('hlargs').setup()
