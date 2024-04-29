return {
  -- add theme
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      --transparent = true,
      styles = {
        --sidebars = "transparent",
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      style = "storm",
    },
  },
}

--[[
return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
} 
]]
--
