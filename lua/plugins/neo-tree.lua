return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        width = 32,
        position = "right",
        mappings = {
          ["<Space>"] = "noop",
          ["t"] = "open_tabnew",
          ["T"] = {
            desc = "open_tabnew_silent",
            function(state)
              -- local node = state.tree:get_node()
              -- vim.print(node.name)
            end,
          },
          ["l"] = "open_tabnew",
          ["L"] = "focus_preview",
          ["C"] = "noop",
          ["h"] = "close_node",
        },
      },
      buffers = {
        follow_current_file = { enabled = true },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = { "node_modules" },
          never_show = {
            -- ".DS_Store",
            -- "thumbs.db",
          },
        },
      },
      source_selector = {
        winbar = true,      -- toggle to show selector on winbar
        statusline = true,  -- toggle to show selector on statusline
        show_scrolled_off_parent_node = true,   -- boolean
        sources = {                             -- table
          {
            source = "filesystem",              -- string
            display_name = " 󰉓 Files "          -- string | nil
          }, {
            source = "buffers",                 -- string
            display_name = " 󰈚 Buffers "        -- string | nil
          }, {
            source = "git_status",              -- string
            display_name = " 󰊢 Git "            -- string | nil
          }, {
            source = "document_symbols",        -- string
            display_name = " 󰅩 Symbols "        -- string | nil
          },
        },
        content_layout = "start",       -- string
        tabs_layout = "equal",          -- string
        truncation_character = "…",     -- string
        tabs_min_width = nil,           -- int | nil
        tabs_max_width = nil,           -- int | nil
        padding = 0,                    -- int | { left: int, right: int }
        separator_active = nil,         -- string | { left: string, right: string, override: string | nil } | nil
        separator = {                   -- string | { left: string, right: string, override: string | nil }
          left = "▏",
          right= "▕",
        },
        show_separator_on_edge = false,     -- boolean
        highlight_tab = "NeoTreeTabInactive",                     -- string
        highlight_tab_active = "NeoTreeTabActive",                -- string
        highlight_background = "NeoTreeTabInactive",              -- string
        highlight_separator = "NeoTreeTabSeparatorInactive",      -- string
        highlight_separator_active = "NeoTreeTabSeparatorActive", -- string
      },
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added     = "",
            deleted   = "",
            modified  = "",
            renamed   = "",
            -- Status type
            untracked = "",
            ignored   = "",
            unstaged  = "",
            staged    = "",
            conflict  = "",
          }
        },
        diagnostics = {
          symbols = {
            hint = "",
            info = "",
            warn = "",
            error = "",
          },
          highlights = {
            hint = "DiagnosticSignHint",
            info = "DiagnosticSignInfo",
            warn = "DiagnosticSignWarn",
            error = "DiagnosticSignError",
          },
        },
      },
      -- syncronize NeotreeState
      event_handlers = {
        {
          event = "neo_tree_window_before_open",
          handler = function()
            NeotreeState = true
          end,
        }, {
          event = "neo_tree_window_before_close",
          handler = function()
            NeotreeState = false
          end,
        },
      },
    })

    keymap("n", { silent = true, desc = "Neotree Toggle" },
        "<leader>fe", "<cmd>Neotree toggle<cr>")
  end,
}
