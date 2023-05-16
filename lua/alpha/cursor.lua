require('smoothcursor').setup({
    autostart = true,
    cursor = "",          -- cursor shape (need nerd font)
    texthl = "SmoothCursor", -- highlight group, default is { bg = nil, fg = "#FFD400" }
    linehl = nil,            -- highlight sub-cursor line like 'cursorline', "CursorLine" recommended
    type = "default",        -- define cursor movement calculate function, "default" or "exp" (exponential).
    fancy = {
        enable = false,      -- enable fancy mode
        head = { cursor = "▷", texthl = "SmoothCursor", linehl = nil },
        body = {
            { cursor = "", texthl = "SmoothCursor" },
            { cursor = "", texthl = "SmoothCursor" },
            { cursor = "●", texthl = "SmoothCursor" },
            { cursor = "●", texthl = "SmoothCursor" },
            { cursor = "•", texthl = "SmoothCursor" },
            { cursor = ".",   texthl = "SmoothCursor" },
            { cursor = ".",   texthl = "SmoothCursor" },
        },
        tail = { cursor = nil, texthl = "SmoothCursor" }
    },
    flyin_effect = nil,        -- "bottom" or "top"
    speed = 25,                -- max is 100 to stick to your current position
    intervals = 35,            -- tick interval
    priority = 10,             -- set marker priority
    timeout = 3000,            -- timout for animation
    threshold = 3,             -- animate if threshold lines jump
    disable_float_win = false, -- disable on float window
    enabled_filetypes = nil,   -- example: { "lua", "vim" }
    disabled_filetypes = nil,  -- this option will be skipped if enabled_filetypes is set. example: { "TelescopePrompt", "NvimTree" }
})


local autocmd = vim.api.nvim_create_autocmd

autocmd({ 'ModeChanged' }, {
    callback = function()
        local current_mode = vim.fn.mode()
        if current_mode == 'n' then
            vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#45475A' })
            vim.fn.sign_define('smoothcursor', { text = '' })
        elseif current_mode == 'v' then
            vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#45475A' })
            vim.fn.sign_define('smoothcursor', { text = '' })
        elseif current_mode == 'V' then
            vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#45475A' })
            vim.fn.sign_define('smoothcursor', { text = '' })
        elseif current_mode == 'c' then
            vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#45475A' })
            vim.fn.sign_define('smoothcursor', { text = '󰨊' })
        elseif current_mode == 'i' then
            vim.api.nvim_set_hl(0, 'SmoothCursor', { fg = '#45475A' })
            vim.fn.sign_define('smoothcursor', { text = '' })
        end
    end,
})
