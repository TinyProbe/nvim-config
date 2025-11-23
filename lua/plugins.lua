local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

-- plugins
require("lazy").setup({
  require("plugins.autopairs"),
  require("plugins.colorizer"),
  require("plugins.comment"),
  require("plugins.indentline"),
  require("plugins.lualine"),
  require("plugins.mason"),
  require("plugins.mini-icons"),      -- need for checkhealth
  -- require("plugins.neo-tree"),
  require("plugins.nvim-cmp"),
  require("plugins.nvim-lspconfig"),
  require("plugins.nvim-scrollbar"),
  require("plugins.nvim-surround"),
  require("plugins.telescope"),
  require("plugins.treesitter"),
  require("plugins.which-key"),

  -- colorscheme
  -- require("plugins.catppuccin"),
  require("plugins.kanagawa"),
  -- require("plugins.tokyonight"),
  -- require("plugins.solarized-osaka"),

  -- vim plugins
  { 'dart-lang/dart-vim-plugin' },
  { 'preservim/nerdtree' },
  -- { 'ryanoasis/vim-devicons' },
})

-- neo-tree
vim.g.NERDTreeShowHidden = true

-- vim-devicons
-- vim.g.webdevicons_enable = true
-- vim.g.webdevicons_enable_nerdtree = true
