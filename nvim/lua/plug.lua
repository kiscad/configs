--[[ plug.lua ]]

local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')

local packer = require 'packer'
local util = require 'packer.util'

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

return packer.startup(
function()
  use 'lewis6991/impatient.nvim' -- Makes neovim faster

  -- Managers
  use 'wbthomason/packer.nvim' -- Packer package manager
  use 'williamboman/mason.nvim' -- Manage LSPs and DAPs
  use 'williamboman/mason-lspconfig.nvim' -- closes gaps with mason

  -- Appearance
  use 'tanvirtin/monokai.nvim' -- Color scheme
  use "rebelot/kanagawa.nvim" -- color scheme
  use { 'nvim-lualine/lualine.nvim', -- Statusline
        requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use "max397574/better-escape.nvim" -- faster jj / kshadowk
  use { 'phaazon/hop.nvim', branch = 'v2' } -- Navitage to any word in the file

  -- LSP server
  use 'neovim/nvim-lspconfig' -- Collection of common configurations for the Nvim LSP client
  use 'j-hui/fidget.nvim' -- sho status of nvim-lsp progress
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Vale as a prose linter

  -- Rust related
  use 'simrat39/rust-tools.nvim' -- rust-analyzer hints and more!
  use 'saecki/crates.nvim' -- Help managing crates dependencies

  -- telescope
  use 'nvim-lua/plenary.nvim' -- Collection of Lua functions
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  use 'nvim-telescope/telescope.nvim' -- Fuzzy finder
  use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} }}
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- Make telescope faster
  use 'nvim-telescope/telescope-media-files.nvim' -- image files preview in telescope
  use 'nvim-lua/popup.nvim' -- Poup for telescope

  -- Completion
  use 'hrsh7th/nvim-cmp' -- Completion framework
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp' -- LSP completion source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip' -- Snippet completion source for nvim-cmp
  use 'hrsh7th/cmp-path' -- Useful completion sources
  use 'hrsh7th/cmp-buffer' -- Useful completion sources
  use 'hrsh7th/vim-vsnip' -- Snippet engine
  use 'onsails/lspkind.nvim' -- shows icons in cmp

  -- Syntax Highlighting, Comments, TODO, Issues
  use 'nvim-treesitter/nvim-treesitter' -- better syntax
  use 'm-demare/hlargs.nvim' -- Highlight argument definitions and usages
  use 'RRethy/vim-illuminate' -- Highlight other uses of word under cursor
  use 'lukas-reineke/headlines.nvim' -- highlights headlines for markdown, other txt files
  use "lukas-reineke/indent-blankline.nvim" -- ident lines
  use 'numToStr/Comment.nvim' -- Enable comments
  use 'folke/trouble.nvim' -- Summarizes issues
  use 'folke/todo-comments.nvim' -- Todo comments

  -- Terminal
  use 'numToStr/FTerm.nvim' -- Terminal in Lu-a
end
)

