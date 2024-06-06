-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({
	  'ful1e5/onedark.nvim',
	  as = 'onedark'
  })

  use ({
	  'rose-pine/neovim',
	  as = 'rose-pine'})

  use { "catppuccin/nvim", as = "catppuccin" }
  vim.cmd('colorscheme catppuccin')

  use {'nvim-treesitter/nvim-treesitter', 
--        disable = true,
--        commit = 'f9773e4',}
        run = ':TSUpdate'}
  use ('nvim-treesitter/playground')
  use ('ThePrimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
		  {'L3MON4D3/LuaSnip'},
		  {'saadparwaiz1/cmp_luasnip'},
	  }
  }

  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
  }

--  use {
--    "jiangmiao/auto-pairs",
--    disable = true,
--  }

  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  }

  use {"ThePrimeagen/vim-be-good",}

  use { "junegunn/fzf", run = "./install --bin" }
--  use ('junegunn/fzf.vim')
  use ('ibhagwan/fzf-lua')

  use ('kylechui/nvim-surround')
end)
