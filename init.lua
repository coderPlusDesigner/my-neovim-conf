vim.opt.number = true

-- Tabs / indentation
vim.opt.tabstop = 2        -- number of spaces a <Tab> character displays as
vim.opt.shiftwidth = 2     -- number of spaces used for each step of auto-indent
vim.opt.softtabstop = 2    -- number of spaces inserted when you press <Tab>
vim.opt.expandtab = true   -- convert tabs to spaces (set to false if you want REAL tab characters instead)


-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
