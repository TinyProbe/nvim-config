vim.cmd('mapclear')
vim.g.mapleader = " "
vim.g.localmapleader = "\\"
local unit = 5

-- forbidden
keymap("", {}, "<up>", "<nop>")
keymap("", {}, "<down>", "<nop>")
keymap("", {}, "<left>", "<nop>")
keymap("", {}, "<right>", "<nop>")
keymap("", {}, "gt", "<nop>")
keymap("", {}, "gT", "<nop>")
keymap("", {}, "gg", "<nop>")
keymap("", {}, "G", "<nop>")
keymap("", {}, "<C-q>", "<nop>")
keymap("", {}, "<C-w>", "<nop>")
keymap("", {}, "<C-x>", "<nop>")
keymap("", {}, "<C-a>", "<nop>")
keymap("", {}, "<leader>wc", "<nop>")

-- tab
keymap("n", { silent = true }, "<leader>tt", "<cmd>tabs<cr>")
keymap("n", { silent = true }, "<leader>tn", "<cmd>tabnext<cr>")
keymap("n", { silent = true }, "<leader>tp", "<cmd>tabprev<cr>")
keymap("n", { silent = true }, "<leader>tf", "<cmd>tabfirst<cr>")
keymap("n", { silent = true }, "<leader>tl", "<cmd>tablast<cr>")
keymap("n", { silent = true }, "<leader>t<", "<cmd>-tabmove<cr>")
keymap("n", { silent = true }, "<leader>t>", "<cmd>+tabmove<cr>")
keymap("n", { silent = true }, "<leader>t[", "<cmd>0tabmove<cr>")
keymap("n", { silent = true }, "<leader>t]", "<cmd>tabmove<cr>")
keymap("n", { silent = true }, "<leader>ty", "<cmd>tabonly<cr>")
keymap("n", { silent = true }, "<leader>tN", "<cmd>tabnew<cr>")
keymap("n", { silent = true }, "<leader>1", "<cmd>tabnext 1<cr>")
keymap("n", { silent = true }, "<leader>2", "<cmd>tabnext 2<cr>")
keymap("n", { silent = true }, "<leader>3", "<cmd>tabnext 3<cr>")
keymap("n", { silent = true }, "<leader>4", "<cmd>tabnext 4<cr>")
keymap("n", { silent = true }, "<leader>5", "<cmd>tabnext 5<cr>")
keymap("n", { silent = true }, "<leader>6", "<cmd>tabnext 6<cr>")
keymap("n", { silent = true }, "<leader>7", "<cmd>tabnext 7<cr>")
keymap("n", { silent = true }, "<leader>8", "<cmd>tabnext 8<cr>")
keymap("n", { silent = true }, "<leader>9", "<cmd>tabnext 9<cr>")
keymap("n", { silent = true }, "<leader>0", "<cmd>tabnext 10<cr>")

-- window
keymap("n", { silent = true }, "<leader>w", "<C-w>")
keymap("n", { silent = true }, "<leader>ws", "<cmd>split<cr>")
keymap("n", { silent = true }, "<leader>wv", "<cmd>vsplit<cr>")
keymap("n", { silent = true }, "<leader>wy", "<cmd>only<cr>")
keymap("n", { silent = true }, "<leader>wN", "<cmd>new<cr>")
-- <leader>ww: next window(circulation)
-- <leader>wp: prev window(not circulation)
-- <leader>wh: left window
-- <leader>wj: bottom window
-- <leader>wk: top window
-- <leader>wl: right window
-- <leader>wt: new tab with current window
-- <leader>wH: move left with current window
-- <leader>wJ: move bottom with current window
-- <leader>wK: move top with current window
-- <leader>wL: move right with current window
-- <leader>w-: increase height with current window 
-- <leader>w+: decrease height with current window 
-- <leader>w_: max height with current window 
-- <leader>w<: increase width with current window
-- <leader>w>: decrease width with current window
-- <leader>w|: max width with current window
-- <leader>w=: equalize size with all windows

-- buffer
keymap("n", { silent = true }, "<leader>bb", "<cmd>buffers<cr>")
keymap("n", { silent = true }, "<leader>bn", "<cmd>bnext<cr>")
keymap("n", { silent = true }, "<leader>bp", "<cmd>bprevious<cr>")
keymap("n", { silent = true }, "<leader>bf", "<cmd>bfirst<cr>")
keymap("n", { silent = true }, "<leader>bl", "<cmd>blast<cr>")
keymap("n", { silent = true }, "<leader>bu", "<cmd>bunload<cr>")
keymap("n", { silent = true }, "<leader>bw", "<cmd>bwipeout<cr>")
keymap("n", { silent = true }, "<leader>bN", "<cmd>enew<cr>")

-- delete
keymap("n", { silent = true }, "<leader>qt", "<cmd>tabclose<cr>")
keymap("n", { silent = true }, "<leader>qw", "<cmd>close<cr>")
keymap("n", { silent = true }, "<leader>qb", "<cmd>bdelete<cr>")
keymap("n", { silent = true }, "<leader>qq", "<cmd>xa<cr>")
keymap("n", { silent = true }, "<leader>q!", "<cmd>qa!<cr>")

-- move cursor
keymap("n", { silent = true }, "gh", "0")
keymap("n", { silent = true }, "gl", "$")
keymap("n", { silent = true }, "gj", "L")
keymap("n", { silent = true }, "gk", "H")
keymap("n", { silent = true }, "gt", "gg")
keymap("n", { silent = true }, "gb", "G")
keymap("n", { silent = true }, "gg", "M")
keymap("n", { silent = true }, "gs", "_")
keymap("n", { silent = true }, "ge", "g_")
keymap("n", { silent = true }, "gm", "gM")
keymap("n", { silent = true }, "gM", "gm")
keymap("n", { remap = true, silent = true }, "gn", "<leader>tn")
keymap("n", { remap = true, silent = true }, "gp", "<leader>tp")
keymap("v", { silent = true }, "gh", "0")
keymap("v", { silent = true }, "gl", "$")
keymap("v", { silent = true }, "gj", "L")
keymap("v", { silent = true }, "gk", "H")
keymap("v", { silent = true }, "gt", "gg")
keymap("v", { silent = true }, "gb", "G")
keymap("v", { silent = true }, "gg", "M")
keymap("v", { silent = true }, "gs", "_")
keymap("v", { silent = true }, "ge", "g_")
keymap("v", { silent = true }, "gm", "gM")
keymap("v", { silent = true }, "gM", "gm")
keymap("v", { remap = true, silent = true }, "gn", "<leader>tn")
keymap("v", { remap = true, silent = true }, "gp", "<leader>tp")

-- move screen
keymap("n", { silent = true }, "<C-h>", (unit * 2) .. "zh")
keymap("n", { silent = true }, "<C-l>", (unit * 2) .. "zl")
keymap("n", { silent = true }, "<C-j>", unit .. "<C-e>")
keymap("n", { silent = true }, "<C-k>", unit .. "<C-y>")
keymap("v", { silent = true }, "<C-h>", (unit * 2) .. "zh")
keymap("v", { silent = true }, "<C-l>", (unit * 2) .. "zl")
keymap("v", { silent = true }, "<C-j>", unit .. "<C-e>")
keymap("v", { silent = true }, "<C-k>", unit .. "<C-y>")

-- move line
keymap("n", { silent = true }, "<A-h>", "<cmd>UsrCmdLineOutdent<cr>")
keymap("n", { silent = true }, "<A-l>", "<cmd>UsrCmdLineIndent<cr>")
keymap("n", { silent = true }, "<A-j>", "<cmd>UsrCmdLineDown<cr>")
keymap("n", { silent = true }, "<A-k>", "<cmd>UsrCmdLineUp<cr>")
keymap("v", { silent = true }, "<A-h>", "<cmd>UsrCmdBlockOutdent<cr>")
keymap("v", { silent = true }, "<A-l>", "<cmd>UsrCmdBlockIndent<cr>")
keymap("v", { silent = true }, "<A-j>", "<cmd>UsrCmdBlockDown<cr>")
keymap("v", { silent = true }, "<A-k>", "<cmd>UsrCmdBlockUp<cr>")

-- abbrevs(paste)
  -- html
keymap("n", { silent = true }, "<leader>phb", "<cmd>AbbrevHtmlBasic<cr>")
  -- dart
keymap("n", { silent = true }, "<leader>pdb", "<cmd>AbbrevDartBasic<cr>")
keymap("n", { silent = true }, "<leader>pdf", "<cmd>AbbrevDartStateful<cr>")
keymap("n", { silent = true }, "<leader>pdl", "<cmd>AbbrevDartStateless<cr>")

-- convenience/inconvenience
keymap("v", { silent = true }, "u", "<esc>u")
keymap("v", { silent = true }, "U", "<esc>u")
keymap("n", { silent = true }, "-", "<C-x>")
keymap("n", { silent = true }, "=", "<C-a>")
keymap("n", { silent = true }, "<C-a>", "<cmd>UsrCmdSelectAll<cr>")
keymap("n", { silent = true }, "<C-s>", "<cmd>wa<cr>")
keymap("n", { silent = true }, "<leader>sr", "<cmd>!./run.sh<cr>")
