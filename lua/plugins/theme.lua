-- Try to load omarchy theme if it exists, otherwise use fallback
local omarchy_theme_path = vim.fn.expand("~/.config/omarchy/current/theme/neovim.lua")

if vim.fn.filereadable(omarchy_theme_path) == 1 then
  -- Load the omarchy theme file
  local ok, theme = pcall(dofile, omarchy_theme_path)
  if ok and theme then
    return theme
  end
end

-- Fallback theme configuration for non-omarchy systems
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
}