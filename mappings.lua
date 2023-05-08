local M = {}

M.disabled = {
    n = {
        ["<A-h>"] = "",
        ["<leader>h"] = "",
    },
}

M.abv = {
    n = {
        ["<leader>h"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "toggle horizontal"
        },
        ["<leader>ft"] = {
            function()
                require("base46").toggle_transparency()
            end
        }
    },
    t = {
        ["<leader>h"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "toggle horizontal"
        },
         ["<Esc>"] = { 
            vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true), "escape terminal mode" 
        },
    }
}

return M
