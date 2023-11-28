local colors = {
    vertsplit = "#181A1F",
    special_grey = "#3B4048",
    menu_grey = "#3E4452",
    cursor_grey = "#2C323C",
    gutter_fg_grey = "#4B5263",
    blue = "#82b1ff",
    dark_red = "#BE5046",
    white = "#bfc7d5",
    green = "#C3E88D",
    purple = "#c792ea",
    yellow = "#ffcb6b",
    light_red = "#ff869a",
    red = "#ff5370",
    dark_yellow = "#F78C6C",
    cyan = "#89DDFF",
    comment_grey = "#697098",
    black = "#292D3E",
}

local night = {
    normal = {
        a = { fg = colors.purple, bg = nil, gui = "bold" },
        b = { fg = colors.purple, bg = nil }, --colors.menu_grey },
        c = { fg = colors.comment_grey, bg = nil }, --colors.black },
    },
    insert = {
        a = { fg = colors.blue, bg = nil, gui = "bold" },
        b = { fg = colors.blue, bg = nil }, --colors.menu_grey },
    },
    visual = {
        a = { fg = colors.cyan, bg = nil, gui = "bold" },
        b = { fg = colors.cyan, bg = nil }, --colors.menu_grey },
    },
    replace = {
        a = { fg = colors.green, bg = nil, gui = "bold" },
        b = { fg = colors.green, bg = nil }, --colors.menu_grey },
    },
    inactive = {
        a = { fg = colors.menu_grey, bg = nil, gui = "bold" },
        b = { fg = colors.black, bg = nil }, --colors.menu_grey },
        c = { fg = colors.black, bg = nil }, --colors.menu_grey },
    },
}

return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = function(_, opts)
            opts.options = {
                theme = night,
                component_separators = { left = "", right = "" },
                section_separators = { left = "", right = "" },
            }
        end,
    },
}
