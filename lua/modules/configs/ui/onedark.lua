return function()
    local transparent_background = require("core.settings").transparent_background
    local clear = {}

    require("modules.utils").load_plugin("onedark", {
        -- Main options --
        style = 'dark',                                                                      -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
        transparent = false,                                                                 -- Show/hide background
        term_colors = true,                                                                  -- Change terminal color as per the selected theme style
        ending_tildes = false,                                                               -- Show the end-of-buffer tildes. By default they are hidden
        -- toggle theme style ---
        toggle_style_key = '<leader>ts',                                                     -- Default keybinding to toggle
        toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between

        -- Change code style ---
        -- Options are italic, bold, underline, none
        -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
        code_style = {
            comments = 'italic',
            keywords = 'none',
            functions = 'none',
            strings = 'none',
            variables = 'none'
        },

        -- Custom Highlights --
        colors = {},     -- Override default colors
        highlights = {}, -- Override highlight groups

        -- Plugins Config --
        diagnostics = {
            darker = true,     -- darker colors for diagnostic
            undercurl = true,  -- use undercurl instead of underline for diagnostics
            background = true, -- use background color for virtual text
        },
        transparent = {
            lualine = bool,
            background = bool,
            tabline = bool,
            statusline = bool,
        },
    })
end