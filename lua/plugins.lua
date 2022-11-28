return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { 'dracula/vim', as = 'dracula' }

  use 'nvim-lualine/lualine.nvim'

  use 'romgrk/barbar.nvim'

  use 'nvim-tree/nvim-web-devicons'

  use 'nvim-lua/plenary.nvim'

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use { 'nvim-tree/nvim-tree.lua', tag = 'nightly' }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'onsails/lspkind.nvim'

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use {
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'windwp/nvim-ts-autotag'

  use 'norcalli/nvim-colorizer.lua'

  use({
    'iamcco/markdown-preview.nvim',
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  use 'jose-elias-alvarez/null-ls.nvim'

  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" }
    }
  }
end)
