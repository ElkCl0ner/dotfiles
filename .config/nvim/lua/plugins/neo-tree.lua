return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,

        opts = {
            close_if_last_window = true,
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
                follow_current_file = {
                    enabled = true,
                },
                use_libuv_file_watcher = true,
            },
            window = {
                position = "right",
                width = 30,
                mappings = {
                    ["<space>"] = "none",
                    ["<CR>"] = "open",
                },
            },
        },

        keys = {
            {
                "<leader>e",
                "<cmd>Neotree toggle left filesystem<cr>",
                desc = "Toggle file explorer",
            },
            {
                "<leader>o",
                "<cmd>Neotree focus left filesystem<cr>",
                desc = "Focus file explorer",
            },
        },
    },
}
