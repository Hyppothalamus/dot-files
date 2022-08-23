local ok, nvim_tree = pcall(require, 'nvim-tree')
if not ok then
    print('nvim-tree not found')
    -- not loaded
end

nvim_tree.setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = true,
  ignore_ft_on_setup  = {},
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  respect_buf_cwd     = true,
  create_in_closed_folder = false,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = true,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    mappings = {
      custom_only = false,
      list = {}
    }
  },
  actions = {
      open_file = {
          quit_on_open = false,
          resize_window = false,
      }
    },
    renderer = {
        indent_markers = {
            enable = true,
        },
        icons = {
            padding = ' ',
            symlink_arrow = ' >> ',
            show = {
                git = true,
                folder = true,
                file = true,
                folder_arrow = true,
            },
            glyphs = {
                default = '',
                symlink = '',
                git = {
                    unstaged = "✗",
                    staged = "✓",
                    unmerged = "",
                    renamed = "➜",
                    untracked = "★",
                    deleted = "",
                    ignored = "◌",
                },
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
            },
        },
        highlight_git = true,
        highlight_opened_files = "all",
        root_folder_modifier = ':~',
        add_trailing = true,
        group_empty = true,
        special_files = { "README.md", "Makefile", "MAKEFILE" },
    }
}
