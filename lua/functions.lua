-- key mapping
function keymap(mode, opt, key, act)
  vim.keymap.set(mode, key, act, opt)
end

-- resize tabgroup
function resizeTab(size)
  vim.bo.tabstop = size
  vim.bo.shiftwidth = size
  vim.bo.softtabstop = size
end

-- select all
function selectAll()
  local cur_win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_set_cursor(cur_win, {
    vim.api.nvim_buf_line_count(0),
    0
  })
  vim.cmd("normal! V")
  vim.api.nvim_win_set_cursor(cur_win, {
    1,
    0
  })
end

-- move line
  -- line(block) indent/outdent
function lineIndent()
  vim.cmd("normal! >>")
end

function lineOutdent()
  vim.cmd("normal! <<")
end

function blockIndent()
  lineIndent()
  vim.cmd("normal! gv")
end

function blockOutdent()
  lineOutdent()
  vim.cmd("normal! gv")
end
  -- line(block) up/down
function lineUp()
  vim.cmd("execute \":move .-2\"")
end

function lineDown()
  vim.cmd("execute \":move .+1\"")
end

-- fix this funcs
-- function blockUp()
--     vim.cmd("execute \":'<,'>m'<-2\"")
--     vim.cmd("normal! gv")
-- end

-- function blockDown()
--     vim.cmd("execute \":'<,'>m'>+1\"")
--     vim.cmd("normal! gv")
-- end
