-- define some colors

local bar_fg = "#E1EBF4"
local bg = "#1D2027"
local activeBuffer_fg = "#E5C589"

require "bufferline".setup {
    options = {
        offsets = {{filetype = "NvimTree", text = ""}},
        buffer_close_icon = "",
        modified_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin",
        mappings = "true"
    },

    -- bar colors!!
    highlights = {
        fill = {
            guifg = bar_fg,
            guibg = bg
        },
        background = {
            guifg = bar_fg,
            guibg = "#474a52"
        },

        -- buffer
        buffer_selected = {
            guifg = activeBuffer_fg,
            guibg = "#474a52",
            gui = "bold"
        },
        buffer_visible = {
            guifg = "#9298a0",
            guibg = bg
        },

        -- tabs over right
        tab = {
            guifg = "#9298a0",
            guibg = "#30343c"
        },
         tab_selected = {
            guifg = "#30343c",
            guibg = "#9298a0"
        },
         tab_close = {
            guifg = "#d47d85",
            guibg = bg
        },

        -- buffer separators
        separator = {
            guifg = bg,
            guibg = bg
        },
        separator_selected = {
            guifg = "#474a52",
            guibg = "#474a52"
        },
        separator_visible = {
            guifg = bg,
            guibg = bg
        },

        indicator_selected = {
            guifg = bg,
            guibg = bg
        },

        -- modified files (but not saved)
        modified_selected = {
            guifg = "#A3BE8C",
            guibg = "#474a52"
        },
        modified_visible = {
            guifg = "#BF616A",
            guibg = "#23272f"
        }
    }
}
