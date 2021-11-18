
local opt = vim.opt
local g = vim.g

-- More quality of life stuff

vim.cmd [[
    set nowrap
    set nobackup
    set nowritebackup
    set noerrorbells
    set noswapfile
    colorscheme gruvbox

    nnoremap normal <C-n> :NvimTreeToggle
    map ; :
    ]]

-- null the mapping leader

g.mapleader = ' '

-- Undo files
opt.undofile = true
opt.undodir = "/home/neo/.cache/"

-- Indentation
opt.smartindent = true
opt.autoindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Set clipboard to use system clipboard
opt.clipboard = "unnamedplus"

-- Use mouse
opt.mouse = "a"

-- Nicer UI settings
opt.termguicolors = true
opt.cursorline = true
opt.number = true

-- Get rid of annoying viminfo file
opt.viminfo = ""
opt.viminfofile = "NONE"

-- Miscellaneous quality of life
opt.smartcase = true
opt.ttimeoutlen = 5
opt.compatible = false
opt.autoread = true
opt.incsearch = true
opt.hidden = true
opt.shortmess = "atI"

-- Dashboard-specific settings
vim.g.dashboard_default_executive = 'telescope'

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Indent lines automatically
  use 'Yggdroot/indentLine'

  -- Nvim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- C syntax highlighting
  use 'bfrg/vim-cpp-modern'

  -- better syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- Neovim LSPconfig because yeah
  use 'neovim/nvim-lspconfig'

  -- Completion
  use 'hrsh7th/nvim-compe'

  -- Bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  -- Gruvbox
  use 'morhetz/gruvbox'

  -- Terminal
  use 'akinsho/nvim-toggleterm.lua'

  -- Telescope 'n friends
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  --  Lualine
  use 'hoob3rt/lualine.nvim'
end)

