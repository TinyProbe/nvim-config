-- key mapping
function keymap(mode, opt, key, act)
  vim.keymap.set(mode, key, act, opt)
end

-- resize tabsize option group
function resizeTab(tabsize)
  vim.bo.tabstop      = tabsize
  vim.bo.shiftwidth   = tabsize
  vim.bo.softtabstop  = tabsize
end

-- select all
function selectAll()
  local cur_win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_set_cursor(cur_win, { vim.api.nvim_buf_line_count(0), 0 })
  vim.api.nvim_command("normal! V")
  vim.api.nvim_win_set_cursor(cur_win, { 1, 0 })
end

-- move line
  -- line(block) indent/outdent
function lineIndent()
  vim.api.nvim_command("normal! >>")
end

function lineOutdent()
  vim.api.nvim_command("normal! <<")
end

function blockIndent()
  lineIndent()
  vim.api.nvim_command("normal! gv")
end

function blockOutdent()
  lineOutdent()
  vim.api.nvim_command("normal! gv")
end
  -- line(block) up/down
function lineUp()
  if vim.fn.getpos(".")[2] ~= 1 then
    vim.api.nvim_command("execute \":move .-2\"")
  end
end

function lineDown()
  if vim.fn.getpos(".")[2] ~= vim.api.nvim_buf_line_count(0) then
    vim.api.nvim_command("execute \":move .+1\"")
  end
end

function blockUp()
  vim.api.nvim_command("normal! :")
  if vim.fn.getpos("'<")[2] ~= 1 then
    vim.api.nvim_command("execute \":'<,'>move -2\"")
  end
  vim.api.nvim_command("normal! gv")
end

function blockDown()
  vim.api.nvim_command("normal! :")
  if vim.fn.getpos("'>")[2] ~= vim.api.nvim_buf_line_count(0) then
    vim.api.nvim_command("execute \":'<,'>move '>+1\"")
  end
  vim.api.nvim_command("normal! gv")
end
