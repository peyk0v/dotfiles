vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- navegating nvim-tmux the same way
	use { "alexghergh/nvim-tmux-navigation" }

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- For colors in the status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use { "catppuccin/nvim", as = "catppuccin" }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	--To see file changes as a tree
	use { "mbbill/undotree" }

	--use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "nvim-tree/nvim-web-devicons" }

  -- To see at the left the git changes and more things
  use { "lewis6991/gitsigns.nvim" }

	-- AutoPairs for closing characters such as {(
	use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
	}

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
    }
  }

  -- fugitive for git
  use { "tpope/vim-fugitive" }

	-- file-browser
	use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', },
}


end)
