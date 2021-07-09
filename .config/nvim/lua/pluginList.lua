local packer = require("packer")
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return require("packer").startup(
    function()
        use "wbthomason/packer.nvim"

        -- syntax
        use "nvim-treesitter/nvim-treesitter"
		use "sainnhe/gruvbox-material"

		
        -- lang stuff
        use "sbdchd/neoformat"
        use "nvim-lua/plenary.nvim"
        use "lewis6991/gitsigns.nvim"
        use "akinsho/nvim-bufferline.lua"
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"


        -- snippet support
        use "hrsh7th/vim-vsnip"
        use "rafamadriz/friendly-snippets"


        -- completion
        use "neoclide/coc.nvim"


        -- file managing , picker etc
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        use "ryanoasis/vim-devicons"
        use "nvim-telescope/telescope.nvim"
        use "nvim-telescope/telescope-media-files.nvim"
        use "nvim-lua/popup.nvim"
		use 'hoob3rt/lualine.nvim'


        -- misc
        use "karb94/neoscroll.nvim"
        use "Pocco81/TrueZen.nvim"
        use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}
        end, {
            display = {
            border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
        }
    }
)
