return {
  {
    "nvim-tree/nvim-web-devicons", -- icons
  },
  {
    "lewis6991/gitsigns.nvim", -- git branch/diff info
    config = function()
      require("gitsigns").setup()
    end,
  },
  {
    "nvim-lualine/lualine.nvim", -- the statusline itself
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = { theme = "auto" }, -- auto-matches your colorscheme
      })
    end,
  },
}
