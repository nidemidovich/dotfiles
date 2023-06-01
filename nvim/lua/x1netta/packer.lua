vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({ 'rose-pine/neovim', as = 'rose-pine' })

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("theprimeagen/harpoon")
	use("mbbill/undotree")

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-cmdline'},
			{'L3MON4D3/LuaSnip'},     -- Required
			{'saadparwaiz1/cmp_luasnip'},
		}
	}
end)
