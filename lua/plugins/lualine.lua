return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-web-devicons').setup({})
    local hide_in_width = function()
      return vim.fn.winwidth(0) > 80
    end
    local mode = {
      'mode',
      fmt = function(str)
        return ' ' .. str:sub(1, 3) -- displays only the first character of the mode
      end,
    }
    local filename = {
      'filename',
      file_status = true,     -- displays file status (readonly status, modified status)
      newfile_status = true,
      path = 0,               -- 0: just filename, 1: relative path, 2: absolute path
      shorting_target = 20,
      symbols = {
        modified = ' ',      -- Text to show when the file is modified
        readonly = ' ',      -- Text to show when the file is non-modifiable or readonly
        unnamed = ' ',       -- Text to show for unnamed buffers
        newfile = ' ',       -- Text to show for newly created file before first write
      }
    }
    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      colored = true,
      update_in_insert = false,
      always_visible = false,
    }
    local diff = {
      'diff',
      colored = false,
      symbols = { added = ' ', modified = ' ', removed = ' ' },
    }
    require('lualine').setup({
      options = {
        theme = 'auto',
        icons_enabled = true,
        --              
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = true,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { 'branch', diff },
        lualine_c = { filename },
        lualine_x = {
          diagnostics,
          { 'encoding', cond = hide_in_width },
          { 'filetype', cond = hide_in_width },
          { 'fileformat', cond = hide_in_width },
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { filename },
        lualine_x = { { 'location', padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
      -- switch to the bufferline instead of this option
      tabline = {
        lualine_a = {
          {
            'tabs',
            path = 0,
            tab_max_length = 16,
            max_length = 100,
            mode = 2,
            use_mode_colors = true,
            show_modified_status = true,  -- Shows a symbol next to the tab name if the file has been modified
            symbols = { modified = ' ●' },
            separator = { right = '' },
          },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
          {
            'datetime',
            style = '%H:%M:%S',
            separator = { left = '' },
          },
        },
      },
      extensions = {},
    })
  end,
}
