-- return {
--   {
--     "numToStr/Comment.nvim",
--     config = function()
--       require("Comment").setup({
--         pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
--       })
--     end,
--   },
--
--   {
--     "JoosepAlviste/nvim-ts-context-commentstring",
--     lazy = true, -- Optional, if using a lazy-loading plugin manager
--   },
-- }
return {{
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup({
            pre_hook = function(ctx)
                -- Only calculate commentstring for tsx/react files
                local U = require("Comment.utils")

                local location = nil
                if ctx.ctype == U.ctype.block then
                    location = require("ts_context_commentstring.utils").get_cursor_location()
                elseif ctx.cmotion == U.cmotion.v or ctx.cmotion == U.cmotion.V then
                    location = require("ts_context_commentstring.utils").get_visual_start_location()
                end

                return require("ts_context_commentstring.internal").calculate_commentstring({
                    key = ctx.ctype == U.ctype.line and "__default" or "__multiline",
                    location = location
                })
            end
        })
    end
}, {
    "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = true
}, {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {"vue", "javascript", "typescript", "html", "css"},
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },
        indent = {
            enable = true
        }
    }
}}
