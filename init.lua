vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Install lazy.nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  vim.fn.system({
    "git", 
    "clone", 
    "--filter=blob:none", 
    "https://github.com/folke/lazy.nvim.git", 
    "--branch=stable", 
    lazypath 
  })
end
vim.opt.rtp:prepend(lazypath)



require('lazy').setup({ })

require("config.options")
require("config.keymaps")
require("config.augroup")
