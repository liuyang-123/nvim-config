-- Plugin management
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin list with configurations
return require("lazy").setup({
  -- Plugin Manager
  "folke/lazy.nvim",
  
  -- Motion
  {
    "phaazon/hop.nvim", -- Replacement for easymotion
    branch = "v2",
    config = function()
      require("hop").setup({})
      vim.api.nvim_set_hl(0, "HopNextKey", { fg = "#ff0000" })
      vim.api.nvim_set_hl(0, "HopNextKey1", { fg = "#ff0000" })
      vim.api.nvim_set_hl(0, "HopNextKey2", { fg = "#ff0000" })
    end,
  },
  
  -- Tabline
  {
    "akinsho/bufferline.nvim", -- Replacement for tabline.vim
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup()
    end,
  },
  
  -- Marks
  {
    "chentoast/marks.nvim", -- Replacement for vim-signature
    config = function()
      require("marks").setup()
    end,
  },
  
  -- Surrounding
  {
    "kylechui/nvim-surround", -- Replacement for vim-surround
    config = function()
      require("nvim-surround").setup()
    end,
  },
  
  -- Alignment
  {
    "junegunn/vim-easy-align", -- Alternative for tabular
    config = function()
      -- Mapping will be in keymaps.lua
    end,
  },
}) 