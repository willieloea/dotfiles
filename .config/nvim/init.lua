-- Load lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  error("lazy.nvim not found. Make sure it's installed in " .. lazypath)
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
require("lazy").setup({
  -- Airline replacement
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Theme
  { "morhetz/gruvbox" },

  -- Commenting plugin
  { "numToStr/Comment.nvim", opts = {} },

  -- Other plugins can go here
})

require("lualine").setup {
  options = {
    theme = "powerline", -- or "gruvbox" if you use that theme
    icons_enabled = true,
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
  },
}

-- === General Settings ===
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 2
vim.opt.termguicolors = true
vim.opt.scrolloff = 0
vim.opt.colorcolumn = "81"
vim.cmd [[highlight ColorColumn ctermbg=224 guibg=#80a0ff]]

-- === Formatting ===
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- === Search ===
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.showmatch = true

-- === Wildmenu ===
vim.opt.wildmenu = true
vim.opt.wildmode = { "list", "longest" }
vim.opt.wildignore = { "*.docx", "*.jpg", "*.png", "*.gif", "*.pdf", "*.pyc", "*.exe", "*.img", "*.xlsx" }

-- === Keymaps ===
vim.keymap.set("i", "jj", "<Esc>")
