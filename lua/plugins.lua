local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim', -- Theme
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'wakatime/vim-wakatime' -- Wakatime
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'glepnir/lspsaga.nvim' -- LSP UI's cool but did't work 08/11/22 03:56 AM
  use 'L3MON4D3/LuaSnip' -- Snippet
  use 'hoob3rt/lualine.nvim' -- Statusline
  use { "williamboman/mason.nvim" } -- Mason lsp installer
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for nvim
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP did't work
  use { 'neoclide/coc.nvim', branch = 'release' } -- GodBless cocnvim. Thx rsh_12

  use { -- Treesitter did't work 08/11/22
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim' -- Telescope
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'jose-elias-alvarez/null-ls.nvim' -- Use NeoVim as a language server to inject LSP diagnostics, code actions and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin
  use 'windwp/nvim-autopairs' -- Autopairs for brakets
  use 'windwp/nvim-ts-autotag' -- Autotag for html etc.

  use 'akinsho/nvim-bufferline.lua' -- Custom bufferline with nvim-web-devicons
  use 'norcalli/nvim-colorizer.lua' -- Colorized hex colors #333333

  use 'lewis6991/gitsigns.nvim'
end)