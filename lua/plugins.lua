vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'neoclide/coc.nvim', branch = 'release'}

  use 'chriskempson/base16-vim'
  use 'RRethy/nvim-base16'
  use 'windwp/nvim-autopairs'
  use {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
    }
  }

  use "RRethy/nvim-treesitter-endwise"

  use 'nanozuki/tabby.nvim'

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use 'airblade/vim-gitgutter'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }


end)
